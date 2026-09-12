#include "Socket.h"
#include "osc/OscReceivedElements.h"
#include "loopycam.h"

#include <algorithm>
#include <cctype>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>

TCP::cSocket* http_Socket = 0;
void NS_debug(char *fmt, ...);

namespace {

const DWORD MAX_HTTP_REQUEST = 64 * 1024;

std::string executable_directory()
{
    char path[MAX_PATH];
    DWORD length = GetModuleFileNameA(NULL, path, MAX_PATH);
    if (length == 0 || length == MAX_PATH)
        return ".";

    std::string result(path, length);
    std::string::size_type slash = result.find_last_of("\\/");
    return slash == std::string::npos ? "." : result.substr(0, slash);
}

bool read_file(const std::string& relative_path, std::string* contents)
{
    const std::string exe_dir = executable_directory();
    std::vector<std::string> candidates;
    candidates.push_back(exe_dir + "\\web\\" + relative_path);
    candidates.push_back(exe_dir + "\\..\\web\\" + relative_path);

    for (std::vector<std::string>::const_iterator it = candidates.begin(); it != candidates.end(); ++it) {
        std::ifstream input(it->c_str(), std::ios::in | std::ios::binary);
        if (!input)
            continue;
        std::ostringstream buffer;
        buffer << input.rdbuf();
        *contents = buffer.str();
        return true;
    }
    return false;
}

std::string lower_copy(const std::string& value)
{
    std::string result(value);
    std::transform(result.begin(), result.end(), result.begin(),
        static_cast<int (*)(int)>(std::tolower));
    return result;
}

bool json_value_start(const std::string& body, const char* key, std::string::size_type* start)
{
    const std::string quoted_key = std::string("\"") + key + "\"";
    std::string::size_type pos = body.find(quoted_key);
    if (pos == std::string::npos)
        return false;
    pos = body.find(':', pos + quoted_key.length());
    if (pos == std::string::npos)
        return false;
    pos++;
    while (pos < body.length() && std::isspace(static_cast<unsigned char>(body[pos])))
        pos++;
    *start = pos;
    return true;
}

bool json_string(const std::string& body, const char* key, std::string* value)
{
    std::string::size_type pos;
    if (!json_value_start(body, key, &pos) || pos >= body.length() || body[pos] != '"')
        return false;
    const std::string::size_type end = body.find('"', pos + 1);
    if (end == std::string::npos)
        return false;
    *value = body.substr(pos + 1, end - pos - 1);
    return true;
}

bool json_number(const std::string& body, const char* key, double* value)
{
    std::string::size_type pos;
    if (!json_value_start(body, key, &pos) || pos >= body.length())
        return false;
    char* end = NULL;
    *value = strtod(body.c_str() + pos, &end);
    return end != body.c_str() + pos;
}

bool json_boolean(const std::string& body, const char* key, bool* value)
{
    std::string::size_type pos;
    if (!json_value_start(body, key, &pos))
        return false;
    if (body.compare(pos, 4, "true") == 0) {
        *value = true;
        return true;
    }
    if (body.compare(pos, 5, "false") == 0) {
        *value = false;
        return true;
    }
    double number;
    if (json_number(body, key, &number)) {
        *value = number != 0.0;
        return true;
    }
    return false;
}

std::string state_json()
{
    if (looper == NULL)
        return "{\"ready\":false}";

    std::ostringstream json;
    json << "{\"ready\":true"
         << ",\"currentLoop\":" << looper->_currentLoop
         << ",\"windows\":" << looper->num_showing()
         << ",\"blackout\":" << (looper->_blackout ? "true" : "false")
         << ",\"autoNext\":" << (looper->_autoNext ? "true" : "false")
         << ",\"trail\":" << (looper->_trail ? "true" : "false")
         << ",\"trailAmount\":" << looper->_trailamount
         << ",\"xor\":" << (looper->_enableXOR ? "true" : "false")
         << ",\"border\":" << (looper->_border ? "true" : "false")
         << ",\"recordBorder\":" << (looper->_recborder ? "true" : "false")
         << ",\"smooth\":" << (looper->_smooth ? "true" : "false")
         << ",\"interpolate\":" << (CV_interp == CV_INTER_LINEAR ? "true" : "false")
         << ",\"loops\":[";

    for (int n = 0; n < MAX_LOOPS; n++) {
        if (n != 0)
            json << ',';
        json << "{\"playing\":" << looper->_playing[n]
             << ",\"recording\":" << looper->_recording[n]
             << ",\"frames\":" << looper->_loop[n].nframes << '}';
    }
    json << "]}";
    return json.str();
}

bool apply_action(const std::string& body, std::string* error)
{
    if (looper == NULL) {
        *error = "Looper is not ready";
        return false;
    }

    std::string action;
    if (!json_string(body, "action", &action)) {
        *error = "Missing action";
        return false;
    }

    bool enabled = false;
    double value = 0.0;

    if (action == "record" && json_boolean(body, "value", &enabled)) {
        looper->_setRecord(enabled ? 1 : 0);
    } else if (action == "overlay" && json_boolean(body, "value", &enabled)) {
        looper->_setRecordOverlay(enabled ? 1 : 0);
    } else if (action == "blackout" && json_boolean(body, "value", &enabled)) {
        looper->_setBlackout(enabled ? 1 : 0);
    } else if (action == "allLive") {
        looper->_allLive(1);
    } else if (action == "fullDisplay") {
        looper->_fullDisplay();
    } else if (action == "quadrantDisplay") {
        looper->_quadrantDisplay();
    } else if (action == "moreWindows") {
        looper->morewindows();
    } else if (action == "lessWindows") {
        looper->lesswindows();
    } else if (action == "windows" && json_number(body, "value", &value)) {
        const int count = std::max(1, std::min(MAX_LOOPS, static_cast<int>(value)));
        looper->setwindows(count);
    } else if (action == "currentLoop" && json_number(body, "value", &value)) {
        const int loop = static_cast<int>(value);
        if (loop < 0 || loop >= MAX_LOOPS) {
            *error = "Loop must be between 0 and 7";
            return false;
        }
        looper->_currentLoop = loop;
    } else if (action == "autoNext" && json_boolean(body, "value", &enabled)) {
        looper->_setautoNext(enabled ? 1 : 0);
    } else if (action == "trail" && json_boolean(body, "value", &enabled)) {
        looper->_trail = enabled ? 1 : 0;
        looper->_set_trail();
    } else if (action == "trailAmount" && json_number(body, "value", &value)) {
        looper->_trailamount = static_cast<float>(std::max(0.0, std::min(1.0, value)));
        looper->_set_trail();
    } else if (action == "xor" && json_boolean(body, "value", &enabled)) {
        looper->_enableXOR = enabled ? 1 : 0;
    } else if (action == "border" && json_boolean(body, "value", &enabled)) {
        looper->_border = enabled ? 1 : 0;
    } else if (action == "recordBorder" && json_boolean(body, "value", &enabled)) {
        looper->_recborder = enabled ? 1 : 0;
    } else if (action == "smooth" && json_boolean(body, "value", &enabled)) {
        looper->setsmooth(enabled ? 1 : 0);
    } else if (action == "interpolate" && json_boolean(body, "value", &enabled)) {
        looper->setinterp(enabled ? 1 : 0);
    } else {
        *error = "Unknown action or invalid value";
        return false;
    }
    return true;
}

void send_response(SOCKET socket, int status, const char* status_text,
                   const char* content_type, const std::string& body)
{
    std::ostringstream response;
    response << "HTTP/1.1 " << status << ' ' << status_text << "\r\n"
             << "Content-Type: " << content_type << "\r\n"
             << "Content-Length: " << body.length() << "\r\n"
             << "Cache-Control: no-store\r\n"
             << "Connection: close\r\n\r\n"
             << body;
    const std::string data = response.str();
    const DWORD result = http_Socket->SendTo(socket, const_cast<char*>(data.data()),
                                              static_cast<DWORD>(data.length()));
    if (result != 0 && result != WSAEWOULDBLOCK)
        NS_debug("HTTP send failed: %lu\n", result);
    http_Socket->DisconnectClient(socket);
}

void send_json(SOCKET socket, int status, const char* status_text, const std::string& body)
{
    send_response(socket, status, status_text, "application/json; charset=utf-8", body);
}

bool complete_request(const std::string& request, std::string::size_type* header_end,
                      size_t* content_length)
{
    std::string::size_type delimiter_length = 4;
    *header_end = request.find("\r\n\r\n");
    if (*header_end == std::string::npos) {
        delimiter_length = 2;
        *header_end = request.find("\n\n");
    }
    if (*header_end == std::string::npos)
        return false;

    *header_end += delimiter_length;
    *content_length = 0;
    const std::string headers_lower = lower_copy(request.substr(0, *header_end));
    const std::string marker = "content-length:";
    const std::string::size_type length_pos = headers_lower.find(marker);
    if (length_pos != std::string::npos) {
        std::istringstream length_stream(headers_lower.substr(length_pos + marker.length()));
        length_stream >> *content_length;
    }
    return request.length() >= *header_end + *content_length;
}

void handle_request(SOCKET socket, const std::string& request,
                    std::string::size_type header_end, size_t content_length)
{
    const std::string::size_type line_end = request.find_first_of("\r\n");
    const std::string request_line = request.substr(0, line_end);
    const std::string::size_type first_space = request_line.find(' ');
    const std::string::size_type second_space = request_line.find(' ', first_space + 1);
    if (first_space == std::string::npos || second_space == std::string::npos) {
        send_json(socket, 400, "Bad Request", "{\"error\":\"Malformed request\"}");
        return;
    }

    const std::string method = request_line.substr(0, first_space);
    std::string path = request_line.substr(first_space + 1, second_space - first_space - 1);
    const std::string::size_type query = path.find('?');
    if (query != std::string::npos)
        path.erase(query);

    if (method == "GET" && path == "/api/state") {
        send_json(socket, 200, "OK", state_json());
        return;
    }

    if (method == "POST" && path == "/api/action") {
        const std::string body = request.substr(header_end, content_length);
        std::string error;
        if (!apply_action(body, &error)) {
            send_json(socket, 400, "Bad Request", std::string("{\"error\":\"") + error + "\"}");
            return;
        }
        send_json(socket, 200, "OK", state_json());
        return;
    }

    if (method != "GET") {
        send_json(socket, 405, "Method Not Allowed", "{\"error\":\"Method not allowed\"}");
        return;
    }

    std::string asset;
    const char* content_type = "text/plain; charset=utf-8";
    if (path == "/" || path == "/index.html") {
        path = "/index.html";
        content_type = "text/html; charset=utf-8";
    } else if (path == "/app.css") {
        content_type = "text/css; charset=utf-8";
    } else if (path == "/app.js") {
        content_type = "text/javascript; charset=utf-8";
    } else {
        send_json(socket, 404, "Not Found", "{\"error\":\"Not found\"}");
        return;
    }

    if (!read_file(path.substr(1), &asset)) {
        send_json(socket, 500, "Internal Server Error", "{\"error\":\"Web UI assets were not found\"}");
        return;
    }
    send_response(socket, 200, "OK", content_type, asset);
}

} // namespace

void http_init(int port, int timeout)
{
    http_Socket = new TCP::cSocket();
    const DWORD result = http_Socket->Listen(inet_addr("127.0.0.1"), port, 0, timeout);
    if (result != 0)
        NS_debug("Unable to start browser UI on http://127.0.0.1:%d (error %lu)\n", port, result);
    else
        NS_debug("Browser UI listening at http://127.0.0.1:%d\n", port);
}

void http_check()
{
    if (http_Socket == NULL)
        return;

    // A browser request normally produces separate accept, read, write, and close
    // events. Drain a bounded batch so those events do not each wait for another
    // video frame. The socket is configured for non-blocking event checks.
    for (int handled = 0; handled < 32; handled++) {
        TCP::cSocket::cMemory* receive_memory;
        SOCKET socket;
        DWORD event, ip, bytes_read, bytes_sent;
        const DWORD error = http_Socket->ProcessEvents(&event, &ip, &socket, &receive_memory,
                                                       &bytes_read, &bytes_sent);
        if (error == ERROR_TIMEOUT)
            return;

        if ((event & FD_READ) && receive_memory != NULL) {
            const DWORD length = receive_memory->GetLength();
            if (length > MAX_HTTP_REQUEST) {
                send_json(socket, 413, "Payload Too Large", "{\"error\":\"Request too large\"}");
                continue;
            }

            const std::string request(receive_memory->GetBuffer(), length);
            std::string::size_type header_end;
            size_t content_length;
            if (complete_request(request, &header_end, &content_length)) {
                receive_memory->DeleteLeft(static_cast<DWORD>(header_end + content_length));
                handle_request(socket, request, header_end, content_length);
            }
        }

        if (error != 0 && error != WSAENOTCONN && error != WSAECONNABORTED &&
            error != WSAECONNRESET && error != WSAECONNREFUSED && error != WSAESHUTDOWN) {
            NS_debug("HTTP socket error: %lu\n", error);
        }
    }
}

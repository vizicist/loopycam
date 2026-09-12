#define NOMINMAX

#include "streamdeck.h"
#include "osc/OscReceivedElements.h"
#include "loopycam.h"

#include <windows.h>
#include <setupapi.h>
#include <hidsdi.h>
#include <hidpi.h>
#include <gdiplus.h>
#include <objidl.h>

#include <algorithm>
#include <cstdlib>
#include <cstring>
#include <fstream>
#include <iomanip>
#include <sstream>
#include <string>
#include <vector>

#pragma comment(lib, "hid.lib")
#pragma comment(lib, "gdiplus.lib")

void NS_debug(char *fmt, ...);

namespace {

const USHORT STREAMDECK_VENDOR_ID = 0x0FD9;
const USHORT STREAMDECK_PLUS_PRODUCT_ID = 0x0084;
const int KEY_COUNT = 8;
const int DIAL_COUNT = 4;
const int IMAGE_PACKET_LENGTH = 1024;
const int KEY_PACKET_HEADER = 8;
const int LCD_PACKET_HEADER = 16;

const char* MODE_KEYS[] = {
    "7", "4", "1", "0", "9", "6", "8", "5", "000", "3", "."
};

const char* MODE_LABELS[] = {
    "Plugins", "Trail", "Layout", "Random", "Reset", "Speed",
    "Option", "Movement", "Common", "Preset", "Restart"
};
const int MODE_COUNT = sizeof(MODE_KEYS) / sizeof(MODE_KEYS[0]);

const char* ACTION_KEYS[4] = { "/", "*", "-", "+" };
const char* PRESET_SETS[] = {
    "synthplex", "techmild", "techmedium", "techwild", "converge", "orange",
    "tedx", "new", "good", "abstract", "basic", "subtle"
};
const int PRESET_SET_COUNT = sizeof(PRESET_SETS) / sizeof(PRESET_SETS[0]);

HANDLE read_handle = INVALID_HANDLE_VALUE;
HANDLE write_handle = INVALID_HANDLE_VALUE;
OVERLAPPED read_overlapped;
std::vector<unsigned char> read_buffer;
bool read_pending = false;
DWORD completed_read_bytes = 0;
bool enabled = true;
DWORD last_connect_attempt = 0;
DWORD last_status_render = 0;
ULONG_PTR gdiplus_token = 0;
std::string mode = "2";
int page = 6;
bool key_states[KEY_COUNT] = { false };
bool dial_states[DIAL_COUNT] = { false };
int option_index = 0;
int preset_set_index = 0;
int preset_index = 0;
std::vector<std::string> preset_names;
std::string last_status_signature;

int visible_mode_index(int column)
{
    return (page + column) % MODE_COUNT;
}

void close_device();
void render_keys();
void render_touchscreen(bool force = false);
void handle_control(const std::string& key, bool pressed);

std::string data_directory()
{
    char value[MAX_PATH * 4];
    const DWORD length = GetEnvironmentVariableA("LOOPYCAM_DATADIR", value, sizeof(value));
    if (length > 0 && length < sizeof(value))
        return value;

    const DWORD cwd_length = GetCurrentDirectoryA(sizeof(value), value);
    if (cwd_length > 0 && cwd_length < sizeof(value))
        return value;
    return ".";
}

std::string preset_directory(const std::string& set_name)
{
    std::string directory = data_directory();
    if (!directory.empty() && directory[directory.size() - 1] != '\\' && directory[directory.size() - 1] != '/')
        directory += "\\";
    return directory + "presets_" + set_name;
}

std::string preset_path(const std::string& set_name, const std::string& preset_name)
{
    return preset_directory(set_name) + "\\" + preset_name + ".lpy";
}

std::string current_preset_set()
{
    return PRESET_SETS[preset_set_index];
}

std::string current_preset_name()
{
    if (preset_names.empty() || preset_index < 0 || preset_index >= static_cast<int>(preset_names.size()))
        return "(none)";
    return preset_names[preset_index];
}

void reload_presets(const std::string& select_name = std::string())
{
    preset_names.clear();
    const std::string pattern = preset_directory(current_preset_set()) + "\\*.lpy";
    WIN32_FIND_DATAA found;
    HANDLE search = FindFirstFileA(pattern.c_str(), &found);
    if (search != INVALID_HANDLE_VALUE) {
        do {
            if ((found.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) == 0) {
                std::string name = found.cFileName;
                if (name.size() > 4 && _stricmp(name.substr(name.size() - 4).c_str(), ".lpy") == 0)
                    preset_names.push_back(name.substr(0, name.size() - 4));
            }
        } while (FindNextFileA(search, &found));
        FindClose(search);
    }

    std::sort(preset_names.begin(), preset_names.end(), [](const std::string& left, const std::string& right) {
        return _stricmp(left.c_str(), right.c_str()) < 0;
    });
    preset_index = 0;
    if (!select_name.empty()) {
        for (int n = 0; n < static_cast<int>(preset_names.size()); ++n) {
            if (_stricmp(preset_names[n].c_str(), select_name.c_str()) == 0) {
                preset_index = n;
                break;
            }
        }
    }
}

int encoder_clsid(const WCHAR* mime_type, CLSID* clsid)
{
    UINT count = 0;
    UINT bytes = 0;
    Gdiplus::GetImageEncodersSize(&count, &bytes);
    if (bytes == 0)
        return -1;
    std::vector<unsigned char> storage(bytes);
    Gdiplus::ImageCodecInfo* encoders = reinterpret_cast<Gdiplus::ImageCodecInfo*>(&storage[0]);
    if (Gdiplus::GetImageEncoders(count, bytes, encoders) != Gdiplus::Ok)
        return -1;
    for (UINT n = 0; n < count; ++n) {
        if (wcscmp(encoders[n].MimeType, mime_type) == 0) {
            *clsid = encoders[n].Clsid;
            return static_cast<int>(n);
        }
    }
    return -1;
}

std::vector<unsigned char> jpeg_from_bitmap(Gdiplus::Bitmap& bitmap, ULONG quality = 88)
{
    std::vector<unsigned char> result;
    CLSID encoder;
    if (encoder_clsid(L"image/jpeg", &encoder) < 0)
        return result;

    IStream* stream = NULL;
    if (CreateStreamOnHGlobal(NULL, TRUE, &stream) != S_OK)
        return result;

    Gdiplus::EncoderParameters params;
    params.Count = 1;
    params.Parameter[0].Guid = Gdiplus::EncoderQuality;
    params.Parameter[0].Type = Gdiplus::EncoderParameterValueTypeLong;
    params.Parameter[0].NumberOfValues = 1;
    params.Parameter[0].Value = &quality;
    if (bitmap.Save(stream, &encoder, &params) == Gdiplus::Ok) {
        HGLOBAL memory = NULL;
        if (GetHGlobalFromStream(stream, &memory) == S_OK) {
            STATSTG stats;
            ZeroMemory(&stats, sizeof(stats));
            const SIZE_T size = stream->Stat(&stats, STATFLAG_NONAME) == S_OK
                ? static_cast<SIZE_T>(stats.cbSize.QuadPart) : GlobalSize(memory);
            const unsigned char* bytes = static_cast<const unsigned char*>(GlobalLock(memory));
            if (bytes != NULL) {
                result.assign(bytes, bytes + size);
                GlobalUnlock(memory);
            }
        }
    }
    stream->Release();
    return result;
}

void draw_centered(Gdiplus::Graphics& graphics, const std::wstring& text,
                   float y, float height, float font_size, const Gdiplus::Color& color)
{
    Gdiplus::FontFamily family(L"Consolas");
    Gdiplus::Font font(&family, font_size, Gdiplus::FontStyleBold, Gdiplus::UnitPixel);
    Gdiplus::SolidBrush brush(color);
    Gdiplus::StringFormat format;
    format.SetAlignment(Gdiplus::StringAlignmentCenter);
    format.SetLineAlignment(Gdiplus::StringAlignmentCenter);
    Gdiplus::RectF bounds(0.0f, y, 120.0f, height);
    graphics.DrawString(text.c_str(), static_cast<INT>(text.size()), &font, bounds, &format, &brush);
}

std::wstring widen(const std::string& text)
{
    if (text.empty())
        return std::wstring();
    const int length = MultiByteToWideChar(CP_UTF8, 0, text.c_str(), -1, NULL, 0);
    if (length <= 1)
        return std::wstring(text.begin(), text.end());
    std::vector<wchar_t> value(length);
    MultiByteToWideChar(CP_UTF8, 0, text.c_str(), -1, &value[0], length);
    return std::wstring(&value[0]);
}

bool write_report(const unsigned char* data, DWORD length)
{
    if (write_handle == INVALID_HANDLE_VALUE)
        return false;
    DWORD written = 0;
    if (!WriteFile(write_handle, data, length, &written, NULL) || written != length) {
        NS_debug("Stream Deck output failed, error=%lu\n", GetLastError());
        close_device();
        return false;
    }
    return true;
}

bool write_feature(const unsigned char* data, DWORD length)
{
    if (write_handle == INVALID_HANDLE_VALUE)
        return false;
    if (!HidD_SetFeature(write_handle, const_cast<unsigned char*>(data), length)) {
        NS_debug("Stream Deck feature report failed, error=%lu\n", GetLastError());
        close_device();
        return false;
    }
    return true;
}

void write_key_image(int key, const std::vector<unsigned char>& image)
{
    if (image.empty())
        return;
    const size_t payload_length = IMAGE_PACKET_LENGTH - KEY_PACKET_HEADER;
    size_t sent = 0;
    unsigned int packet_number = 0;
    while (sent < image.size() && write_handle != INVALID_HANDLE_VALUE) {
        const size_t amount = std::min(payload_length, image.size() - sent);
        unsigned char packet[IMAGE_PACKET_LENGTH] = { 0 };
        packet[0] = 0x02;
        packet[1] = 0x07;
        packet[2] = static_cast<unsigned char>(key);
        packet[3] = (sent + amount == image.size()) ? 1 : 0;
        packet[4] = static_cast<unsigned char>(amount & 0xff);
        packet[5] = static_cast<unsigned char>((amount >> 8) & 0xff);
        packet[6] = static_cast<unsigned char>(packet_number & 0xff);
        packet[7] = static_cast<unsigned char>((packet_number >> 8) & 0xff);
        memcpy(packet + KEY_PACKET_HEADER, &image[sent], amount);
        if (!write_report(packet, IMAGE_PACKET_LENGTH))
            return;
        sent += amount;
        ++packet_number;
    }
}

void write_touchscreen_image(const std::vector<unsigned char>& image)
{
    if (image.empty())
        return;
    const size_t payload_length = IMAGE_PACKET_LENGTH - LCD_PACKET_HEADER;
    size_t sent = 0;
    unsigned int packet_number = 0;
    while (sent < image.size() && write_handle != INVALID_HANDLE_VALUE) {
        const size_t amount = std::min(payload_length, image.size() - sent);
        unsigned char packet[IMAGE_PACKET_LENGTH] = { 0 };
        packet[0] = 0x02;
        packet[1] = 0x0c;
        packet[2] = 0;
        packet[3] = 0;
        packet[4] = 0;
        packet[5] = 0;
        packet[6] = 0x20;
        packet[7] = 0x03;
        packet[8] = 100;
        packet[9] = 0;
        packet[10] = (sent + amount == image.size()) ? 1 : 0;
        packet[11] = static_cast<unsigned char>(packet_number & 0xff);
        packet[12] = static_cast<unsigned char>((packet_number >> 8) & 0xff);
        packet[13] = static_cast<unsigned char>(amount & 0xff);
        packet[14] = static_cast<unsigned char>((amount >> 8) & 0xff);
        packet[15] = 0;
        memcpy(packet + LCD_PACKET_HEADER, &image[sent], amount);
        if (!write_report(packet, IMAGE_PACKET_LENGTH))
            return;
        sent += amount;
        ++packet_number;
    }
}

std::string mode_name(const std::string& key)
{
    if (key == "2")
        return "Recording";
    for (int n = 0; n < MODE_COUNT; ++n)
        if (key == MODE_KEYS[n])
            return MODE_LABELS[n];
    return "Common";
}

int active_plugins(CFFPlugin** plugins, int count)
{
    int active = 0;
    for (int n = 0; n < count; ++n)
        if (plugins[n] != NULL)
            ++active;
    return active;
}

int active_ffgl_plugins()
{
    int active = 0;
    for (int n = 0; n < NPOST2VISIBLEPLUGINS; ++n)
        if (post2plugins[n] != NULL)
            ++active;
    return active;
}

bool all_live()
{
    if (looper == NULL)
        return false;
    for (int n = 0; n < MAX_LOOPS; ++n)
        if (looper->_playing[n] != 2)
            return false;
    return true;
}

std::string option_value()
{
    if (looper == NULL)
        return "Waiting";
    std::ostringstream value;
    switch (option_index) {
    case 0: value << "Auto Next=" << (looper->_autoNext ? "On" : "Off"); break;
    case 1: value << "Trail=" << (looper->_trail ? "On" : "Off"); break;
    case 2: value << "XOR=" << (looper->_enableXOR ? "On" : "Off"); break;
    case 3: value << "Border=" << (looper->_border ? "On" : "Off"); break;
    case 4: value << "Rec Border=" << (looper->_recborder ? "On" : "Off"); break;
    case 5: value << "Smooth=" << (looper->_smooth ? "On" : "Off"); break;
    case 6: value << "Interp=" << (CV_interp == CV_INTER_LINEAR ? "On" : "Off"); break;
    case 7: value << "Trail=" << looper->_trailamount; break;
    case 8: value << "Windows=" << looper->num_showing(); break;
    default: value << "Move=" << looper->_moveamount; break;
    }
    return value.str();
}

void status_lines(std::string lines[4])
{
    if (looper == NULL) {
        lines[0] = "LoopyCam";
        lines[1] = "Starting";
        lines[2] = "";
        lines[3] = "";
        return;
    }
    const std::string name = mode_name(mode);
    lines[0] = "LoopyCam! " + name;
    std::ostringstream status;
    if (mode == "2") {
        status << "Live=" << (all_live() ? "On" : "Off") << " Trail=" << (looper->_trail ? "On" : "Off");
        lines[2] = "/,* = Live,Trail";
        lines[3] = "-,+ = Rec,Overlay";
    } else if (mode == "1") {
        status << "#Windows=" << looper->num_showing();
        lines[2] = "/,* = Quad,Full";
        lines[3] = "-,+ = Windows--,++";
    } else if (mode == "4") {
        status << "Trail=" << (looper->_trail ? looper->_trailamount : 0.0f) << " XOR=" << (looper->_enableXOR ? "On" : "Off");
        lines[2] = "/,* = Trail,XOR";
        lines[3] = "-,+ = Less,More";
    } else if (mode == "7") {
        status << "Pre=" << active_plugins(preplugins, NPREPLUGINS)
               << " Post=" << active_plugins(postplugins, NPOSTPLUGINS)
               << " Ffgl=" << active_ffgl_plugins();
        lines[2] = "/,* = OnePre,Post";
        lines[3] = "-,+ = OneFF,All";
    } else if (mode == "8") {
        status << option_value();
        lines[2] = "/,* = Prev,Next";
        lines[3] = "-,+ = Less,More";
    } else if (mode == "5") {
        status << "Smooth=" << (looper->_smooth ? "On" : "Off");
        lines[2] = "/,* = Smooth,Freeze";
        lines[3] = "-,+ = Reset,Reverse";
    } else if (mode == "6") {
        status << "Move=" << looper->_moveamount;
        lines[2] = "/,* = Move Slow/Fast";
        lines[3] = "-,+ = Play Slow/Fast";
    } else if (mode == "0") {
        status << current_preset_set() << "/" << current_preset_name();
        lines[2] = "/,* = Params,Plugins";
        lines[3] = "-,+ = Pos1,PosAll";
    } else if (mode == "9") {
        status << "Blackout=" << (looper->_blackout ? "On" : "Off")
               << " Presets=" << current_preset_set();
        lines[2] = "/,* = Black,PresetSet";
        lines[3] = "-,+ = Plugins,All";
    } else if (mode == ".") {
        status << "Loop positions";
        lines[2] = "/,* = Save,Restore";
        lines[3] = "-,+ = Rand,Start";
    } else if (mode == "3") {
        status << current_preset_set() << "/" << current_preset_name();
        lines[2] = "/,* = Prev,Next";
        lines[3] = "-,+ = Save,Load";
    } else {
        status << "Live=" << (all_live() ? "On" : "Off") << " XOR=" << (looper->_enableXOR ? "On" : "Off");
        lines[2] = "/,* = Live,XOR";
        lines[3] = "";
    }
    lines[1] = status.str();
}

std::string action_label(int index)
{
    const char* labels[4] = { "", "", "", "" };
    if (mode == "2") {
        labels[0] = "Live"; labels[1] = "Trail"; labels[2] = "Rec"; labels[3] = "Overlay";
    } else if (mode == "1") {
        labels[0] = "Quad"; labels[1] = "Full"; labels[2] = "Windows--"; labels[3] = "Windows++";
    } else if (mode == "4") {
        labels[0] = "Trail"; labels[1] = "XOR"; labels[2] = "Less"; labels[3] = "More";
    } else if (mode == "7") {
        labels[0] = "OnePre"; labels[1] = "Post"; labels[2] = "OneFF"; labels[3] = "All";
    } else if (mode == "8") {
        labels[0] = "Prev"; labels[1] = "Next"; labels[2] = "Less"; labels[3] = "More";
    } else if (mode == "5") {
        labels[0] = "Smooth"; labels[1] = "Freeze"; labels[2] = "Reset"; labels[3] = "Reverse";
    } else if (mode == "6") {
        labels[0] = "Move Slow"; labels[1] = "Move Fast"; labels[2] = "Play Slow"; labels[3] = "Play Fast";
    } else if (mode == "0") {
        labels[0] = "Params"; labels[1] = "Plugins"; labels[2] = "Pos1"; labels[3] = "PosAll";
    } else if (mode == "9") {
        labels[0] = "Black"; labels[1] = "PresetSet"; labels[2] = "Plugins"; labels[3] = "All";
    } else if (mode == ".") {
        labels[0] = "Save"; labels[1] = "Restore"; labels[2] = "Rand"; labels[3] = "Start";
    } else if (mode == "3") {
        labels[0] = "Prev"; labels[1] = "Next"; labels[2] = "Save"; labels[3] = "Load";
    } else {
        labels[0] = "Live"; labels[1] = "XOR";
    }
    return labels[index];
}

std::vector<unsigned char> make_key_image(int index)
{
    const bool record_key = index == 7;
    const int mode_index = index >= 4 && index < 7 ? visible_mode_index(index - 4) : 0;
    const std::string logical_key = index < 4 ? ACTION_KEYS[index] : index < 7 ? MODE_KEYS[mode_index] : "Record";
    std::string label = record_key ? "Record" : index < 4 ? action_label(index) : MODE_LABELS[mode_index];
    Gdiplus::Color background;
    if (record_key)
        background = key_states[index] ? Gdiplus::Color(255, 190, 35, 52) : Gdiplus::Color(255, 35, 132, 76);
    else if (key_states[index])
        background = Gdiplus::Color(255, 157, 37, 54);
    else if (!record_key && logical_key == mode)
        background = Gdiplus::Color(255, 181, 104, 24);
    else if (index < 4)
        background = Gdiplus::Color(255, 81, 48, 96);
    else
        background = Gdiplus::Color(255, 36, 63, 105);

    Gdiplus::Bitmap bitmap(120, 120, PixelFormat24bppRGB);
    Gdiplus::Graphics graphics(&bitmap);
    graphics.SetTextRenderingHint(Gdiplus::TextRenderingHintAntiAliasGridFit);
    graphics.Clear(background);
    draw_centered(graphics, widen(label), 12.0f, 96.0f, label.size() > 8 ? 19.0f : 24.0f, Gdiplus::Color(255, 255, 255, 255));
    return jpeg_from_bitmap(bitmap);
}

std::vector<unsigned char> make_touchscreen_image()
{
    std::string lines[4];
    status_lines(lines);
    Gdiplus::Bitmap bitmap(800, 100, PixelFormat24bppRGB);
    Gdiplus::Graphics graphics(&bitmap);
    graphics.SetTextRenderingHint(Gdiplus::TextRenderingHintAntiAliasGridFit);
    graphics.Clear(Gdiplus::Color(255, 17, 21, 28));
    Gdiplus::FontFamily family(L"Consolas");
    Gdiplus::Font font(&family, 17.0f, Gdiplus::FontStyleRegular, Gdiplus::UnitPixel);
    Gdiplus::Font side_font(&family, 13.0f, Gdiplus::FontStyleRegular, Gdiplus::UnitPixel);
    Gdiplus::SolidBrush main_brush(Gdiplus::Color(255, 244, 213, 141));
    Gdiplus::SolidBrush side_brush(Gdiplus::Color(255, 141, 169, 196));
    for (int row = 0; row < 4; ++row)
        graphics.DrawString(widen(lines[row]).c_str(), -1, &font, Gdiplus::PointF(12.0f, static_cast<float>(row * 23)), &main_brush);
    std::wostringstream page_text;
    page_text << L"SHIFT " << (page + 1) << L"/" << MODE_COUNT;
    graphics.DrawString(page_text.str().c_str(), -1, &side_font, Gdiplus::PointF(682.0f, 4.0f), &side_brush);
    graphics.DrawString(L"D1/D4: SHIFT", -1, &side_font, Gdiplus::PointF(682.0f, 31.0f), &side_brush);
    graphics.DrawString(L"PRESS=SELECT", -1, &side_font, Gdiplus::PointF(682.0f, 58.0f), &side_brush);
    return jpeg_from_bitmap(bitmap, 84);
}

void render_key(int index)
{
    if (write_handle != INVALID_HANDLE_VALUE)
        write_key_image(index, make_key_image(index));
}

void render_keys()
{
    for (int n = 0; n < KEY_COUNT && write_handle != INVALID_HANDLE_VALUE; ++n)
        render_key(n);
}

std::string current_status_signature()
{
    std::string lines[4];
    status_lines(lines);
    std::ostringstream signature;
    signature << page << '|' << mode;
    for (int n = 0; n < 4; ++n)
        signature << '|' << lines[n];
    return signature.str();
}

void render_touchscreen(bool force)
{
    if (write_handle == INVALID_HANDLE_VALUE)
        return;
    const std::string signature = current_status_signature();
    if (!force && signature == last_status_signature)
        return;
    last_status_signature = signature;
    write_touchscreen_image(make_touchscreen_image());
    last_status_render = GetTickCount();
}

void set_brightness(int percent)
{
    unsigned char feature[32] = { 0 };
    feature[0] = 0x03;
    feature[1] = 0x08;
    feature[2] = static_cast<unsigned char>(std::max(0, std::min(100, percent)));
    write_feature(feature, sizeof(feature));
}

void reset_device()
{
    unsigned char feature[32] = { 0 };
    feature[0] = 0x03;
    feature[1] = 0x02;
    write_feature(feature, sizeof(feature));
}

bool issue_read()
{
    if (read_handle == INVALID_HANDLE_VALUE)
        return false;
    ResetEvent(read_overlapped.hEvent);
    DWORD bytes = 0;
    const BOOL result = ReadFile(read_handle, &read_buffer[0], static_cast<DWORD>(read_buffer.size()), &bytes, &read_overlapped);
    if (result) {
        read_pending = false;
        completed_read_bytes = bytes;
        return true;
    }
    if (GetLastError() == ERROR_IO_PENDING) {
        read_pending = true;
        return true;
    }
    NS_debug("Stream Deck read failed, error=%lu\n", GetLastError());
    return false;
}

bool find_device_path(std::string* path)
{
    GUID hid_guid;
    HidD_GetHidGuid(&hid_guid);
    HDEVINFO devices = SetupDiGetClassDevsA(&hid_guid, NULL, NULL, DIGCF_PRESENT | DIGCF_DEVICEINTERFACE);
    if (devices == INVALID_HANDLE_VALUE)
        return false;
    bool found = false;
    for (DWORD index = 0; ; ++index) {
        SP_DEVICE_INTERFACE_DATA interface_data;
        ZeroMemory(&interface_data, sizeof(interface_data));
        interface_data.cbSize = sizeof(interface_data);
        if (!SetupDiEnumDeviceInterfaces(devices, NULL, &hid_guid, index, &interface_data))
            break;
        DWORD required = 0;
        SetupDiGetDeviceInterfaceDetailA(devices, &interface_data, NULL, 0, &required, NULL);
        if (required == 0)
            continue;
        std::vector<unsigned char> detail_buffer(required);
        SP_DEVICE_INTERFACE_DETAIL_DATA_A* detail = reinterpret_cast<SP_DEVICE_INTERFACE_DETAIL_DATA_A*>(&detail_buffer[0]);
        detail->cbSize = sizeof(SP_DEVICE_INTERFACE_DETAIL_DATA_A);
        if (!SetupDiGetDeviceInterfaceDetailA(devices, &interface_data, detail, required, NULL, NULL))
            continue;
        HANDLE handle = CreateFileA(detail->DevicePath, 0, FILE_SHARE_READ | FILE_SHARE_WRITE,
                                    NULL, OPEN_EXISTING, 0, NULL);
        if (handle == INVALID_HANDLE_VALUE)
            continue;
        HIDD_ATTRIBUTES attributes;
        ZeroMemory(&attributes, sizeof(attributes));
        attributes.Size = sizeof(attributes);
        if (HidD_GetAttributes(handle, &attributes) && attributes.VendorID == STREAMDECK_VENDOR_ID &&
            attributes.ProductID == STREAMDECK_PLUS_PRODUCT_ID) {
            *path = detail->DevicePath;
            found = true;
            CloseHandle(handle);
            break;
        }
        CloseHandle(handle);
    }
    SetupDiDestroyDeviceInfoList(devices);
    return found;
}

void close_device()
{
    if (read_handle != INVALID_HANDLE_VALUE) {
        CancelIo(read_handle);
        CloseHandle(read_handle);
        read_handle = INVALID_HANDLE_VALUE;
    }
    if (write_handle != INVALID_HANDLE_VALUE) {
        CloseHandle(write_handle);
        write_handle = INVALID_HANDLE_VALUE;
    }
    if (read_overlapped.hEvent != NULL) {
        CloseHandle(read_overlapped.hEvent);
        read_overlapped.hEvent = NULL;
    }
    read_pending = false;
    completed_read_bytes = 0;
    read_buffer.clear();
    last_status_signature.clear();
}

bool connect_device()
{
    std::string path;
    if (!find_device_path(&path))
        return false;

    write_handle = CreateFileA(path.c_str(), GENERIC_READ | GENERIC_WRITE,
        FILE_SHARE_READ | FILE_SHARE_WRITE, NULL, OPEN_EXISTING, 0, NULL);
    read_handle = CreateFileA(path.c_str(), GENERIC_READ | GENERIC_WRITE,
        FILE_SHARE_READ | FILE_SHARE_WRITE, NULL, OPEN_EXISTING, FILE_FLAG_OVERLAPPED, NULL);
    if (write_handle == INVALID_HANDLE_VALUE || read_handle == INVALID_HANDLE_VALUE) {
        NS_debug("Unable to open Stream Deck +, error=%lu\n", GetLastError());
        close_device();
        return false;
    }

    PHIDP_PREPARSED_DATA preparsed = NULL;
    HIDP_CAPS caps;
    ZeroMemory(&caps, sizeof(caps));
    if (!HidD_GetPreparsedData(read_handle, &preparsed) || HidP_GetCaps(preparsed, &caps) != HIDP_STATUS_SUCCESS) {
        if (preparsed != NULL)
            HidD_FreePreparsedData(preparsed);
        close_device();
        return false;
    }
    HidD_FreePreparsedData(preparsed);
    read_buffer.assign(std::max<USHORT>(caps.InputReportByteLength, 14), 0);
    ZeroMemory(&read_overlapped, sizeof(read_overlapped));
    read_overlapped.hEvent = CreateEvent(NULL, TRUE, FALSE, NULL);
    if (read_overlapped.hEvent == NULL || !issue_read()) {
        close_device();
        return false;
    }

    reset_device();
    if (write_handle == INVALID_HANDLE_VALUE)
        return false;
    set_brightness(65);
    if (write_handle == INVALID_HANDLE_VALUE)
        return false;
    render_keys();
    render_touchscreen(true);
    NS_debug("Stream Deck + connected natively (input=%u output=%u feature=%u)\n",
             caps.InputReportByteLength, caps.OutputReportByteLength, caps.FeatureReportByteLength);
    return true;
}

void set_page(int delta)
{
    page = (page + (delta > 0 ? 1 : MODE_COUNT - 1)) % MODE_COUNT;
    render_keys();
    render_touchscreen(true);
}

void randomize_params(CFFPlugin* plugin)
{
    if (plugin == NULL)
        return;
    for (int n = 0; n < plugin->m_numparams; ++n) {
        CFFParameterStruct* param = &plugin->m_params[n];
        if (param->type != FF_TYPE_TEXT)
            plugin->setparam(param->name, static_cast<float>(rand()) / RAND_MAX);
    }
}

void randomize_params(FFGLPluginInstance* plugin)
{
    if (plugin == NULL)
        return;
    for (int n = 0; n < plugin->m_numParameters; ++n)
        if (plugin->m_params[n].type != FF_TYPE_TEXT)
            plugin->SetFloatParameter(n, static_cast<float>(rand()) / RAND_MAX);
}

void one_random_plugin(const std::string& type)
{
    if (type == "pre" && nffplugins > 0) {
        preplugins[0] = ffplugins[rand() % nffplugins];
        preplugins[1] = preplugins[2] = NULL;
    } else if (type == "post" && nffplugins > 0) {
        postplugins[0] = ffplugins[rand() % nffplugins];
        postplugins[1] = postplugins[2] = NULL;
    } else if (type == "ffgl" && nffglplugins > 0) {
        post2plugins[0] = ffglplugins[rand() % nffglplugins];
        post2plugins[1] = post2plugins[2] = NULL;
    }
}

void clear_plugins()
{
    for (int n = 0; n < NPREPLUGINS; ++n) preplugins[n] = NULL;
    for (int n = 0; n < NPOSTPLUGINS; ++n) postplugins[n] = NULL;
    for (int n = 0; n < NPOST2VISIBLEPLUGINS; ++n) post2plugins[n] = NULL;
    post2plugins[0] = findffglplugin("Shift RGB");
    if (post2plugins[0] != NULL)
        post2plugins[0]->setparam("Distance", 0.0f);
}

void set_preset_parameter(CFFPlugin* plugin, const std::string& name, float value)
{
    if (plugin == NULL)
        return;
    for (int n = 0; n < plugin->m_numparams; ++n) {
        if (plugin->m_params[n].name == name && plugin->m_params[n].type != FF_TYPE_TEXT) {
            plugin->setparam(name, value);
            return;
        }
    }
}

void set_preset_parameter(FFGLPluginInstance* plugin, const std::string& name, float value)
{
    if (plugin == NULL)
        return;
    for (int n = 0; n < plugin->m_numParameters; ++n) {
        if (plugin->m_params[n].name == name && plugin->m_params[n].type != FF_TYPE_TEXT) {
            plugin->SetFloatParameter(n, value);
            return;
        }
    }
}

bool load_current_preset()
{
    if (preset_names.empty())
        return false;
    const std::string path = preset_path(current_preset_set(), current_preset_name());
    std::ifstream input(path.c_str(), std::ios::in | std::ios::binary);
    if (!input) {
        NS_debug("Unable to open Stream Deck preset %s\n", path.c_str());
        return false;
    }

    CFFPlugin* current_ff = NULL;
    FFGLPluginInstance* current_ffgl = NULL;
    std::string line;
    while (std::getline(input, line)) {
        if (!line.empty() && line[line.size() - 1] == '\r')
            line.erase(line.size() - 1);
        const size_t first = line.find(':');
        const size_t second = first == std::string::npos ? std::string::npos : line.find(':', first + 1);
        if (first == std::string::npos || second == std::string::npos)
            continue;
        const std::string command = line.substr(0, first);
        const std::string argument = line.substr(first + 1, second - first - 1);
        const std::string value = line.substr(second + 1);
        if (command == "pre" || command == "post") {
            const int slot = atoi(argument.c_str());
            current_ff = value == "None" ? NULL : findffplugin(value);
            current_ffgl = NULL;
            if (command == "pre" && slot >= 0 && slot < NPREPLUGINS)
                preplugins[slot] = current_ff;
            else if (command == "post" && slot >= 0 && slot < NPOSTPLUGINS)
                postplugins[slot] = current_ff;
        } else if (command == "ffgl") {
            const int slot = atoi(argument.c_str());
            current_ffgl = value == "None" ? NULL : findffglplugin(value);
            current_ff = NULL;
            if (slot >= 0 && slot < NPOST2VISIBLEPLUGINS)
                post2plugins[slot] = current_ffgl;
        } else if (command == "param") {
            const float parameter_value = static_cast<float>(atof(value.c_str()));
            if (current_ff != NULL)
                set_preset_parameter(current_ff, argument, parameter_value);
            else if (current_ffgl != NULL)
                set_preset_parameter(current_ffgl, argument, parameter_value);
        }
    }
    NS_debug("Loaded Stream Deck preset %s/%s\n", current_preset_set().c_str(), current_preset_name().c_str());
    return true;
}

void write_preset_plugin(std::ofstream& output, CFFPlugin* plugin)
{
    if (plugin == NULL)
        return;
    for (int n = 0; n < plugin->m_numparams; ++n) {
        CFFParameterStruct* parameter = &plugin->m_params[n];
        if (parameter->type != FF_TYPE_TEXT)
            output << "param:" << parameter->name << ':' << parameter->current_float_val << "\n";
    }
}

void write_preset_plugin(std::ofstream& output, FFGLPluginInstance* plugin)
{
    if (plugin == NULL)
        return;
    for (int n = 0; n < plugin->m_numParameters; ++n) {
        FFGLParameterStruct* parameter = &plugin->m_params[n];
        if (parameter->type != FF_TYPE_TEXT)
            output << "param:" << parameter->name << ':' << plugin->GetFloatParameter(n) << "\n";
    }
}

bool save_new_preset()
{
    const std::string set_name = "new";
    const std::string directory = preset_directory(set_name);
    CreateDirectoryA(directory.c_str(), NULL);

    std::string name;
    std::string path;
    for (int n = 0; n < 10000; ++n) {
        std::ostringstream candidate;
        candidate << std::setw(2) << std::setfill('0') << n;
        name = candidate.str();
        path = preset_path(set_name, name);
        if (GetFileAttributesA(path.c_str()) == INVALID_FILE_ATTRIBUTES)
            break;
        name.clear();
    }
    if (name.empty()) {
        NS_debug("Unable to allocate a new Stream Deck preset filename\n");
        return false;
    }

    std::ofstream output(path.c_str(), std::ios::out | std::ios::binary | std::ios::trunc);
    if (!output) {
        NS_debug("Unable to save Stream Deck preset %s\n", path.c_str());
        return false;
    }
    output << std::fixed << std::setprecision(6);
    for (int n = 0; n < NPREPLUGINS; ++n) {
        output << "pre:" << n << ':' << (preplugins[n] == NULL ? "None" : preplugins[n]->name) << "\n";
        write_preset_plugin(output, preplugins[n]);
    }
    for (int n = 0; n < NPOSTPLUGINS; ++n) {
        output << "post:" << n << ':' << (postplugins[n] == NULL ? "None" : postplugins[n]->name) << "\n";
        write_preset_plugin(output, postplugins[n]);
    }
    for (int n = 0; n < NPOST2VISIBLEPLUGINS; ++n) {
        output << "ffgl:" << n << ':' << (post2plugins[n] == NULL ? "None" : post2plugins[n]->name) << "\n";
        write_preset_plugin(output, post2plugins[n]);
    }
    output.close();
    if (!output) {
        DeleteFileA(path.c_str());
        NS_debug("Unable to finish saving Stream Deck preset %s\n", path.c_str());
        return false;
    }

    if (current_preset_set() == set_name)
        reload_presets(name);
    NS_debug("Saved Stream Deck preset new/%s\n", name.c_str());
    return true;
}

void cycle_preset_set()
{
    preset_set_index = (preset_set_index + 1) % PRESET_SET_COUNT;
    reload_presets();
}

void select_previous_preset()
{
    if (preset_index > 0)
        --preset_index;
}

void select_next_preset()
{
    if (preset_index + 1 < static_cast<int>(preset_names.size()))
        ++preset_index;
}

void load_random_preset()
{
    if (preset_names.empty())
        return;
    preset_index = rand() % static_cast<int>(preset_names.size());
    load_current_preset();
}

void adjust_option(int direction)
{
    if (looper == NULL)
        return;
    switch (option_index) {
    case 0: looper->_autoNext = direction > 0; break;
    case 1: looper->_trail = direction > 0; looper->_set_trail(); break;
    case 2: looper->_enableXOR = direction > 0; break;
    case 3: looper->_border = direction > 0; break;
    case 4: looper->_recborder = direction > 0; break;
    case 5: looper->_smooth = direction > 0; break;
    case 6: looper->setinterp(direction > 0); break;
    case 7:
        looper->_trailamount = std::max(0.0f, std::min(1.0f, looper->_trailamount + direction * 0.02f));
        looper->_set_trail();
        break;
    case 8:
        if (direction > 0) looper->morewindows(); else looper->lesswindows();
        break;
    default:
        looper->_moveamount = std::max(1, std::min(49, looper->_moveamount + direction * 2));
        break;
    }
}

void perform_action(const std::string& key, bool pressed)
{
    if (looper == NULL)
        return;
    if (mode == "2") {
        if (key == "-" || key == "+") {
            if (key == "-") looper->_setRecord(pressed ? 1 : 0);
            else looper->_setRecordOverlay(pressed ? 1 : 0);
        } else if (pressed && key == "/") looper->_allLive(all_live() ? 0 : 1);
        else if (pressed && key == "*") { looper->_trail = !looper->_trail; looper->_set_trail(); }
    } else if (!pressed) {
        if ((mode == "5" && key == "*") || mode == ".")
            for (int n = 0; n < MAX_LOOPS; ++n) looper->_freeze(n, 0);
        return;
    } else if (mode == "1") {
        if (key == "/") looper->_quadrantDisplay();
        else if (key == "*") looper->_fullDisplay();
        else if (key == "-") looper->lesswindows();
        else if (key == "+") looper->morewindows();
    } else if (mode == "4") {
        if (key == "/") { looper->_trail = !looper->_trail; looper->_set_trail(); }
        else if (key == "*") looper->togglexor();
        else if (key == "-" || key == "+") {
            looper->_trailamount = std::max(0.0f, std::min(1.0f, looper->_trailamount + (key == "+" ? 0.02f : -0.02f)));
            looper->_set_trail();
        }
    } else if (mode == "7") {
        if (key == "/") one_random_plugin("pre");
        else if (key == "*") one_random_plugin("post");
        else if (key == "-") one_random_plugin("ffgl");
        else if (key == "+") { one_random_plugin("pre"); one_random_plugin("post"); one_random_plugin("ffgl"); }
    } else if (mode == "0") {
        if (key == "/") {
            for (int n = 0; n < NPREPLUGINS; ++n) randomize_params(preplugins[n]);
            for (int n = 0; n < NPOSTPLUGINS; ++n) randomize_params(postplugins[n]);
            for (int n = 0; n < NPOST2VISIBLEPLUGINS; ++n) randomize_params(post2plugins[n]);
        } else if (key == "*") {
            load_random_preset();
        } else if (key == "-") {
            looper->randomposition(-1.0f); looper->_nextLoop();
        } else if (key == "+") looper->randompositions(-1.0f);
    } else if (mode == "8") {
        if (key == "/") option_index = (option_index + 9) % 10;
        else if (key == "*") option_index = (option_index + 1) % 10;
        else if (key == "-") adjust_option(-1);
        else if (key == "+") adjust_option(1);
    } else if (mode == "6") {
        if (key == "/") looper->_moveamount = std::max(1, looper->_moveamount - 2);
        else if (key == "*") looper->_moveamount = std::min(49, looper->_moveamount + 2);
        else if (key == "-" || key == "+")
            for (int n = 0; n < MAX_LOOPS; ++n) looper->_setplayfactor(n, key == "+" ? 2.0f : 0.5f);
    } else if (mode == "5") {
        if (key == "/") looper->togglesmooth();
        else if (key == "*") for (int n = 0; n < MAX_LOOPS; ++n) looper->_freeze(n, 1);
        else if (key == "+") {
            const int reverse = looper->_loop[looper->_currentLoop].reverse ? 0 : 1;
            for (int n = 0; n < MAX_LOOPS; ++n) looper->_loop[n].setReverse(reverse);
        } else if (key == "-") {
            for (int n = 0; n < MAX_LOOPS; ++n) { looper->_resetplayfactor(n); looper->_loop[n].setReverse(0); }
        }
    } else if (mode == "9") {
        if (key == "/") looper->_setBlackout(!looper->_blackout);
        else if (key == "*") cycle_preset_set();
        else if (key == "-") clear_plugins();
        else if (key == "+") { clear_plugins(); looper->_fullDisplay(); looper->_allLive(1); }
    } else if (mode == ".") {
        for (int n = 0; n < MAX_LOOPS; ++n) {
            if (key == "/") looper->_restartsave(n);
            else if (key == "*") { looper->_restartrestore(n); looper->_freeze(n, 1); }
            else if (key == "-") { looper->_restartrandom(n); looper->_freeze(n, 1); }
            else if (key == "+") { looper->_restart(n); looper->_freeze(n, 1); }
        }
    } else if (mode == "3") {
        if (key == "/") select_previous_preset();
        else if (key == "*") select_next_preset();
        else if (key == "-") save_new_preset();
        else if (key == "+") load_current_preset();
    } else if (mode == "000") {
        if (key == "/") looper->_allLive(all_live() ? 0 : 1);
        else if (key == "*") looper->togglexor();
    }
    render_touchscreen(true);
}

bool is_mode_key(const std::string& key)
{
    if (key.empty())
        return false;
    for (int n = 0; n < MODE_COUNT; ++n)
        if (key == MODE_KEYS[n])
            return true;
    return false;
}

void handle_control(const std::string& key, bool pressed)
{
    if (key == "Record") {
        if (looper != NULL)
            looper->_setRecord(pressed ? 1 : 0);
        render_touchscreen(true);
        return;
    }
    if (key == "Enter") {
        return;
    }
    if (key == "NL")
        return;
    if (is_mode_key(key)) {
        if (pressed) {
            mode = key;
            render_keys();
            render_touchscreen(true);
        }
        return;
    }
    perform_action(key, pressed);
}

void handle_input_report(const unsigned char* report, DWORD length)
{
    if (length < 2)
        return;
    if (report[1] == 0x00 && length >= 12) {
        for (int n = 0; n < KEY_COUNT; ++n) {
            const bool pressed = report[4 + n] != 0;
            if (pressed != key_states[n]) {
                key_states[n] = pressed;
                const std::string key = n == 7 ? "Record"
                                      : n < 4 ? ACTION_KEYS[n] : MODE_KEYS[visible_mode_index(n - 4)];
                handle_control(key, pressed);
                render_key(n);
            }
        }
    } else if (report[1] == 0x03 && length >= 9) {
        if (report[4] == 0x01) {
            for (int n = 0; n < DIAL_COUNT; ++n) {
                const int raw = report[5 + n];
                const int value = raw < 0x80 ? raw : -(0x100 - raw);
                if (value == 0)
                    continue;
                if (n == 0 || n == 3) set_page(value);
                else {
                    const std::string negative = n == 1 ? "/" : "-";
                    const std::string positive = n == 1 ? "*" : "+";
                    for (int step = 0; step < abs(value); ++step) {
                        handle_control(value > 0 ? positive : negative, true);
                        handle_control(value > 0 ? positive : negative, false);
                    }
                }
            }
        } else if (report[4] == 0x00) {
            const char* dial_keys[DIAL_COUNT] = { "Enter", "/", "*", "NL" };
            for (int n = 0; n < DIAL_COUNT; ++n) {
                const bool pressed = report[5 + n] != 0;
                if (pressed != dial_states[n]) {
                    dial_states[n] = pressed;
                    handle_control(dial_keys[n], pressed);
                }
            }
        }
    } else if (report[1] == 0x02 && length >= 9 && (report[4] == 1 || report[4] == 2)) {
        const int x = report[6] | (report[7] << 8);
        const int action = std::max(0, std::min(3, x / 200));
        handle_control(ACTION_KEYS[action], true);
        handle_control(ACTION_KEYS[action], false);
    }
}

} // namespace

void streamdeck_init()
{
    char setting[16];
    DWORD length = GetEnvironmentVariableA("LOOPYCAM_STREAMDECK", setting, sizeof(setting));
    enabled = !(length > 0 && strcmp(setting, "0") == 0);
    if (!enabled) {
        NS_debug("Native Stream Deck support disabled by LOOPYCAM_STREAMDECK=0\n");
        return;
    }
    reload_presets();
    Gdiplus::GdiplusStartupInput input;
    if (Gdiplus::GdiplusStartup(&gdiplus_token, &input, NULL) != Gdiplus::Ok) {
        gdiplus_token = 0;
        enabled = false;
        NS_debug("Unable to initialize GDI+ for Stream Deck images\n");
        return;
    }
    last_connect_attempt = GetTickCount();
    if (!connect_device())
        NS_debug("Stream Deck + is not available; native reconnect is enabled\n");
}

void streamdeck_check()
{
    if (!enabled)
        return;
    const DWORD now = GetTickCount();
    if (read_handle == INVALID_HANDLE_VALUE) {
        if (now - last_connect_attempt >= 2000) {
            last_connect_attempt = now;
            connect_device();
        }
        return;
    }

    for (int count = 0; count < 16; ++count) {
        if (!read_pending) {
            if (!issue_read()) {
                close_device();
                return;
            }
            if (completed_read_bytes > 0) {
                handle_input_report(&read_buffer[0], completed_read_bytes);
                completed_read_bytes = 0;
                continue;
            }
        }
        if (WaitForSingleObject(read_overlapped.hEvent, 0) != WAIT_OBJECT_0)
            break;
        DWORD bytes = 0;
        if (!GetOverlappedResult(read_handle, &read_overlapped, &bytes, FALSE)) {
            NS_debug("Stream Deck disconnected, error=%lu\n", GetLastError());
            close_device();
            return;
        }
        read_pending = false;
        handle_input_report(&read_buffer[0], bytes);
    }

    if (now - last_status_render >= 100)
        render_touchscreen(false);
}

void streamdeck_shutdown()
{
    close_device();
    if (gdiplus_token != 0) {
        Gdiplus::GdiplusShutdown(gdiplus_token);
        gdiplus_token = 0;
    }
}

bool streamdeck_connected()
{
    return read_handle != INVALID_HANDLE_VALUE && write_handle != INVALID_HANDLE_VALUE;
}

const char* streamdeck_mode_name()
{
    static std::string name;
    name = mode_name(mode);
    return name.c_str();
}

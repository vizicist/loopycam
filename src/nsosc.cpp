#if 0
#include <stdio.h>
#include <stdarg.h>
#include <Windows.h>
#endif

#include "Socket.h"

#include "NSosc.h"

#include "winerror.h"
#include "osc/OscOutboundPacketStream.h"
#include "osc/OscReceivedElements.h"

#include <iostream>
#include <fstream>
using namespace std;



#if 0
if( strcmp( m.AddressPattern(), "/test1" ) == 0 ) {
    // example #1 -- argument stream interface
    osc::ReceivedMessageArgumentStream args = m.ArgumentStream();
    bool a1;
    osc::int32 a2;
    float a3;
    const char *a4;
    args >> a1 >> a2 >> a3 >> a4 >> osc::EndMessage;

    std::cout << "received '/test1' message with arguments: "
              << a1 << " " << a2 << " " << a3 << " " << a4 << "\n";

} else if( strcmp( m.AddressPattern(), "/test2" ) == 0 ) {
    // example #2 -- argument iterator interface, supports
    // reflection for overloaded messages (eg you can call
    // (*arg)->IsBool() to check if a bool was passed etc).
    osc::ReceivedMessage::const_iterator arg = m.ArgumentsBegin();
    bool a1 = (arg++)->AsBool();
    int a2 = (arg++)->AsInt32();
    float a3 = (arg++)->AsFloat();
    const char *a4 = (arg++)->AsString();
    if( arg != m.ArgumentsEnd() )
        throw osc::ExcessArgumentException();

    std::cout << "received '/test2' message with arguments: "
              << a1 << " " << a2 << " " << a3 << " " << a4 << "\n";
}
#endif

NSosc::NSosc(char *host, int oscport, OscMessageProcessor* processor) {
    // NS_debug("NSosc constructor");

    _enabled = FALSE;
    // NS_debug("Setting oscEnabled to TRUE in NSosc constructor");

    _myport = oscport;
    _myhost = host;
    if ( _process == 0 ) {
        NS_debug("HEY!!! processor is NULL!?!?\n");
    }
    _process = processor;
    // NS_debug("NSosc constructor setting oscEnabled to TRUE");
}

NSosc::~NSosc() {

    NS_debug("NSosc destructor");
}
void
debugOscMessage(const osc::ReceivedMessage& m)
{
    const char *s = m.AddressPattern();
    const char *types = m.TypeTags();

    NS_debug("OSC message: %s ",s);
    osc::ReceivedMessage::const_iterator arg = m.ArgumentsBegin();
    int arg_i;
    float arg_f;
    const char *arg_s;
    for ( const char *p=types; *p!='\0'; p++ ) {
        switch (*p) {
        case 'i':
            arg_i = (arg++)->AsInt32();
            NS_debug("   Arg (int) = %d",arg_i);
            break;
        case 'f':
            arg_f = (arg++)->AsFloat();
            NS_debug("   Arg (float) = %lf",arg_f);
            break;
        case 's':
            arg_s = (arg++)->AsString();
            NS_debug("   Arg (string) = %s",arg_s);
            break;
        case 'b':
            arg++;
            NS_debug("   Arg (blob) = ??");
            break;
        }
    }
}

void
NSosc::ProcessOscBundle( const osc::ReceivedBundle& b )
{
    // ignore bundle time tag for now

    for( osc::ReceivedBundle::const_iterator i = b.ElementsBegin();
            i != b.ElementsEnd(); ++i ) {
        if( i->IsBundle() )
            ProcessOscBundle( osc::ReceivedBundle(*i) );
        else
            _process->ProcessOscMessage( osc::ReceivedMessage(*i) );
    }
}

#if 0
int
SendToUDPServer(char *serverhost, int serverport, const char *data, int leng)
{
    SOCKET s;
    struct sockaddr_in sin;
    int sin_len = sizeof(sin);
    int i;
    DWORD nbio = 1;
    PHOSTENT phe;

    phe = gethostbyname(serverhost);
    if (phe == NULL) {
        NS_debug("SendToAServer: gethostbyname(localhost) fails?");
        return 1;
    }
    s = socket(PF_INET, SOCK_DGRAM, 0);
    if ( s < 0 ) {
        NS_debug("SendToAServer: unable to create socket!?");
        return 1;
    }
    sin.sin_family = AF_INET;
    memcpy((struct sockaddr FAR *) &(sin.sin_addr),
           *(char **)phe->h_addr_list, phe->h_length);
    sin.sin_port = htons(serverport);

    i = sendto(s,data,leng,0,(LPSOCKADDR)&sin,sin_len);

    closesocket(s);
    return 0;
}

int
RegisterWithAServer(char *serverhost, int serverport, char *myhost, int myport)
{
    char buffer[1024];
    // NS_debug("RegisterWithServer, serverport=%d myport=%d",serverport, myport);
    osc::OutboundPacketStream p( buffer, sizeof(buffer) );
    p << osc::BeginMessage( "/registerclient" )
      << "localhost" << myport << osc::EndMessage;
    return SendToAServer(serverhost,serverport,p.Data(),(int)p.Size());
}

int
UnRegisterWithAServer(char *serverhost, int serverport, char *myhost, int myport)
{
    char buffer[1024];
    osc::OutboundPacketStream p( buffer, sizeof(buffer) );
    p << osc::BeginMessage( "/unregisterclient" )
      << "localhost" << myport << osc::EndMessage;
    return SendToAServer(serverhost,serverport,p.Data(),(int)p.Size());
}
#endif

int
OscSocketError(char *s)
{
    int e = WSAGetLastError();
    NS_debug("NSosc socket error: %s e=%d",s,e);
    return e;
}

int
NSoscUDP::Listen() {

    char *myhost = "localhost";
    struct sockaddr_in sin;
    struct sockaddr_in sin2;
    int sin2_len = sizeof(sin2);

    DWORD nbio = 1;
    PHOSTENT phe;

    phe = gethostbyname(myhost);
    if (phe == NULL) {
        return OscSocketError("unable to get hostname");
    }
    _s = socket(PF_INET, SOCK_DGRAM, 0);
    if ( _s < 0 ) {
        NS_debug("_openListener error 1");
        return OscSocketError("unable to create socket");
    }
    sin.sin_family = AF_INET;
    // sin.sin_addr.s_addr = INADDR_ANY;
    memcpy((struct sockaddr FAR *) &(sin.sin_addr),
           *(char **)phe->h_addr_list, phe->h_length);
    sin.sin_port = htons(_myport);

    if (  ioctlsocket(_s,FIONBIO,&nbio) < 0 ) {
        NS_debug("_openListener error 2");
        return OscSocketError("unable to set socket to non-blocking");
    }
    if (bind(_s, (LPSOCKADDR)&sin, sizeof (sin)) < 0) {
        int e = WSAGetLastError();
        NS_debug("NSosc socket bind error: %s e=%d",_s,e);
        return e;
        // return OscSocketError("unable to bind socket");
    }
    if ( getsockname(_s,(LPSOCKADDR)&sin2, &sin2_len) != 0 ) {
        return OscSocketError("unable to getsockname after bind");
    }
    // *myport = ntohs(sin2.sin_port);
    NS_debug("NOW LISTENING on port %d",_myport);
    return 0;
}

void
NSoscUDP::Check()
{
    struct sockaddr_in sin;
    int sin_len = sizeof(sin);
    char buf[1024];

    // NS_debug("OscCheck!");
    for ( int cnt=0; cnt<500; cnt++ ) {
        int i = recvfrom(_s,buf,sizeof(buf),0,(LPSOCKADDR)&sin, &sin_len);
        if ( i <= 0 ) {
            int e = WSAGetLastError();
            if ( e != WSAEWOULDBLOCK ) {
                NS_debug("Hmmm, B e=%d isn't EWOULDBLOCK!?",e);
            }
            return;
        }
        NS_debug("%ld: GOT recvfrom _myport=%d i=%d  cnt=%d",timeGetTime(),_myport,i,cnt);
        osc::ReceivedPacket p( buf, i );
        if( p.IsBundle() )
            ProcessOscBundle( osc::ReceivedBundle(p) );
        else
            _process->ProcessOscMessage( osc::ReceivedMessage(p) );
    }
}

void
NSoscUDP::UnListen()
{
    NS_debug("_oscUnlisten( _myport=%d)", _myport);
    closesocket(_s);
    _s = INVALID_SOCKET;
}

int
NSoscTCP::Listen() {
    mi_Socket.Listen(0, _myport, 0, 0);
    return 0;
}

void
NSoscTCP::Check()
{
    TCP::cSocket::cMemory* pi_RecvMem;
    SOCKET  h_Socket;
    DWORD u32_Event, u32_IP, u32_Read, u32_Sent;

    DWORD u32_Err = mi_Socket.ProcessEvents(&u32_Event, &u32_IP, &h_Socket, &pi_RecvMem, &u32_Read,  &u32_Sent);

    if (u32_Err == ERROR_TIMEOUT) // 50 ms interval has elapsed
        return;

    if (u32_Event) // ATTENTION: u32_Event may be == 0 -> do nothing.
    {
        // NS_debug("u32_Event = %d\n",u32_Event);
        if (u32_Event & FD_READ && pi_RecvMem) // pi_RecvMem may be NULL if an error occurred!!
        {
            // NS_debug("SHOULD BE PROCESSING received data!  u32_Read=%d\n",u32_Read);
            ProcessBytes(pi_RecvMem);
        }
    }

    if (u32_Err)
    {
        NS_debug("u32_Err = %d\n",u32_Err);
        // mi_Socket.Close() has been called -> don't print this error message
        if (u32_Err == WSAENOTCONN)
            return;

        // An error normally means that the socket has a problem -> abort the loop.
        // A few errors should not abort the processing:
        if (u32_Err != WSAECONNABORTED && // e.g. after the other side was killed in TaskManager
                u32_Err != WSAECONNRESET   && // Connection reset by peer.
                u32_Err != WSAECONNREFUSED && // FD_ACCEPT with already 62 clients connected
                u32_Err != WSAESHUTDOWN)      // Sending data to a socket just in the short timespan
            return;                        //   between shutdown() and closesocket()
    }
}

int
NSoscTCP::SlipBoundaries(char *p, int leng, char** pbegin, char** pend)
{
    int bytesleft = leng;
    int found = 0;

    *pbegin = 0;
    *pend = 0;
    // int pn = (*p & 0xff);
    // NS_debug("SLIPBOUNDARIES pn=%d SLIP_END=%d\n",pn,SLIP_END);
    if ( IS_SLIP_END(*p) ) {
        *pbegin = p++;
        bytesleft--;
        found = 1;
    } else {
        // Scan for next unescaped SLIP_END
        p++;
        bytesleft--;
        while ( !found && bytesleft > 0 ) {
            if ( IS_SLIP_END(*p) && ! IS_SLIP_ESC(*(p-1)) ) {
                *pbegin = p;
                found = 1;
            }
            p++;
            bytesleft--;
        }
    }
    if ( ! found ) {
        return 0;
    }
    // We've got the beginning of a message, now look for
    // the end.
    found = 0;
    while ( !found && bytesleft > 0 ) {
        if ( IS_SLIP_END(*p) && ! IS_SLIP_ESC(*(p-1)) ) {
            *pend = p;
            found = 1;
        }
        p++;
        bytesleft--;
    }
    return found;
}

void
NSoscTCP::ProcessBytes(	TCP::cSocket::cMemory* buff)
{
    while ( ProcessOneOscMessage(buff) ) {
    }
}

int
NSoscTCP::ProcessOneOscMessage( TCP::cSocket::cMemory* buff)
{
    char *p = buff->GetBuffer();
    int nbytes = buff->GetLength();
    // NS_debug("ProcessBytes, buffer is %d bytes long\n",nbytes);
    // for ( int n=0; n<nbytes; n++ ) {
    // 	NS_debug("  p[%d] = 0x%02x\n",n,p[n]);
    // }
    char* pbegin;
    char* pend;
    if ( SlipBoundaries(p,nbytes,&pbegin,&pend) == 0 ) {
        return 0;
    }
    int oscsize = pend - pbegin - 1;
    // NS_debug("SLIPBOUNDARIES found it! leng = %d\n",oscsize);
    char *oscp = _oscmsg->GetBuffer();
    if ( _oscmsg->GetLength() != 0 ) {
        NS_debug("HEY, _oscmsg isn't empty!?");
        _oscmsg->DeleteLeft(_oscmsg->GetLength());
    }
    if ( ! IS_SLIP_END(*pbegin) || ! IS_SLIP_END(*pend) ) {
        // This indicates SlipBoundaries isn't doing its job.
        NS_debug("HEY! pbegin/pend don't have SLIP_END !??");
        return 0;
    }
    p = pbegin+1;
    int bytesleft = oscsize;
    while ( bytesleft > 0 ) {
        if ( IS_SLIP_ESC(*p) && bytesleft>1 && IS_SLIP_ESC2(*(p+1)) ) {
            _oscmsg->Append(p,1);
            p += 2;
            bytesleft -= 2;
        } else if ( IS_SLIP_ESC(*p) && bytesleft>1 && IS_SLIP_END(*(p+1)) ) {
            _oscmsg->Append(p+1,1);
            p += 2;
            bytesleft -= 2;
        } else {
            _oscmsg->Append(p,1);
            p += 1;
            bytesleft -= 1;
        }
    }
    buff->DeleteLeft(oscsize+2);
    // NS_debug("Final size of _oscmsg = %d, oscsize=%d\n",_oscmsg->GetLength(),oscsize);

    osc::ReceivedPacket rp( _oscmsg->GetBuffer(), _oscmsg->GetLength() );
    if( rp.IsBundle() )
        ProcessOscBundle( osc::ReceivedBundle(rp) );
    else
        _process->ProcessOscMessage( osc::ReceivedMessage(rp) );

    _oscmsg->DeleteLeft(_oscmsg->GetLength());
    return 1;
}


void
NSoscTCP::UnListen()
{
    mi_Socket.Close();
}



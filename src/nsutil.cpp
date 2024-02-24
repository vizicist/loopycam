#include "Socket.h"

#include "NSosc.h"
#include "nsutil.h"

#include "winerror.h"
#include "osc/OscOutboundPacketStream.h"
#include "osc/OscReceivedElements.h"

#include <iostream>
#include <fstream>
using namespace std;

void
NS_debug(char *fmt, ...)
{
#if 0
    va_list args;
    char msg[10000];

    va_start(args, fmt);
    vsprintf_s(msg,sizeof(msg)-2,fmt,args);

    OutputDebugString(msg);

    ofstream f("nsdebug.txt",ios::app);
    f << msg;
    char *p = strchr(msg,'\0');
    if ( p != NULL && p != msg && *(p-1) != '\n' ) {
        OutputDebugString("\n");
        f << "\n";
    }
    f.close();

    va_end(args);
#endif
}

int
SendToUDPServer(std::string host, int serverport, const char *data, int leng)
{
    SOCKET s;
    struct sockaddr_in sin;
    int sin_len = sizeof(sin);
    int i;
    PHOSTENT phe;
    const char *serverhost = host.c_str();

    phe = gethostbyname(serverhost);
    if (phe == NULL) {
        NS_debug("SendToNthServer: gethostbyname(host=%s) fails?",serverhost);
        return 1;
    }
    s = socket(PF_INET, SOCK_DGRAM, 0);
    if ( s < 0 ) {
        NS_debug("SendToNthServer: unable to create socket!?");
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
SendToSLIPServer(std::string shost, int port, const char *data, int leng)
{
    SOCKET lhSocket;
    SOCKADDR_IN lSockAddr;
    int lConnect;
    int lleng;

    const char *host = shost.c_str();

    lhSocket = socket(AF_INET,SOCK_STREAM,IPPROTO_TCP);
    if(lhSocket == INVALID_SOCKET)
    {
        NS_debug("INVALID SOCKET!");
        return 1;
    }
    memset(&lSockAddr,0, sizeof(SOCKADDR_IN));
    lSockAddr.sin_family = AF_INET;
    lSockAddr.sin_port = htons(port);
    // inet_addr doesn't work on "localhost" ?
    if ( strcmp(host,"localhost") == 0 ) {
        host = "127.0.0.1";
    }
    lSockAddr.sin_addr.s_addr = inet_addr(host);
    lConnect = connect(lhSocket,(SOCKADDR *)&lSockAddr,sizeof(SOCKADDR_IN));
    if(lConnect != 0)
    {
        NS_debug("connect() failed to %s:%d, err=%d  WSAerr=%d",host,port,lConnect,WSAGetLastError());
        return 1;
    }
    // NS_debug("SENDING DATA TO port=%d!!!   leng=%d\n",port,leng);
    char *buff = (char*) malloc(leng*2+2);
    char *bp = buff;
    const char *dp = data;
    *bp++ = (char)SLIP_END;
    for ( int n=0; n<leng; n++ ) {
        if ( IS_SLIP_END(*dp) ) {
            *bp++ = (char)SLIP_ESC;
            *bp++ = (char)SLIP_END;
            NS_debug("ESCAPING SLIP_END!\n");
        } else if ( IS_SLIP_ESC(*dp) ) {
            *bp++ = (char)SLIP_ESC;
            *bp++ = (char)SLIP_ESC2;
            NS_debug("ESCAPING SLIP_ESC!\n");
        } else {
            *bp++ = *dp;
        }
        dp++;
    }
    *bp++ = (char)SLIP_END;
    int bleng = bp - buff;
    // NS_debug("SENDING data, dataleng=%d buffleng=%d\n",leng,bleng);
    lleng = send(lhSocket,buff,bleng,0);
    if(lleng < bleng)
    {
        NS_debug("Send error, all bytes not sent\n");
    }
    closesocket(lhSocket);
    return 0;
}


unsigned char *
createimageofsize(CvSize sz) {
    size_t totalPixels = sz.width * sz.height * 3;
    return (unsigned char *) malloc(totalPixels);
}

#if 0
int
RegisterWithNthServer(char *serverhost, int serverport, char *myhost, int myport)
{
    char buffer[1024];
    // NS_debug("RegisterWithServer, serverport=%d myport=%d",serverport, myport);
    osc::OutboundPacketStream p( buffer, sizeof(buffer) );
    p << osc::BeginMessage( "/registerclient" )
      << "localhost" << myport << osc::EndMessage;
    return SendToNthServer(serverhost,serverport,p.Data(),(int)p.Size());
}

int
UnRegisterWithNthServer(char *serverhost, int serverport, char *myhost, int myport)
{
    char buffer[1024];
    osc::OutboundPacketStream p( buffer, sizeof(buffer) );
    p << osc::BeginMessage( "/unregisterclient" )
      << "localhost" << myport << osc::EndMessage;
    return SendToNthServer(serverhost,serverport,p.Data(),(int)p.Size());
}

int
OscSocketError(char *s)
{
    int e = WSAGetLastError();
    NS_debug("NSPlugin socket error: %s e=%d",s,e);
    return e;
}
#endif

CvScalar
randomRGB() {
    float h = (float)((360.0 * rand()) / (float) RAND_MAX) ;
    return HLStoRGB(h,0.5,1.0);
}

CvScalar
HLStoRGB(float hue, float lum, float sat)
{
    float r;
    float g;
    float b;

    if ( sat == 0 ) {
        r = g = b = lum * 255;
    } else {
        float rm2;
        if ( lum <= 0.5 ) {
            rm2 = lum + lum * sat;
        } else {
            rm2 = lum + sat - lum * sat;
        }
        float rm1 = 2 * lum - rm2;
        r = ToRGB1(rm1, rm2, hue + 120);
        g = ToRGB1(rm1, rm2, hue);
        b = ToRGB1(rm1, rm2, hue - 120);
    }
    // NS_debug("HLStoRGB hue=%lf rgb=%lf,%lf,%lf",hue,r,g,b);
    return CV_RGB(r,g,b);
}

void
RGBtoHLS(float r, float g, float b, float* hue, float* lum, float* sat)
{
    float minval = min(r, min(g, b));
    float maxval = max(r, max(g, b));
    float mdiff = maxval - minval;
    float msum = maxval + minval;
    *lum = msum / 510;
    if ( maxval == minval ) {
        *sat = 0;
        *hue = 0;
    } else {
        float rnorm = (maxval - r) / mdiff;
        float gnorm = (maxval - g) / mdiff;
        float bnorm = (maxval - b) / mdiff;
        if ( *lum <= .5 ) {
            *sat = mdiff/msum;
        } else {
            *sat = mdiff / (510 - msum);
        }

        // self._saturation = (self._luminance <= .5) ? (mdiff/msum) : (mdiff / (510 - msum));
        if ( r == maxval ) {
            *hue = 60 * (6 + bnorm - gnorm);
        } else if ( g == maxval ) {
            *hue = 60 * (2 + rnorm - bnorm);
        } else if ( b == maxval ) {
            *hue = 60 * (4 + gnorm - rnorm);
        }

        while ( *hue > 360.0 ) {
            *hue -= 360.0;
        }
        while ( *hue < 0.0 ) {
            *hue += 360.0;
        }
    }
}

float
ToRGB1(float rm1, float rm2, float rh)
{
    if ( rh > 360 ) {
        rh -= 360;
    } else if ( rh < 0 ) {
        rh += 360;
    }

    if ( rh < 60 ) {
        rm1 = rm1 + (rm2 - rm1) * rh / 60;
    } else if ( rh < 180 ) {
        rm1 = rm2;
    } else if ( rh < 240 ) {
        rm1 = rm1 + (rm2 - rm1) * (240 - rh) / 60;
    }
    return(rm1 * 255);
}

float
angleNormalize(float a)
{
    while ( a < 0.0 ) {
        a += PI2;
    }
    while ( a > PI2 ) {
        a -= PI2;
    }
    return a;
}


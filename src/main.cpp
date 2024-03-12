// #include "ofMain.h"
#include "Socket.h"
#include "NSosc.h"

#include "loopycam.h"

#include "loopyosc.h"

// #include "ofAppGlutWindow.h"
#include "FFPlugin.h"

extern LoopyOsc* LoopycamOsc;
#include "ip/NetworkingUtils.h"

#include <errno.h>
#define DO_BONJOUR 1
#ifdef DO_BONJOUR
#include "dns_sd.h"
#endif

// static volatile int stopNow = 0;
// Note: the select() implementation on Windows (Winsock2) fails with any timeout much larger than this
#define LONG_TIME 100000000

typedef union {
    unsigned char b[2];
    unsigned short NotAnInteger;
} Opaque16;

#ifdef DO_BONJOUR
static int operation;
static uint32_t opinterface = kDNSServiceInterfaceIndexAny;
static volatile int timeOut = LONG_TIME;
static DNSServiceRef tcpclient    = NULL;
static DNSServiceRef udpclient    = NULL;

static void DNSSD_API tcpreg_reply(DNSServiceRef sdref, const DNSServiceFlags flags, DNSServiceErrorType errorCode,
                                   const char *name, const char *regtype, const char *domain, void *context)
{
    (void)sdref;    // Unused
    (void)flags;    // Unused
    (void)context;  // Unused

    // printtimestamp();
    NS_debug("Got a reply for service %s.%s%s: ", name, regtype, domain);

    if (errorCode == kDNSServiceErr_NoError)
    {
        if (flags & kDNSServiceFlagsAdd) NS_debug("Name now registered and active\n");
        else NS_debug("Name registration removed\n");
        if (operation == 'A' || operation == 'U' || operation == 'N') timeOut = 5;
    }
    else if (errorCode == kDNSServiceErr_NameConflict)
    {
        NS_debug("Name in use, please choose another\n");
        exit(-1);
    }
    else
        NS_debug("Error %d\n", errorCode);

    if (!(flags & kDNSServiceFlagsMoreComing))
        fflush(stdout);
}

static void DNSSD_API udpreg_reply(DNSServiceRef sdref, const DNSServiceFlags flags, DNSServiceErrorType errorCode,
                                   const char *name, const char *regtype, const char *domain, void *context)
{
    (void)sdref;    // Unused
    (void)flags;    // Unused
    (void)context;  // Unused

    // printtimestamp();
    NS_debug("Got a reply for service %s.%s%s: ", name, regtype, domain);

    if (errorCode == kDNSServiceErr_NoError)
    {
        if (flags & kDNSServiceFlagsAdd) NS_debug("Name now registered and active\n");
        else NS_debug("Name registration removed\n");
        if (operation == 'A' || operation == 'U' || operation == 'N') timeOut = 5;
    }
    else if (errorCode == kDNSServiceErr_NameConflict)
    {
        NS_debug("Name in use, please choose another\n");
        exit(-1);
    }
    else
        NS_debug("Error %d\n", errorCode);

    if (!(flags & kDNSServiceFlagsMoreComing))
        fflush(stdout);
}


void bonjour_check(void) {

    if ( ! tcpclient ) {
        return;
    }
    int dns_sd_fd  = DNSServiceRefSockFD(tcpclient   );
    // int dns_sd_fd2 = client_pa ? DNSServiceRefSockFD(client_pa) : -1;
    int nfds = dns_sd_fd + 1;
    fd_set readfds;
    struct timeval tv;
    int result;

    // if (dns_sd_fd2 > dns_sd_fd) nfds = dns_sd_fd2 + 1;

    // while (!stopNow)
    // 	{
    // 1. Set up the fd_set as usual here.
    // This example client has no file descriptors of its own,
    // but a real application would call FD_SET to add them to the set here
    FD_ZERO(&readfds);

    // 2. Add the fd for our client(s) to the fd_set
    FD_SET(dns_sd_fd , &readfds);
    // if (client_pa) FD_SET(dns_sd_fd2, &readfds);

    // 3. Set up the timeout.
    tv.tv_sec  = timeOut;
    tv.tv_sec = 0;
    tv.tv_usec = 0;

    result = select(nfds, &readfds, (fd_set*)NULL, (fd_set*)NULL, &tv);
    if (result > 0) {
        DNSServiceErrorType err = kDNSServiceErr_NoError;
        if      (FD_ISSET(dns_sd_fd , &readfds)) err = DNSServiceProcessResult(tcpclient   );
        // else if (client_pa && FD_ISSET(dns_sd_fd2, &readfds)) err = DNSServiceProcessResult(client_pa);
        if (err) {
            NS_debug("DNSServiceProcessResult returned %d\n", err);
            // stopNow = 1;
        }
    }
    else if (result == 0) {
        // NS_debug("select() returned 0, timer expired!?\n");
    }
    else
    {
        NS_debug("select() returned %d errno %d %s\n", result, errno, strerror(errno));
        // if (errno != EINTR) stopNow = 1;
    }
    // }
}
#endif

char DataDir[MAX_PATH];

//========================================================================
int main(int argc, char **argv ) {

	int		argv_x = 50;
	int		argv_y = 50;
	int		argv_w = 800;
	int		argv_h = 600;

	char buff[MAX_PATH];
	size_t requiredSize;

	int ret = getenv_s(&requiredSize, DataDir, sizeof(DataDir), "LOOPYCAM_DATADIR");
	if (ret != 0 || requiredSize <= 0) {
        NS_debug("LOOPYCAM_DATADIR needs to be set!\n");
        exit(1);
	}
    if (SetCurrentDirectory(DataDir) == FALSE) {
        NS_debug("Unable to change directory to LOOPYCAM_DATADIR! (%s)\n",DataDir);
        exit(1);
    }

	ret = getenv_s(&requiredSize, buff, sizeof(buff), "LOOPYCAM_INDEX");
    if (ret != 0 || requiredSize <= 0) {
        NS_debug("LOOPYCAM_INDEX needs to be set!\n");
        exit(1);
    }

	int camindex;
	int i = sscanf(buff,"%d",&camindex);
	if ( i == 1 ) {
		extern int camera_index;
		camera_index = camindex;
		NS_debug("LOOPYCAM_INDEX is %d\n", camera_index);
	}

	for ( int n=1; n<argc; n++ ) {
		printf("ARG n=%d s=%s\n",n,argv[n]);
		if ( strcmp(argv[n],"-w") == 0 && (n+1)<argc ) {
			int x, y, w, h;
			int i = sscanf(argv[n+1],"%d,%d,%d,%d",&x,&y,&w,&h);
			if ( i == 4 ) {
				argv_x = x;
				argv_y = y;
				argv_w = w;
				argv_h = h;
			}
			n++;
		}
	}
	NS_debug("argv_* values are %d,%d,%d,%d\n", argv_x, argv_y, argv_w, argv_h);

    NetworkInitializer networkInitializer_;

    uint16_t udpPort = 4444;
    uint16_t tcpPort = 4444;

	Opaque16 udpregisterPort = { { (unsigned char)(udpPort >> 8), (unsigned char)(udpPort & 0xFF) } };

    LoopycamOsc = new LoopyOsc("localhost",udpPort);
    LoopycamOsc->Listen();

    http_init(8888, 60);

    DNSServiceErrorType err;
    Opaque16 tcpregisterPort = { { (unsigned char)(tcpPort >> 8), (unsigned char)(tcpPort & 0xFF) } };

    static const char TXT[] = "\xC" "First String" "\xD" "Second String" "\xC" "Third String";

    err = DNSServiceRegister(&tcpclient, 0, opinterface,
    "TCPFFFF", "_looper._tcp", "", NULL, tcpregisterPort.NotAnInteger,
    sizeof(TXT)-1, TXT, tcpreg_reply, NULL);

    if ( err ) {
        NS_debug("Error in DNSServiceRegister, err=%ld\n",(long int) err);
    }

    err = DNSServiceRegister(&udpclient, 0, opinterface,
    "UDPFFFF", "_looper._udp", "", NULL, udpregisterPort.NotAnInteger,
    sizeof(TXT)-1, TXT, udpreg_reply, NULL);

    if ( err ) {
        NS_debug("Error in DNSServiceRegister, err=%ld\n",(long int) err);
    }

    non_of_init(argv_x,argv_y,argv_w,argv_h);
    non_of_loop();

    LoopycamOsc->UnListen();
    exit(0);
}

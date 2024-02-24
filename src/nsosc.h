#ifndef NSOSC_H
#define NSOSC_H

#define _USE_MATH_DEFINES

#include "winsock.h"
#include "osc/OscReceivedElements.h"
#include <math.h>

#define SLIP_END 192
#define SLIP_ESC 219
#define SLIP_ESC2 221

#define IS_SLIP_END(c) (((c)&0xff)==SLIP_END)
#define IS_SLIP_ESC(c) (((c)&0xff)==SLIP_ESC)
#define IS_SLIP_ESC2(c) (((c)&0xff)==SLIP_ESC2)

#define NTHEVENTSERVER_PORT 1384
// Every so many milliseconds, we re-register with the Nth Server
#define NTHEVENTSERVER_REREGISTER_MILLISECONDS 3000

// typedef void (*OscMessageProcessor)( const osc::ReceivedMessage& m, struct sockaddr_in *sin);
void debugOscMessage(const osc::ReceivedMessage& m);

#define RAD2DEG(r) ((r)*360.0/(2.0*M_PI))
#define PI2 ((float)(2.0*M_PI))

void NS_debug(char *fmt, ...);

int SendToNthServer(char *serverhost, int serverport, const char *data, int leng);

class OscMessageProcessor {
public:
	virtual void ProcessOscMessage( const osc::ReceivedMessage& m) = 0;
};

class NSosc {

public:
	NSosc (char *host = "localhost", int oscport = 0, OscMessageProcessor* p = 0);
	~NSosc ();

	void ProcessOscBundle( const osc::ReceivedBundle& b);

	virtual int Listen() = 0;
	virtual void Check() = 0;
	virtual void UnListen() = 0;

protected:

	int _myport;
	char *_myhost;
	int _enabled;
	OscMessageProcessor* _process;
};

class NSoscUDP : public NSosc {

public:
	NSoscUDP(char *host, int port, OscMessageProcessor* p) : NSosc(host,port,p) {
		_s = INVALID_SOCKET;
	}
	~NSoscUDP() {
		if ( _s != INVALID_SOCKET ) {
			NS_debug("HEY!  _info._s is still set in NSosc destructor!?");
		}
	}
	int Listen();
	void Check();
	void UnListen();

private:
	SOCKET _s;
};

class NSoscTCP : public NSosc {

public:
	NSoscTCP(char *host, int port, OscMessageProcessor* p) : NSosc(host,port,p) {
		_oscmsg = new TCP::cSocket::cMemory(128);
	}

	int Listen();
	void Check();
	void UnListen();

private:
	void ProcessBytes(	TCP::cSocket::cMemory* buff);
	int ProcessOneOscMessage( TCP::cSocket::cMemory* buff);
	int SlipBoundaries(char *p, int leng, char** pbegin, char** pend);
	TCP::cSocket::cMemory* _oscmsg;
	TCP::cSocket mi_Socket;
};

#endif

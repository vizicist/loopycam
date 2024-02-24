#ifndef _NSOSCIT_H
#define _NSOSCIT_H

#include "nsoscit.h"
#include "osc/OscOutboundPacketStream.h"
#include "osc/OscReceivedElements.h"
#include <string>

#define MAXOSCIT 8

class OscitRegistered {
public:
	OscitRegistered(std::string h, int p) {
		host = h;
		port = p;
	}
	std::string host;
	int port;
};

extern OscitRegistered* oscit_receivers[MAXOSCIT];

void oscit_list(std::string path);
void oscit_get(std::string path);
void oscit_set_float(CFFPlugin* ff, float val);
void oscit_set_string(CFFPlugin* ff, std::string val);
void add_default_ffparams(CFFPlugin* ff, osc::OutboundPacketStream* p);
void oscit_set(std::string path, osc::ReceivedMessage::const_iterator& arg, int nargs, const char *types);
void oscit_ffgl_set_float(FFGLPluginInstance* ffgl, float val);
void oscit_ffgl_set_string(FFGLPluginInstance* ffgl, std::string val);

OscitRegistered* oscit_register(std::string hostname, int port);

#endif

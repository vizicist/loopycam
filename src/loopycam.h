#ifndef _LOOPYCAM_H
#define _LOOPYCAM_H

#define TJTHACK 1
#define VIDEO_FROM_OF 0
#define USE_OF 0

#include "looper.h"
#include "FFPlugin.h"
#include "FreeFrame.h"

// #define USE_SPOUT 1
#ifdef USE_SPOUT
#include "spout.h"
#endif

#include <FFGLFBO.h>
#include "FFGLPluginInstance.h"
#include "FFDebugMessage.h"

// #include "nsosc.h"

// listen on port 8888
#define PORT 8888
#define NUM_MSG_STRINGS 20

#define PLUGIN_DISABLED 0
#define PLUGIN_PRE_LOOPER 1
#define PLUGIN_POST_LOOPER 2
#define MAXPLUGINS 150

#define NPREPLUGINS 3
#define NPOSTPLUGINS 3
#define NPOST2PLUGINS 5
#define NPOST2VISIBLEPLUGINS 3

extern int nffglplugins;
extern int nffplugins;

extern CFFPlugin *preplugins[NPREPLUGINS];
extern CFFPlugin *postplugins[NPOSTPLUGINS];
extern FFGLPluginInstance *post2plugins[NPOST2PLUGINS];
extern FFGLPluginInstance *ffglplugins[MAXPLUGINS];
extern CFFPlugin *ffplugins[MAXPLUGINS];

extern FFGLPluginInstance* post2trails;
extern FFGLPluginInstance* post2flip;
// extern int fliph;
// extern int flipv;

int FFGLinit(int x, int y, int w, int h);
int FFGLinit2();
void socket_check();
void bonjour_check();

extern int		currmode;
extern int		_shape;
extern Looper *	looper;
extern int 		camWidth;
extern int 		camHeight;
extern int		ffWidth;
extern int		ffHeight;
extern int		CV_interp;
void loadffplugin(std::string fn);
CFFPlugin* findffplugin(std::string nm);
FFGLPluginInstance * findffglplugin(std::string nm);
CFFParameterStruct* findffparam(CFFPlugin* ff, std::string nm);
void scanplugins();
void non_of_init(int x, int y, int w, int h);
void non_of_loop();

void joyinit(int millipoll);
void joyrelease();
void joycheck();
void joyanalog(int jn, int axis, int v);
void joybutton(int jn, int jb, int v);

int loopyloop();

void http_init(int port, int timeout);
void http_check();
void http_send(char *s);
void http_sendto_slip(char *host, int port, const char *data, int size);

#endif

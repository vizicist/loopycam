#include "Socket.h"

#include "NSosc.h"

#include "loopycam.h"

#include "loopyosc.h"

#include <iostream>
#include <sstream>
#include <string>

#include "nsoscit.h"

void LoopyOsc::ProcessOscMessage( const osc::ReceivedMessage& m) {

    const char* addr = m.AddressPattern();
    std::string addrstr(addr);

    osc::ReceivedMessage::const_iterator arg = m.ArgumentsBegin();
    const char *types = m.TypeTags();
    // const char *pt = types;
    int nargs = 0;

    if ( types != NULL ) {
        nargs = strlen(types);
    }

    if ( addrstr == "/.register" ) {
        if ( nargs > 0 && *types == 'i' ) {
            int port = (arg++)->AsInt32();
            oscit_register("localhost",port);
        } else {
            NS_debug("Bad /.register message!");
        }
        return;
    }
    if ( addrstr == "/.list" ) {
        const char *path;
        if ( nargs > 0 ) {
            path = (arg++)->AsString();
        } else {
            path = "";
        }
        oscit_list(path);
        return;
    }
	if ( addrstr.find("/looper/") == 0 ) {
		looper->processosc(addrstr,types,nargs,arg);
		return;
	}
    if ( addrstr.substr(0,2) != "/." ) {
        if ( nargs == 0 ) {
            oscit_get(addrstr);
        } else {
            oscit_set(addrstr,arg,nargs,types);
        }
        return;
    }
#if 0
    if ( strcmp(addr,"/tuio/25Dcur") == 0 ) {
#ifdef OLDSTUFF
        int id = (arg++)->AsInt32();
        float x = (arg++)->AsFloat();
        float y = (arg++)->AsFloat();
        float z = (arg++)->AsFloat();
#endif
        NS_debug("25Dcur, not implemented\n");
        debugOscMessage(m);
        return;
    }
#endif

#if 0
    } else if ( strcmp(addr,"/looper/loadplugin" ) == 0 ) {
        std::string dll = (arg++)->AsString();
        loadffplugin(dll);
    } else if ( strcmp(addr,"/looper/preplugin" ) == 0 ) {
        int pnum = (arg++)->AsInt32();
        std::string nm = (arg++)->AsString();
        CFFPlugin* ff;
        if ( (ff=findffplugin(nm)) == NULL ) {
            printf("Unable to find plugin nm=%s\n",nm.c_str());
            return;
        }
        // printf("Found plugin nm=%s\n",nm.c_str());
        if ( pnum < NPREPLUGINS ) {
            NS_debug("SETTING preplugin %d to %s\n",pnum,ff->name.c_str());
            preplugins[pnum] = ff;
        }
    } else if ( strcmp(addr,"/looper/postplugin" ) == 0 ) {
        int pnum = (arg++)->AsInt32();
        std::string nm = (arg++)->AsString();
        CFFPlugin* ff;
        if ( (ff=findffplugin(nm)) == NULL ) {
            printf("Unable to find plugin nm=%s\n",nm.c_str());
            return;
        }
        // printf("Found plugin nm=%s\n",nm.c_str());
        if ( pnum < NPREPLUGINS ) {
            NS_debug("SETTING postplugin %d to %s\n",pnum,ff->name.c_str());
            postplugins[pnum] = ff;
        }
    } else if ( strcmp(addr,"/looper/pluginparam" ) == 0 ) {
        const char * nm = (arg++)->AsString();
        const char * param = (arg++)->AsString();
        float v = (arg++)->AsFloat();
        printf("PARAM plugin=%s param=%s val=%f\n",nm,param,v);
        CFFPlugin* p;
        if ( (p=findffplugin(nm)) == NULL ) {
            printf("Unable to find plugin nm=%s\n",nm);
            return;
        }
        p->setparam(param,v);
    } else {
#ifdef FULL_DEBUG
        // unrecognized message: display on the bottom of the screen
        std::ostringstream msg_string;
        msg_string << "addr:" << addr;
        for ( ; *pt!='\0'; pt++ ) {
            switch (*pt) {
            case 'i':
                msg_string << " int:" << (arg++)->AsInt32();
                break;
            case 'f':
                msg_string << " float:" << (arg++)->AsFloat();
                break;
            case 's':
                msg_string << " string:" << (arg++)->AsString();
                break;
            case 'b':
                arg++;
                msg_string << " blob:???";
                break;
            default:
                arg++;
                msg_string << " unknown";
                break;
            }
        }
        NS_debug("Unrecognized OSC message = %.1024s\n",msg_string.str().c_str());
#else
        NS_debug("Unrecognized OSC message = %.1024s\n",addr);
#endif


    }
#endif
}

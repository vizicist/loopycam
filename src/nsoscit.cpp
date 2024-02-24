#include "Socket.h"

#include "NSosc.h"

#include "loopycam.h"

#include "loopyosc.h"

#include <iostream>
#include <sstream>
#include <string>

#include "nsoscit.h"
#include "osc/OscOutboundPacketStream.h"
#include "osc/OscReceivedElements.h"

int oscit_nreceivers = 0;
OscitRegistered* oscit_receivers[MAXOSCIT];


int
grab_path_name(std::string path, char *prefix, std::string& name)
{
    if ( path.find(prefix) == 0 ) {
        int len = strlen(prefix);
        name = path.substr(len);
        return 1;
    }
    return 0;
}

void
oscit_register_reply(OscitRegistered* r)
{
    char buffer[1024];
    osc::OutboundPacketStream p( buffer, sizeof(buffer) );
    p << osc::BeginMessage("/.reply") << "/.register" << osc::EndMessage;
    SendToUDPServer(r->host,r->port, p.Data(), (int)p.Size());
    SendToSLIPServer(r->host,r->port, p.Data(), (int)p.Size());
}


OscitRegistered*
oscit_register(std::string hostname, int port) {

	OscitRegistered* r;

    for ( int n=0; n<oscit_nreceivers; n++ ) {
        if ( hostname == oscit_receivers[n]->host ) {
            NS_debug("HOST already registered: %s\n",hostname.c_str());
            r = oscit_receivers[n];
			goto getout;
        }
    }
    r = new OscitRegistered(hostname,port);
    oscit_receivers[oscit_nreceivers++] = r;
getout:
    oscit_register_reply(r);
	return r;
}

void
oscit_broadcast(osc::OutboundPacketStream p)
{
    for ( int n=0; n<oscit_nreceivers; n++ ) {
        std::string host = oscit_receivers[n]->host;
        int port = oscit_receivers[n]->port;
        SendToUDPServer(host, port, p.Data(), (int)p.Size());
        SendToSLIPServer(host, port, p.Data(), (int)p.Size());
    }
}

void
oscit_dump(CFFPlugin* ff)
{
    char buffer[1024];
    osc::OutboundPacketStream p( buffer, sizeof(buffer) );

    for ( int n=0; n<nffplugins; n++ ) {
        p.Clear();
        CFFPlugin* ff = ffplugins[n];
        char ffn[100];
        sprintf_s(ffn,sizeof(ffn),"/ffff/ff/%s/current",ff->name.c_str());
        p << osc::BeginMessage(ffn);
        add_default_ffparams(ff,&p);
        p << osc::EndMessage;
        oscit_broadcast(p);
    }
}

void
oscit_list(std::string path)
{
    NS_debug("oscit_list path=%s\n",path.c_str());
    char buffer[1024];
    // NS_debug("RegisterWithServer, serverport=%d myport=%d",serverport, myport);
    osc::OutboundPacketStream p( buffer, sizeof(buffer) );
    char buff[8];

    if ( path == "" ) {
        p << osc::BeginMessage( "/.reply" )  << "/.list" << path.c_str();
        p = p << "ff";
        p = p << "ffgl";
        p = p << "loop";
    } else if ( path == "/ffff/ff" ) {
        p << osc::BeginMessage( "/.reply" )  << "/.list" << path.c_str();
        for ( int n=0; n<nffplugins; n++ ) {
            p = p << ffplugins[n]->name.c_str();
        }
    } else if ( path == "/ffff/ffgl" ) {
        p << osc::BeginMessage( "/.reply" )  << "/.list" << path.c_str();
        for ( int n=0; n<nffglplugins; n++ ) {
            p = p << ffglplugins[n]->name.c_str();
        }
    } else if ( path == "/ffff/preff" ) {
        p << osc::BeginMessage( "/.reply" )  << "/.list" << path.c_str();
        for ( int n=0; n<NPREPLUGINS; n++ ) {
            sprintf_s(buff,sizeof(buff),"%d",n);
            p = p << buff;
        }
    } else if ( path == "/ffff/postff" ) {
        p << osc::BeginMessage( "/.reply" )  << "/.list" << path.c_str();
        for ( int n=0; n<NPOSTPLUGINS; n++ ) {
            sprintf_s(buff,sizeof(buff),"%d",n);
            p = p << buff;
        }
    } else if ( path == "/ffff/postffgl" ) {
        p << osc::BeginMessage( "/.reply" )  << "/.list" << path.c_str();
        for ( int n=0; n<NPOST2VISIBLEPLUGINS; n++ ) {
            sprintf_s(buff,sizeof(buff),"%d",n);
            p = p << buff;
        }
    }
#if 0
    else if ( path.find("/ffff/preff/") == 0 ) {
        std::string rest = path.substr(12);
        int slash = rest.find("/");
        if ( slash >= 0 ) {
            p << osc::BeginMessage("/.error") << "404" << path.c_str();
        } else {
            p << osc::BeginMessage( "/.reply" )  << "/.list" << path.c_str();
            p = p << "current";
            p = p << "default";
        }
    }
#endif
    else {
        p << osc::BeginMessage("/.error") << "404" << path.c_str();
    }
    p = p << osc::EndMessage;
    oscit_broadcast(p);
}

void
oscit_set(std::string path, osc::ReceivedMessage::const_iterator& arg, int nargs, const char *types) {

    // char buffer[1024];
    // osc::OutboundPacketStream p( buffer, sizeof(buffer) );

    const char *pt = types;
	NS_debug("oscit_set path=%s",path);
    std::string name;
    if ( grab_path_name(path,"/ffff/ff/",name) ) {
        CFFPlugin* ff = findffplugin(name);
        if ( ff == NULL ) {
            NS_debug("oscit_set DIDN'T FIND plugin=%s",name.c_str());
            // p << osc::BeginMessage("/.error") << "404" << path.c_str();
        } else {
            // p << osc::BeginMessage( path.c_str());
            // add_current_ffparams(ff,&p);
            for ( int n=0; n<nargs; n++ ) {
                if ( *pt++ != 's' ) {
                    const float val = (arg++)->AsFloat();
                    oscit_set_float(ff,val);
                } else {
                    const char *val = (arg++)->AsString();
                    oscit_set_string(ff,std::string(val));
                }
            }
        }
	} else if ( grab_path_name(path,"/ffff/ffgl/",name) ) {
        FFGLPluginInstance* ffgl = findffglplugin(name);
        if ( ffgl == NULL ) {
            NS_debug("oscit_set DIDN'T FIND ffgl plugin=%s",name.c_str());
            // p << osc::BeginMessage("/.error") << "404" << path.c_str();
        } else {
            // p << osc::BeginMessage( path.c_str());
            // add_current_ffparams(ff,&p);
            for ( int n=0; n<nargs; n++ ) {
                if ( *pt++ != 's' ) {
                    const float val = (arg++)->AsFloat();
                    oscit_ffgl_set_float(ffgl,val);
                } else {
                    const char *val = (arg++)->AsString();
                    oscit_ffgl_set_string(ffgl,std::string(val));
                }
            }
        }
    } else if ( grab_path_name(path,"/ffff/preff/",name) ) {
        if ( *pt++ != 's' || nargs < 1 ) {
            NS_debug("Improperly formatted preff message!");
            return;
        }
        const char *plugin_name = (arg++)->AsString();
        int i = atoi(name.c_str());
        if ( i < 0 || i >= NPREPLUGINS ) {
            NS_debug("Bad index value in /ffff/preff/ message!");
            return;
        }
#if 0
        NS_debug("Should be changing preff index=%d to %s\n",
                 i,plugin_name);
#endif
        if ( strcmp(plugin_name,"None") == 0 ) {
            preplugins[i] = NULL;
        } else {
            CFFPlugin* ff = findffplugin(plugin_name);
            if ( ff == NULL ) {
                NS_debug("Bad plugin name in /ffff/preff/ message!");
                return;
            }
            preplugins[i] = ff;
        }
    } else if ( grab_path_name(path,"/ffff/postff/",name) ) {
        if ( *pt++ != 's' || nargs < 1 ) {
            NS_debug("Improperly formatted postff message!");
            return;
        }
        const char *plugin_name = (arg++)->AsString();
        int i = atoi(name.c_str());
        if ( i < 0 || i >= NPOSTPLUGINS ) {
            NS_debug("Bad index value in /ffff/postff/ message!");
            return;
        }
        // NS_debug("Should be changing postff index=%d to %s\n",
        //          i,plugin_name);
        if ( strcmp(plugin_name,"None") == 0 ) {
            postplugins[i] = NULL;
        } else {
            CFFPlugin* ff = findffplugin(plugin_name);
            if ( ff == NULL ) {
                NS_debug("Bad plugin name in /ffff/postff/ message!");
                return;
            }
            postplugins[i] = ff;
        }
    } else if ( grab_path_name(path,"/ffff/postffgl/",name) ) {
        if ( *pt++ != 's' || nargs < 1 ) {
            NS_debug("Improperly formatted postffgl message!");
            return;
        }
        const char *plugin_name = (arg++)->AsString();
        int i = atoi(name.c_str());
        if ( i < 0 || i >= NPOST2PLUGINS ) {
            NS_debug("Bad index value in /ffff/postffgl/ message!");
            return;
        }
        // NS_debug("Should be changing postffgl index=%d to %s\n",
        //          i,plugin_name);
        if ( strcmp(plugin_name,"None") == 0 ) {
            post2plugins[i] = NULL;
        } else {
            FFGLPluginInstance* ffgl = findffglplugin(plugin_name);
            if ( ffgl == NULL ) {
                NS_debug("Bad plugin name in /ffff/postffgl/ message!");
                return;
            }
            post2plugins[i] = ffgl;
        }
    } else {
        NS_debug("oscit_set DIDN'T HANDLE path=%s",path.c_str());
    }
}

void
add_default_ffparams(CFFPlugin* ff, osc::OutboundPacketStream* p)
{
    char fstr[512];

    // List all the parameters of the plugin
    for ( int i=0; i<ff->m_numparams; i++ ) {
        CFFParameterStruct* pp = &(ff->m_params[i]);
        if ( pp->type != FF_TYPE_TEXT ) {
            sprintf_s(fstr,sizeof(fstr),"%s=%lf",pp->name.c_str(),pp->default_float_val);
        } else {
            sprintf_s(fstr,sizeof(fstr),"%s=%s",pp->name.c_str(),pp->default_string_val.c_str());
        }
        (*p) << fstr;
    }
}

void
add_current_ffparams(CFFPlugin* ff, osc::OutboundPacketStream* p)
{
    char fstr[512];

    // List all the current parameters of the plugin
    for ( int i=0; i<ff->m_numparams; i++ ) {
        CFFParameterStruct* pp = &(ff->m_params[i]);
        if ( pp->type != FF_TYPE_TEXT ) {
            sprintf_s(fstr,sizeof(fstr),"%s=%lf",pp->name.c_str(),pp->current_float_val);
        } else {
            sprintf_s(fstr,sizeof(fstr),"%s=%s",pp->name.c_str(),pp->current_string_val.c_str());
        }
        (*p) << fstr;
    }
}

void
add_default_ffglparams(FFGLPluginInstance* ffgl, osc::OutboundPacketStream* p)
{
    char fstr[512];

    // List all the parameters of the plugin
    for ( int i=0; i<ffgl->m_numParameters; i++ ) {
        FFGLParameterStruct* pp = &(ffgl->m_params[i]);
        if ( pp->type != FF_TYPE_TEXT ) {
            sprintf_s(fstr,sizeof(fstr),"%s=%lf",pp->name.c_str(),pp->default_float_val);
        } else {
            sprintf_s(fstr,sizeof(fstr),"%s=%s",pp->name.c_str(),pp->default_string_val.c_str());
        }
        (*p) << fstr;
    }
}


void
oscit_get(std::string path)
{
    NS_debug("oscit_get path=%s\n",path.c_str());
    char buffer[1024];
    osc::OutboundPacketStream p( buffer, sizeof(buffer) );

    std::string name;
    if ( grab_path_name(path,"/ffff/ff/",name) ) {
        CFFPlugin* ff = findffplugin(name);
        if ( ff == NULL ) {
            p << osc::BeginMessage("/.error") << "404" << path.c_str();
        } else {
			ff->LoadCurrentParams();
            p << osc::BeginMessage( path.c_str());
            add_current_ffparams(ff,&p);
        }
        goto end_and_broadcast;
    }
    if ( grab_path_name(path,"/ffff/ffdefaults/",name) ) {
        CFFPlugin* ff = findffplugin(name);
        if ( ff == NULL ) {
            p << osc::BeginMessage("/.error") << "404" << path.c_str();
        } else {
            p << osc::BeginMessage( path.c_str());
            add_default_ffparams(ff,&p);
        }
        goto end_and_broadcast;
    }
    if ( grab_path_name(path,"/ffff/ffgl/",name) ) {
        FFGLPluginInstance* ffgl = findffglplugin(name);
        if ( ffgl == NULL ) {
            p << osc::BeginMessage("/.error") << "404" << path.c_str();
        } else {
            p << osc::BeginMessage( path.c_str());
            add_default_ffglparams(ffgl,&p);
        }
        goto end_and_broadcast;
    }
    if ( grab_path_name(path,"/ffff/ffgldefaults/",name) ) {
        FFGLPluginInstance* ffgl = findffglplugin(name);
        if ( ffgl == NULL ) {
            p << osc::BeginMessage("/.error") << "404" << path.c_str();
        } else {
            p << osc::BeginMessage( path.c_str());
            add_default_ffglparams(ffgl,&p);
        }
        goto end_and_broadcast;
    }
    if ( path.find("/ffff/preff/") == 0 ) {
        std::string s = path.substr(12);
        int pnum = atoi(s.c_str());
        if ( pnum < 0 || pnum >= NPREPLUGINS ) {
            p << osc::BeginMessage("/.error") << "404" << path.c_str();
        } else {
            p << osc::BeginMessage(path.c_str());
            CFFPlugin* ff = preplugins[pnum];
            if ( ff == NULL ) {
                p = p << "None";
            } else {
                p << ff->name.c_str();
            }
        }
        goto end_and_broadcast;
    }
    if ( path.find("/ffff/postff/") == 0 ) {
        std::string s = path.substr(13);
        int pnum = atoi(s.c_str());
        if ( pnum < 0 || pnum >= NPOSTPLUGINS ) {
            p << osc::BeginMessage("/.error") << "404" << path.c_str();
        } else {
            p << osc::BeginMessage(path.c_str());
            CFFPlugin* ff = postplugins[pnum];
            if ( ff == NULL ) {
                p = p << "None";
            } else {
                p << ff->name.c_str();
            }

        }
        goto end_and_broadcast;
    }
    if ( path.find("/ffff/postffgl/") == 0 ) {
        std::string s = path.substr(15);
        int pnum = atoi(s.c_str());
        if ( pnum < 0 || pnum >= NPOST2PLUGINS ) {
            p << osc::BeginMessage("/.error") << "404" << path.c_str();
        } else {
            p << osc::BeginMessage(path.c_str());
            FFGLPluginInstance* ffgl = post2plugins[pnum];
            if ( ffgl == NULL ) {
                p = p << "None";
            } else {
                p << ffgl->name.c_str();
            }
        }
        goto end_and_broadcast;
    }
    p << osc::BeginMessage("/.error") << "400" << path.c_str() << "Bad format";
end_and_broadcast:
    p = p << osc::EndMessage;
    oscit_broadcast(p);
}

void
oscit_set_float(CFFPlugin* ff, float val)
{
    NS_debug("NONIMPLEMENTED!! oscit_set_float ff=%s val=%lf\n",ff->name.c_str(),val);
}

void
oscit_set_string(CFFPlugin* ff, std::string val)
{
    int i = val.find("=");
    if ( i < 0 ) {
        NS_debug("No equals sign in value !?  (%s)\n",val.c_str());
        return;
    }
    std::string nm = val.substr(0,i);
    std::string v = val.substr(i+1);
    double f = atof(v.c_str());
    // NS_debug("oscit_set_string ff=%s val=%s nm=%s floatval=%lf\n",
    //          ff->name.c_str(),val.c_str(),nm.c_str(),f);
    if ( ff->setparam(nm,(float)f) == FALSE ) {
        NS_debug("ERROR in trying set set parameter!!");
    }
}

void
oscit_ffgl_set_float(FFGLPluginInstance* ffgl, float val)
{
    NS_debug("NONIMPLEMENTED!! oscit_set_float ffgl=%s val=%lf\n",ffgl->name.c_str(),val);
}

void
oscit_ffgl_set_string(FFGLPluginInstance* ffgl, std::string val)
{
    int i = val.find("=");
    if ( i < 0 ) {
        NS_debug("No equals sign in value !?  (%s)\n",val.c_str());
        return;
    }
    std::string nm = val.substr(0,i);
    std::string v = val.substr(i+1);
    double f = atof(v.c_str());

    NS_debug("oscit_ffgl_set_string ff=%s val=%s nm=%s floatval=%lf\n",
           ffgl->name.c_str(),val.c_str(),nm.c_str(),f);

    if ( ffgl->setparam(nm,(float)f) == FALSE ) {
        NS_debug("ERROR in trying set set parameter!!");
    }
}


#if 0
} else {
    std::string nm = rest.substr(0,slash);
    std::string paramtype = rest.substr(slash+1);

    CFFPlugin* ff = findffplugin(nm);
    // List all the parameters of the plugin
    if ( ff != NULL ) {
        for ( int i=0; i<ff->m_numparams; i++ ) {
            CFFParameterStruct* pp = &(ff->m_params[i]);
            p = p << pp->name.c_str();
        }
    }

}
if ( slash3 >= 0 ) {
    std::string nm = rest.substr(0,slash3);
    std::string pnm = rest.substr(slash3+1);
    p = p << "INDIVIDUALVALUE";
    CFFPlugin* ff = findffplugin(nm);
    if ( ff != NULL ) {
        CFFParameterStruct* param = findffparam(ff,pnm);
        if ( param == NULL ) {
            p = p << "NOTFOUND";
        } else {
            int pt = param->type;
            if ( pt != FF_TYPE_TEXT ) {
                p = p << param->default_float_val;
            } else {
                p = p << param->default_string_val.c_str();
            }
        }
    }
} else {
#endif

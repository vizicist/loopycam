// Copyleft 2006 Chris Korda
// This program is free software; you can redistribute it and/or modify it
// under the terms of the GNU General Public License as published by the Free
// Software Foundation; either version 2 of the License, or any later version.
/*
		chris korda

		revision history:
		rev		date	comments
		00		24jul06	initial version
		01		06nov06	call initialise and deInitialise
		02		21jan07	GetPluginPath must call ReleaseBuffer
		03		23nov07	support Unicode

		wrapper for freeframe plugin DLL

*/

// #include "stdafx.h"
#include "windows.h"
#include <string>
#include "stdio.h"
#include "FFPlugin.h"
#include "nsutil.h"

// #define VERBOSE 1

CFFPlugin::CFFPlugin()
{
    m_hInst = NULL;
    m_pff = NULL;
}

CFFPlugin::~CFFPlugin()
{
    Free();
}

bool CFFPlugin::Load(std::string Path)
{
    DWORD dwError;

    Free();
    m_hInst = LoadLibrary(Path.c_str());
    if ( m_hInst == NULL ) {
        dwError = GetLastError();
        NS_debug("LoadLibrary of %s failed, dwError = %d\n",Path.c_str(),dwError);
        return FALSE;
    }
    m_pff = (FF_Main_FuncPtr)GetProcAddress(m_hInst, "plugMain");
    if (m_pff == NULL) {
        dwError = GetLastError();
        NS_debug("Unable to get plugMain address!? path=%s dwError=%d\n",Path.c_str(),dwError);
        return(FALSE);
    }
    plugMainUnion u = m_pff(FF_INITIALISE, 0, 0);
    if ( u.ivalue == FF_SUCCESS ) {
        if ( ! LoadParams() ) {
            NS_debug("Unable to load params!?  path=%s\n",Path.c_str());
            return FALSE;
        }
        NS_debug("Successfully loaded Path=%s\n",Path.c_str());
        return TRUE;
    }
    NS_debug("Unable to initialise!? path=%s\n",Path.c_str());
    return FALSE;
}

bool CFFPlugin::setparam(std::string pnm, float v)
{
    int n;
    // const char *paramname = pnm.c_str();

    for ( n=0; n<m_numparams; n++ ) {
        CFFParameterStruct* p = &m_params[n];
        // printf("Comparing paramname=%s to p->name=%s\n",paramname,p->name);
        if ( pnm == p->name ) {
            // printf("Found parameter = %s\n",paramname);
            // if ( p->type != FF_TYPE_STANDARD ) {
            // 	printf("Unable to set non-FF_TYPE_STANDARD parameter = %s  type=%d\n",paramname,p->type);
            // 	return false;
            // }
            // NS_debug("CFFPlugin::setparam setting parameter n=%d nm=%s to v=%f, instance=%d\n",n,pnm.c_str(),v,m_instanceid);
            SetParameterStruct ps;
            ps.ParameterNumber = n;
            // ps.NewParameterValue = (DWORD) v;
            ps.u.NewFloatValue = v;
            // printf("paramstruct ps=%d fvalue=%f v=%f\n",
            //	ps.ParameterNumber,ps.NewParameterValue.fvalue,v);
            plugMainUnion u;
            u = m_pff(FF_SETPARAMETER, (DWORD)(&ps), (DWORD)m_instanceid);
            // printf("SETPARAMETER results = %d\n",u.ivalue);
            if ( u.ivalue == FF_FAIL ) {
                NS_debug("ERROR!!! SETPARAMETER of %s failed!?\n",pnm.c_str());
                return false;
            }

            // u = m_pff(FF_GETPARAMETER, (DWORD)n, (DWORD)instanceid);
            // printf("GETPARAMETER n=%d v=%f\n",n,u.fvalue);
            return true;
        }
    }
    NS_debug("Didn't find parameter pnm=%s\n",pnm.c_str());
    return false;
}

bool CFFPlugin::LoadParams()
{
    plugMainUnion u = m_pff(FF_GETNUMPARAMETERS, 0, 0);
    int np = u.ivalue;
    int n;
    m_numparams = np;
    m_params = new CFFParameterStruct[np];
    for ( n=0; n<np; n++ ) {
        CFFParameterStruct* p = &(m_params[n]);
        u = m_pff(FF_GETPARAMETERNAME, n, 0);
        memcpy(p->rawname,u.svalue,16);
        p->rawname[16] = 0;
        p->name = CopyFFString(u.svalue);

        u = m_pff(FF_GETPARAMETERTYPE, n, 0);
        p->type = u.ivalue;
        u = m_pff(FF_GETPARAMETERDEFAULT, n, 0);
        if ( p->type != FF_TYPE_TEXT ) {
            p->default_float_val = u.fvalue;
            NS_debug("Float Parameter n=%d s=%s type=%d default=%lf\n",
                     n,p->name.c_str(),p->type,p->default_float_val);
        } else {
            p->default_string_val = CopyFFString(u.svalue);
#ifdef VERBOSE
            NS_debug("String Parameter n=%d s=%s type=%d\n",n,p->name,p->type);
#endif
        }
    }

    return TRUE;
}

bool CFFPlugin::LoadCurrentParams()
{
    plugMainUnion u;
    for ( int n=0; n<m_numparams; n++ ) {
		CFFParameterStruct* p = &(m_params[n]);
        u = m_pff(FF_GETPARAMETER, n, m_instanceid);
        if ( p->type != FF_TYPE_TEXT ) {
            p->current_float_val = u.fvalue;
            NS_debug("CURRENT Float Parameter n=%d s=%s type=%d current=%lf\n",
                     n,p->name.c_str(),p->type,p->current_float_val);
        } else {
            p->current_string_val = CopyFFString(u.svalue);
        }
    }

    return TRUE;
}


int CFFPlugin::Instantiate(VideoInfoStruct *vis)
{
    plugMainUnion u = m_pff(FF_INSTANTIATE, (DWORD)vis, 0);
    if ( u.ivalue == FF_FAIL ) {
        printf("Unable to Instantiate!?\n");
        return FALSE;
    }
    // printf("SUCCESSFUL Instantiate id=%d\n",u.ivalue);
    return u.ivalue;
}


bool CFFPlugin::Free()
{
    if (m_pff != NULL) {
        plugMainUnion u = m_pff(FF_INITIALISE, 0, 0);
        m_pff = NULL;
    }
    if (m_hInst != NULL) {
        FreeLibrary(m_hInst);
        m_hInst = NULL;
        return(TRUE);
    }
    return(FALSE);
}

const PluginInfoStruct *CFFPlugin::GetInfo() const
{
    plugMainUnion u = m_pff(FF_GETINFO, 0, 0);
    return(u.PISvalue);
}

bool CFFPlugin::Process(int instanceid, unsigned char *pixels)
{
    plugMainUnion u = m_pff(FF_PROCESSFRAME, (DWORD)(pixels), instanceid);
    if ( u.ivalue == FF_FAIL )
        return FALSE;
    else
        return TRUE;
}


bool CFFPlugin::GetInfo(PluginInfoStruct& PlugInfo) const
{
    const PluginInfoStruct *pis = GetInfo();
    if (pis == NULL)
        return(FALSE);
    PlugInfo = *GetInfo();
    return(TRUE);
}


std::string CFFPlugin::GetPluginName() const
{
    const PluginInfoStruct *pis = GetInfo();
    if (pis == NULL)
        return("");
    std::string name = CopyFFString(pis->PluginName);
    return(name);
}

#if 0
bool CFFPlugin::GetPluginId(CString& Id) const
{
    const PlugInfoStruct *pis = GetInfo();
    if (pis == NULL)
        return(FALSE);
    CopyFFString(Id, GetInfo()->uniqueID, 4);
    return(TRUE);
}

int CFFPlugin::GetNumParams() const
{
    return((int)m_pff(FF_GETNUMPARAMETERS, 0, 0));
}

bool CFFPlugin::GetParamName(int ParamIdx, CString& Name) const
{
    const BYTE *p = (const BYTE *)m_pff(FF_GETPARAMETERNAME, LPVOID(ParamIdx), 0);
    if (p == NULL)
        return(FALSE);
    CopyFFString(Name, p, 16);
    return(TRUE);
}

float CFFPlugin::GetParamDefault(int ParamIdx) const
{
    plugMainUnionTag	pmu;
    pmu.ivalue = (int)m_pff(FF_GETPARAMETERDEFAULT, LPVOID(ParamIdx), 0);
    return(pmu.fvalue);
}

int CFFPlugin::GetPluginCaps(int CapsIdx) const
{
    return((int)m_pff(FF_GETPLUGINCAPS, LPVOID(CapsIdx), 0));
}

const PlugExtendedInfoStruct *CFFPlugin::GetExtendedInfo() const
{
    return((PlugExtendedInfoStruct *)m_pff(FF_GETEXTENDEDINFO, 0, 0));
}

bool CFFPlugin::GetExtendedInfo(PlugExtendedInfoStruct& PlugExtInfo) const
{
    const PlugExtendedInfoStruct *peis = GetExtendedInfo();
    if (peis == NULL)
        return(FALSE);
    PlugExtInfo = *peis;
    return(TRUE);
}

int CFFPlugin::GetParamType(int ParamIdx) const
{
    return((int)m_pff(FF_GETPARAMETERTYPE, LPVOID(ParamIdx), 0));
}

bool CFFPlugin::GetPluginPath(CString& Path) const
{
    if (IsLoaded()) {
        LPTSTR	buf = Path.GetBuffer(MAX_PATH);
        bool	retc = GetModuleFileName(m_hInst, buf, MAX_PATH) != 0;
        Path.ReleaseBuffer();
        return(retc);
    }
    Path.Empty();
    return(TRUE);
}
#endif


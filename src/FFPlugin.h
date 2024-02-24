// Copyleft 2006 Chris Korda
// This program is free software; you can redistribute it and/or modify it
// under the terms of the GNU General Public License as published by the Free
// Software Foundation; either version 2 of the License, or any later version.
/*	
		chris korda

		revision history:
		rev		date	comments
		00		24jul06	initial version
		01		23nov07	support Unicode

		wrapper for freeframe plugin DLL

*/

#ifndef CFFPLUGIN_INCLUDED
#define CFFPLUGIN_INCLUDED

#include "FreeFrame.h"

std::string CopyFFString(const char *src);

typedef struct CFFParameterStructTag {
	char rawname[17];
	std::string name;
	int num;
	int type;
	float default_float_val;
	std::string default_string_val;
	float current_float_val;
	std::string current_string_val;

} CFFParameterStruct;

class CFFPlugin {
public:
// Construction
	CFFPlugin();
	~CFFPlugin();
	bool	Load(std::string Path);
	bool	Free();
	bool	LoadParams();
	bool	LoadCurrentParams();
	bool	Process(int instanceid, unsigned char *pixels);

// Attributes
	bool	IsLoaded() const;
	const	PluginInfoStruct *GetInfo() const;
	bool	GetInfo(PluginInfoStruct& PlugInfo) const;
	int		Instantiate(VideoInfoStruct *vis);
	std::string	GetPluginName() const;
#if 0
	bool	GetPluginId(CString& Id) const;
	int		GetNumParams() const;
	bool	GetParamName(int ParamIdx, CString& Name) const;
	float	GetParamDefault(int ParamIdx) const;
	int		GetPluginCaps(int CapsIdx) const;
	bool	GetExtendedInfo(PlugExtendedInfoStruct& PlugExtInfo) const;
	const	PlugExtendedInfoStruct *GetExtendedInfo() const;
	int		GetParamType(int ParamIdx) const;
	bool	GetPluginPath(CString& Path) const;
#endif

	std::string name;
	std::string m_dll;
	int m_instanceid;
	bool setparam(std::string pnm, float v);
	FF_Main_FuncPtr	m_pff;	// pointer to the plugin's main function
	int m_numparams;
	CFFParameterStruct *m_params;

protected:
// Member data
	HINSTANCE	m_hInst;	// instance handle of the plugin's DLL




// Helpers
#if 0
	static	void	CopyFFString(CString& dst, const BYTE *src, DWORD len);
#endif

// Friends
	friend class CFFInstance;
};

inline bool CFFPlugin::IsLoaded() const
{
	return(m_pff != NULL);
}

#endif

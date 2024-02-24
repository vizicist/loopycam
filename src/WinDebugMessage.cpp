#include <windows.h>
#include <stdio.h>

void NS_debug(char *fmt, ...);

void FFDebugMessage(const char *_msg)
{
    NS_debug("FFDebugMessage: %s",_msg);
}
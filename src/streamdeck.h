#ifndef LOOPYCAM_STREAMDECK_H
#define LOOPYCAM_STREAMDECK_H

void streamdeck_init();
void streamdeck_check();
void streamdeck_shutdown();
bool streamdeck_connected();
const char* streamdeck_mode_name();

#endif

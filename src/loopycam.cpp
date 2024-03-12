

#include "Socket.h"
#include "nsosc.h"
#include "loopyosc.h"
#include "loopycam.h"

LoopyOsc* LoopycamOsc;
// #include "looper.h"
#include "Timer.h"
#include "ofxMSAShape3D.h"

int nffplugins;
CFFPlugin *ffplugins[MAXPLUGINS];
int nffglplugins;
FFGLPluginInstance *ffglplugins[MAXPLUGINS];
int CV_interp = CV_INTER_NN;  // or CV_INTER_LINEAR

CFFPlugin *preplugins[NPREPLUGINS];
CFFPlugin *postplugins[NPOSTPLUGINS];
FFGLPluginInstance *post2plugins[NPOST2PLUGINS];

FFGLPluginInstance* post2trails;
FFGLPluginInstance* post2flip;
// int flipv = 1;ff
// int fliph = 1;

int camera_index = 4;

void scanffglplugins2();
void scanffglplugins1();
int do_ffgl_plugin(FFGLPluginInstance* plugin1, int lastone);

#include "cv.h"
#include "highgui.h"
CvCapture* capture;

// int				mouseX, mouseY;
// string			mouseButtonState;
int					currmode;
int					_shape;
Looper *			looper;
int 				camWidth;
int 				camHeight;
int					ffWidth = 640;   // was 720
int					ffHeight = 480;
// int					ffglWidth = 800;
// int					ffglHeight = 600;

std::string CopyFFString(const char *src)
{
    // src should be fixed-length, but it might be null-terminated instead
    char buff[17];
    memcpy(buff, src, 16);
    buff[16] = 0;
    return std::string(buff);
}

BOOL CreateOpenGLWindow(int x, int y, int w, int h);
int g_first = 1;
HWND g_hwnd = 0;
HINSTANCE g_hinst; // the process/application "instance"
HGLRC     g_glrc;  // the opengl rendering context
Timer *timer;
FFGLTextureStruct mapTexture;
int fboWidth;
int fboHeight;
FFGLExtensions glExtensions;
FFGLFBO fbo1;
FFGLFBO fbo2;
FFGLFBO* fbo_input;
FFGLFBO* fbo_output;
unsigned char *mapData;
FFGLViewportStruct fboViewport;
FFGLViewportStruct windowViewport;
double curFrameTime = 0.0;

#ifdef USE_SPOUT
SpoutSender _mySender;
#endif

//this flag is used to tell the application to free gl resources and exit
int  g_wantToClose = 0;
float mouseX = 0.5;
float mouseY = 0.5;
int mouseB = 0;

void non_of_init(int x, int y, int w, int h) {

	// int ncams = cvGetCamerasCount();
    // NS_debug("There are %d cameras!\n",ncams);
    capture = cvCaptureFromCAM(camera_index);
    if ( !capture ) {
        NS_debug("Unable to initialize capture from camera index=%d\n",camera_index);
        exit(1);
    }

#define CV_CAP_PROP_FRAME_WIDTH    3
#define CV_CAP_PROP_FRAME_HEIGHT   4

    /* retrieve or set capture properties */
    double fwidth = cvGetCaptureProperty( capture, CV_CAP_PROP_FRAME_WIDTH );
    double fheight = cvGetCaptureProperty( capture, CV_CAP_PROP_FRAME_HEIGHT );

    camWidth = (int)fwidth;
    camHeight = (int)fheight;

    char curdir[MAX_PATH];
    int r = GetCurrentDirectory(MAX_PATH, curdir);
    if ( r == 0 ) {
        NS_debug("Unable to get current directory!\n");
		exit(1);
    }

    NS_debug("CAMERA CV says width=%d height=%d curdir=%s\n",camWidth,camHeight,curdir);

    FFGLinit(x,y,w,h);
    FFGLinit2();

    mouseX = 0;
    mouseY = 0;

    nffplugins = 0;
    // loadplugins();
    scanplugins();
    NS_debug("After scanplugins, nffplugins=%d\n",nffplugins);
    NS_debug("After scanplugins 1, nffglplugins=%d\n",nffglplugins);

    for ( int n=0; n<NPREPLUGINS; n++ ) {
        preplugins[n] = 0;
    }
    for ( int n=0; n<NPOSTPLUGINS; n++ ) {
        postplugins[n] = 0;
    }
    for ( int n=0; n<NPOST2PLUGINS; n++ ) {
        post2plugins[n] = 0;
    }

	// tjt_check();

    // FFGLPluginInstance* p1blur = findffglplugin("Flip");
    // FFGLPluginInstance* p1posterize = findffglplugin("RGBA Switch");
    FFGLPluginInstance* p1posterize = findffglplugin("Shift RGB");
    post2trails = findffglplugin("Trails");  // Parameters are Opacity (0.9-ish) and Mode (0).
    post2flip = findffglplugin("Flip");  // Parameters are Horizontal and Vertical.

	if ( post2trails == NULL || post2flip == NULL ) {
		printf("Can't find Trails and/or Flip plugin - are you in the right directory?\n");
		exit(0);
	}

    post2plugins[0] = p1posterize;

	post2plugins[3] = post2trails;
	post2plugins[4] = post2flip;

#if 0
    CFFPlugin *ff = findffplugin("Glow");
    postplugins[0] = ff;
    ff = findffplugin("Frame_Echo");
    postplugins[1] = ff;
#endif

    currmode = 0;
    _shape = 0;

    looper = new Looper(ffWidth,ffHeight);

	looper->_set_fliph(false);
	looper->_set_flipv(true);
}

CFFPlugin *
findffplugin(std::string nm) {
    for ( int n=0; n<nffplugins; n++ ) {
        if ( ffplugins[n]->name == nm ) {
            return ffplugins[n];
        }
    }
    return NULL;
}

FFGLPluginInstance *
findffglplugin(std::string nm) {
    for ( int n=0; n<nffglplugins; n++ ) {
        if ( ffglplugins[n]->name == nm ) {
            return ffglplugins[n];
        }
    }
    return NULL;
}

CFFParameterStruct *
findffparam(CFFPlugin* ff, std::string nm) {
    // NS_debug("findffparam LOOKING FOR nm=%s\n",nm.c_str());
    for ( int i=0; i<ff->m_numparams; i++ ) {
        CFFParameterStruct* pp = &(ff->m_params[i]);
        if ( pp->name == nm ) {
            return pp;
        }
    }
    return NULL;
}

void loadffplugin(std::string dllnm)
{
    CFFPlugin *ffplugin = new CFFPlugin();
    std::string dir = "ffplugins";
    std::string dll_fname = dir + "/" + dllnm;
    // NS_debug("Trying to load %s\n",dll_fname.c_str());

    if ( ! ffplugin->Load(dll_fname) ) {
        NS_debug("Unable to load %s\n",dll_fname.c_str());
    } else {
        NS_debug("LOADED! %s\n",dll_fname.c_str());
        ffplugin->m_dll = dllnm;
        ffplugin->name = ffplugin->GetPluginName();
        const PluginInfoStruct *pi = ffplugin->GetInfo();
        // printf("pi version = %d %d\n",pi->APIMajorVersion,pi->APIMinorVersion);
        char nm[17];
        memcpy(nm,pi->PluginName,16);
        nm[16] = 0;
        // printf("pi name = %s\n",nm);
        VideoInfoStruct vis = {(DWORD)ffWidth,(DWORD)ffHeight,FF_DEPTH_24,FF_ORIENTATION_TL};
        int i = ffplugin->Instantiate(&vis);

        ffplugins[nffplugins] = ffplugin;
        ffplugin->m_instanceid = i;
        // printf("INSTANTIATED!  dll=%s name=%s instanceid = %d\n",dll.c_str(),nm,i);

        plugMainUnion u = ffplugin->m_pff(FF_GETPARAMETER, (DWORD)0, (DWORD)ffplugin->m_instanceid);
        // printf("GETPARAMETER ZERO = %f\n",u.fvalue);

        nffplugins++;
    }
}

void loadffglplugin1(std::string dllnm)
{
    FFGLPluginInstance *plugin = FFGLPluginInstance::New();

    std::string dir = "ffglplugins";
    std::string dll_fname = dir + "/" + dllnm;
    // NS_debug("Trying to load %s\n",dll_fname.c_str());

    const char *dll = dll_fname.c_str();
    if ( plugin->Load(dll) == FF_FAIL ) {
        NS_debug("Unable to load %s\n",dll);
    } else {
        plugin->m_dll = dllnm;
        plugin->name = plugin->GetPluginName();

        ffglplugins[nffglplugins] = plugin;
        // plugin->instanceid = i;

        // plugMainUnion u = plugin->m_ffPluginMain(FF_GETPARAMETER, (DWORD)0, (DWORD)plugin->instanceid);

        nffglplugins++;
    }
    return;
}

void scanplugins()
{
    WIN32_FIND_DATA ffd;
    LARGE_INTEGER filesize;
    // char ws[MAX_PATH];

    HANDLE hFind = INVALID_HANDLE_VALUE;
    DWORD dwError=0;
    int nfound = 0;
    LPCTSTR path;

    nffplugins = 0;

    path = "ffplugins\\*";
    hFind = FindFirstFile(path, &ffd);

    if (INVALID_HANDLE_VALUE == hFind)
    {
        // NS_debug("FindFirstFile");
        return;
    }
    do {
        if (ffd.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) {
            // NS_debug("  %s   <DIR>\n", ffd.cFileName);
        }
        else {
            filesize.LowPart = ffd.nFileSizeLow;
            filesize.HighPart = ffd.nFileSizeHigh;
            // _tprintf(TEXT("  %s   %ld bytes\n"), ffd.cFileName, filesize.QuadPart);

            loadffplugin(ffd.cFileName);
        }
    }
    while (FindNextFile(hFind, &ffd) != 0);

    dwError = GetLastError();
    if (dwError != ERROR_NO_MORE_FILES) {
        // NS_debug("FindFirstFile");
    }

    FindClose(hFind);
}

void scanffglplugins1()
{
    WIN32_FIND_DATA ffd;
    LARGE_INTEGER filesize;
    char ws[MAX_PATH];

    HANDLE hFind = INVALID_HANDLE_VALUE;
    DWORD dwError=0;
    int nfound = 0;
    LPCTSTR path;

    nffglplugins = 0;

    path = "ffglplugins\\*";

    hFind = FindFirstFile(path, &ffd);

    if (INVALID_HANDLE_VALUE == hFind)
    {
        // NS_debug("FindFirstFile");
        return;
    }
    do {
        if (ffd.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) {
            // NS_debug("  %s   <DIR>\n", ffd.cFileName);
        }
        else {
            filesize.LowPart = ffd.nFileSizeLow;
            filesize.HighPart = ffd.nFileSizeHigh;
            // _tprintf(TEXT("  %s   %ld bytes\n"), ffd.cFileName, filesize.QuadPart);
            loadffglplugin1(ffd.cFileName);
        }
    }
    while (FindNextFile(hFind, &ffd) != 0);

    dwError = GetLastError();
    if (dwError != ERROR_NO_MORE_FILES) {
        // NS_debug("FindFirstFile");
    }

    FindClose(hFind);
}

void scanffglplugins2()
{
    for ( int n=0; n<nffglplugins; n++ ) {
        FFGLPluginInstance* plugin = ffglplugins[n];
        if (plugin->InstantiateGL(&fboViewport)!=FF_SUCCESS) {
            NS_debug("InstantiateGL of %s failed",plugin->m_dll.c_str());
        } else {
            NS_debug("InstantiateGL of %s worked!\n",plugin->m_dll.c_str());
        }
    }
}

void non_of_loop() {

	int n=0;
    while ( 1 ) {
	    LoopycamOsc->Check();
	    http_check();
#ifdef DO_BONJOUR
        bonjour_check();
#endif
		// tjt_check();
        if ( loopyloop() == 0 ) {
            break;
        }
    }
}

const char *ffglplugin_fname(const char *fn)
{
    static char fname[256];
    sprintf_s(fname,sizeof(fname),"ffglplugins/%s",fn);
    return fname;
}


int FFGLinit(int x, int y, int w, int h)
{
    scanffglplugins1();

    if (!CreateOpenGLWindow(x,y,w,h))
    {
        FFDebugMessage("Window Open Failed");
        return 0;
    }

    return 1;
}

LRESULT CALLBACK WndProc(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam)
{
    RECT r;
    signed short mx,my;

    switch (message)
    {
    case WM_PAINT:
        //this basically ignores WM_PAINT because we
        //already redraw the whole window every frame in the main loop
        GetUpdateRect(hWnd, &r, 0);
        ValidateRect(hWnd, NULL);
        break;

    case WM_CLOSE:
        //by returning 0, we override the window close behavior. we need to
        //free up OpengL resources before allowing the window to close, so we
        //set this global flag to tell the main thread to draw its last frame,
        //free resources, and *then* close the window
        g_wantToClose = 1;
        return 0;

    case WM_MOUSEMOVE:
    case WM_LBUTTONDOWN:
        //be carefule using ints instead of shorts.. you would
        //need to sign-extend mx and my with these macros
        mx = LOWORD(lParam);
        my = HIWORD(lParam);

        GetClientRect(hWnd, &r);

        if (mx<r.left) mx=(short)r.left;
        else if (mx>r.right) mx = (short)r.right;

        if (my<r.top) my=(short)r.top;
        else if (my>r.bottom) mx = (short)r.bottom;

        mouseX = (float)(mx - r.left) / (float)((r.right - r.left)-1);
        mouseY = 1.0f - ((float)(my - r.top) / (float)((r.bottom - r.top)-1));
        mouseB = ( wParam == MK_LBUTTON );
        break;

    case WM_DESTROY:
        PostQuitMessage(0);
        break;

    default:
        return DefWindowProc(hWnd, message, wParam, lParam);
    }
    return 0;
}

void RegisterOpenGLWindowClass()
{
    static int alreadyRegistered = 0;

    if (alreadyRegistered)
        return;
    else
        alreadyRegistered = 1;

    WNDCLASSEX wcex;

    wcex.cbSize = sizeof(WNDCLASSEX);

    wcex.style = CS_OWNDC;
    wcex.lpfnWndProc = (WNDPROC)WndProc;
    wcex.cbClsExtra = 0;
    wcex.cbWndExtra = 0;
    wcex.hInstance = g_hinst;
    wcex.hIcon = NULL;
    wcex.hCursor = LoadCursor(NULL,IDC_ARROW);
    wcex.hbrBackground = NULL;
    wcex.lpszMenuName = NULL;
    wcex.lpszClassName = "LoopyCamClass";
    wcex.hIconSm = NULL;

    RegisterClassEx(&wcex);
}


BOOL CreateOpenGLWindow(int x, int y, int w, int h)
{
    //before we create the window we have to register the "class" of the
    //window with the OS
    RegisterOpenGLWindowClass();

    //we do not create a resizable window because that would require that we
    //re-instantiate plugins every time the window size changes
    DWORD winFlags = WS_CAPTION | WS_SYSMENU | WS_DLGFRAME;
    winFlags = 0;

	g_hwnd = CreateWindowEx(
	   0 /* WS_EX_TRANSPARENT /* WS_EX_TOPMOST */,        // extended window style
	   "LoopyCamClass",            // window class name
	   "LoopyCam", // window caption
	   WS_POPUP,             // window style
	   x,                    // screen x position
	   y,                    // screen y position
	   w,					 // screen Width
	   h,					 // screen Height
	   NULL,                 // parent window handle
	   NULL,                 // window menu handle
	   g_hinst,            // program instance handle
	   NULL);                // creation parameters
    if (!g_hwnd)
        return FALSE;

    //now we have to jump through some hoops to make the window support OpenGL
    HDC hdc = GetDC(g_hwnd);

    //get the bits-per-pixel of the window's device context (hdc).
    //hopefully its 32.. but the code should work with 24 or 16
    int hdc_bpp = GetDeviceCaps(hdc, BITSPIXEL);

    int zBufferDepth = 16;

    PIXELFORMATDESCRIPTOR pfd;
    memset(&pfd, 0, sizeof(PIXELFORMATDESCRIPTOR));
    pfd.nSize = sizeof(PIXELFORMATDESCRIPTOR);
    pfd.nVersion = 1;

    pfd.dwFlags = PFD_DOUBLEBUFFER |
                  PFD_DRAW_TO_WINDOW |
                  PFD_SUPPORT_OPENGL;

    pfd.iPixelType = PFD_TYPE_RGBA;
    pfd.cColorBits = hdc_bpp;
    pfd.cDepthBits = zBufferDepth;
    pfd.cAccumBits = 0;
    pfd.cStencilBits = 0;
    pfd.iLayerType = PFD_MAIN_PLANE;

    //only request 8 bits of alpha if the context supports 32bit pixels
    if (hdc_bpp==32)
        pfd.cAlphaBits = 8;
    else
        pfd.cAlphaBits = 0;

    int iPixelFormat;
    try {
        iPixelFormat = ChoosePixelFormat(hdc, &pfd);
    } catch (...) {

    }

    //reset pfd for usage below
    memset(&pfd, 0, sizeof(PIXELFORMATDESCRIPTOR));
    pfd.nSize = sizeof(PIXELFORMATDESCRIPTOR);
    pfd.nVersion = 1;

    if (DescribePixelFormat(hdc,
                            iPixelFormat,
                            sizeof(PIXELFORMATDESCRIPTOR),
                            &pfd))
    {
        if ((pfd.dwFlags & PFD_SUPPORT_OPENGL)==0)
        {
            FFDebugMessage("Can't support OpenGL");
            return FALSE;
        }
    }

    DWORD result = SetPixelFormat(hdc, iPixelFormat, &pfd);

    if (!result)
        return FALSE;

    //create the gl rendering context for the window
    g_glrc = wglCreateContext(hdc);

    if (g_glrc==NULL)
        return FALSE;

    //release the window's display context
    ReleaseDC(g_hwnd,hdc);

    ShowWindow(g_hwnd, SW_SHOWNORMAL);
    UpdateWindow(g_hwnd);

    return TRUE;
}

FFGLTextureStruct CreateOpenGLTexture(int textureWidth, int textureHeight)
{
    //note - there must be an active opengl context when this is called
    //ie, wglMakeCurrent(someHDC, someHGLRC)

    //find smallest power of two sized
    //texture that can contain the texture
    int glTextureWidth = 1;
    while (glTextureWidth<textureWidth) glTextureWidth *= 2;

    int glTextureHeight = 1;
    while (glTextureHeight<textureHeight) glTextureHeight *= 2;

    //create and setup the gl texture
    GLuint glTextureHandle = 0;
    glGenTextures(1, &glTextureHandle);

    //bind this new texture so that glTex* calls apply to it
    glBindTexture(GL_TEXTURE_2D, glTextureHandle);

    //use bilinear interpolation when the texture is scaled larger
    //than its true size
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

    //no mipmapping (for when the texture is scaled smaller than its
    //true size)
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);

    //no wrapping (for when texture coordinates reference outside the
    //bounds of the texture)
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP);

    //this allocates room for the gl texture, but doesn't fill it with any pixels
    //(the NULL would otherwise contain a pointer to the texture data)
    glTexImage2D(GL_TEXTURE_2D,
                 0, 3, //we assume a 24bit image, which has 3 bytes per pixel
                 glTextureWidth,
                 glTextureHeight,
                 0, GL_BGR_EXT,
                 GL_UNSIGNED_BYTE,
                 NULL);

    //unbind the texture
    glBindTexture(GL_TEXTURE_2D, 0);

    //fill the OpenGLTextureStruct
    FFGLTextureStruct t;

    t.Handle = glTextureHandle;

    t.Width = textureWidth;
    t.Height = textureHeight;

    t.HardwareWidth = glTextureWidth;
    t.HardwareHeight = glTextureHeight;

    return t;
}

// int yrow = 0;

int FFGLinit2()
{
    //////////////////
    //gl init
    /////////////////

    //to do the rest of the GL initialization, we have to have an active
    //GL context. so, activate rendering to the window


    //get the window's display context
    HDC hdc = GetDC(g_hwnd);

    //create the gl rendering context for the window
    g_glrc = wglCreateContext(hdc);

    //activate gl rendering to the window
    //after this statement completes, we have an active OpenGL
    //context, so all calls to gl* methods will work, and plugin
    //instantiation can be done
    wglMakeCurrent(hdc, g_glrc);

    //the host needs to initialize the glExtensions structure
    //(without the extensions we can't do swap control or
    //use EXT_framebuffer_objects)

    glExtensions.Initialize();
    if (glExtensions.EXT_framebuffer_object==0)
    {
        FFDebugMessage("FBO not detected, cannot continue");
        return 0;
    }

    //set swap control so that the framerate is capped
    //at the monitor refresh rate
    if (glExtensions.WGL_EXT_swap_control)
        glExtensions.wglSwapIntervalEXT(0);

    //create the frame buffer object for intermediate / offscreen
    //rendering - make it the same size as the window
    RECT clientRect;
    GetClientRect(g_hwnd, &clientRect);
    fboWidth = clientRect.right - clientRect.left;
    fboHeight = clientRect.bottom - clientRect.top;

    if (!fbo1.Create(fboWidth, fboHeight, glExtensions))
    {
        FFDebugMessage("Framebuffer Object Init Failed");
        return 0;
    }
    if (!fbo2.Create(fboWidth, fboHeight, glExtensions))
    {
        FFDebugMessage("Framebuffer Object Init Failed");
        return 0;
    }
    //instantiate the first plugin with the FBO viewport
    fboViewport.x = 0;
    fboViewport.y = 0;
    fboViewport.width = fboWidth;
    fboViewport.height = fboHeight;

	fbo_input = NULL;
	fbo_output = NULL;

    //instantiate the second plugin with the output window
    //viewport
    // FFGLViewportStruct windowViewport;
    windowViewport.x = 0;
    windowViewport.y = 0;
    windowViewport.width = clientRect.right - clientRect.left;
    windowViewport.height = clientRect.bottom - clientRect.top;

    scanffglplugins2();

    //allocate a texture for the map
    // FFGLTextureStruct mapTexture;

    mapTexture = CreateOpenGLTexture(fboWidth,fboHeight);
    if (mapTexture.Handle==0)
    {
        FFDebugMessage("Texture allocation failed");
        return 0;
    }
    mapData = (unsigned char *)calloc(fboWidth*fboHeight,4);

#ifdef USE_SPOUT
	_mySender.CreateSender("LoopyCam", fboWidth, fboHeight);
	// _mySender.SetMemoryShareMode(true);  // tried, didn't work
#endif

    //deactivate rendering to the window
    wglMakeCurrent(NULL,NULL);

    //release the window's display context
    ReleaseDC(g_hwnd, hdc);

    //////////////////
    //end of gl init

    timer = Timer::New();

    return 1;
}

double lasttime = -1.0;
int framessincelast = 0;
IplImage* frame = 0;

int loopyloop()
{


    if (g_hwnd!=NULL && g_wantToClose==1)
    {
        DestroyWindow(g_hwnd);
        g_hwnd = NULL;
        return 0;
    }

    if ( g_hwnd==NULL || g_glrc==NULL ) {
        return 0;
    }

    //get the window's display context
    HDC hdc = GetDC(g_hwnd);

    //activate gl rendering to the window
    wglMakeCurrent(hdc, g_glrc);

    //whats the current time on the timer?
    curFrameTime = timer->GetElapsedTime();
	if ( lasttime < 0 || (curFrameTime-lasttime) > 1.0 ) {
		NS_debug("Frames = %d\n",framessincelast);
		lasttime = curFrameTime;
		framessincelast = 0;
	} else {
		framessincelast++;
	}
    // Sleep(5);

    //bind the gl texture so we can upload the next video frame
    // glBindTexture(GL_TEXTURE_2D, aviTexture.Handle);
    glBindTexture(GL_TEXTURE_2D, mapTexture.Handle);

    //upload it to the gl texture. use subimage because
    //the video frame size is probably smaller than the
    //size of the texture on the gpu hardware

    int isnew = 0;
    unsigned char * pixels;
    unsigned char *newpixels;

    // Use OpenCV camera stuff
    frame = cvQueryFrame(capture);
    if ( !frame ) {
        NS_debug("cvQueryFrame returned NULL\n");
    } else {
        isnew = 1;
    }
    pixels = (unsigned char *)(frame->imageData);

    IplImage* img1;
    IplImage* img2;
    IplImage* img3;

    CvSize camsz = cvSize(camWidth,camHeight);
    CvSize ffsz = cvSize(ffWidth,ffHeight);
    CvSize fbosz = cvSize(fboWidth,fboHeight);

	img1 = cvCreateImageHeader(camsz, IPL_DEPTH_8U, 3);
    cvSetImageData(img1,pixels,camWidth*3);

    img2 = cvCreateImage(ffsz, IPL_DEPTH_8U, 3);
    img3 = cvCreateImage(fbosz, IPL_DEPTH_8U, 3);

	int interp = CV_INTER_LINEAR;  // or CV_INTER_NN
	interp = CV_INTER_NN;  // This produces some artifacts compared to CV_INTER_LINEAR, but is faster

    cvResize(img1, img2, interp);

    unsigned char *resizedpixels;
    cvGetImageRawData( img2, &resizedpixels, NULL, NULL );
    pixels = resizedpixels;

    if (isnew!= 0 && pixels != 0) {
        for ( int n=0; n<NPREPLUGINS; n++ ) {
            CFFPlugin* p = preplugins[n];
            if ( p != NULL ) {
                p->Process(p->m_instanceid,pixels);
            }
        }

        newpixels = looper->processFrame24Bit(pixels);
        unsigned char *np = newpixels;

        for ( int n=0; n<NPOSTPLUGINS; n++ ) {
            CFFPlugin* p = postplugins[n];
            if ( p != NULL ) {
                p->Process(p->m_instanceid,newpixels);
            }
        }
    }

    cvResize(img2, img3, interp);
    unsigned char *img3pixels;
    cvGetImageRawData( img3, &img3pixels, NULL, NULL );

    glTexSubImage2D(GL_TEXTURE_2D, 0,
                    0, 0,
                    fboWidth,
                    fboHeight,
                    GL_BGR_EXT,
                    GL_UNSIGNED_BYTE,
                    img3pixels);

    //unbind the gl texture
    glBindTexture(GL_TEXTURE_2D, 0);

	post2flip->setparam("Horizontal",(float)looper->_fliph);
	post2flip->setparam("Vertical",(float)looper->_flipv);

    int lastplugin_n = -1;
	int firstplugin_n = -1;
    int nactive = 0;
    for ( int n=0; n<NPOST2PLUGINS; n++ ) {
		FFGLPluginInstance* ffgl = post2plugins[n];
		if ( ffgl != NULL ) {
			if ( post2plugins[n] != NULL ) {
			    nactive++;
			    lastplugin_n = n;
				if ( firstplugin_n < 0 ) {
					firstplugin_n = n;
				}
			}
		}
    }

    for ( int n=0; n<NPOST2PLUGINS; n++ ) {
        FFGLPluginInstance* ffgl = post2plugins[n];
        if ( ffgl != NULL ) {
			if ( nactive == 1 ) {
				if ( ! do_ffgl_plugin(ffgl,0) ) {
                    NS_debug("Error in do_ffgl_plugin for plugin=%s",ffgl->name.c_str());
                    // return 0;
				}
				continue;
			}
            if ( n == lastplugin_n ) {
                //deactivate rendering to the fbo
                //(this re-activates rendering to the window)
                if ( nactive > 1 ) {
                    fbo_output->UnbindAsRenderTarget(glExtensions);
                }
                if ( ! do_ffgl_plugin(ffgl,2) ) {
                    NS_debug("Error in do_ffgl_plugin for plugin=%s",ffgl->name.c_str());
				}
			} else if ( n == firstplugin_n ) {
				if ( ! do_ffgl_plugin(ffgl,0) ) {
					NS_debug("Error in do_ffgl_plugin for plugin=%s",ffgl->name.c_str());
				}
			} else {
				if ( ! do_ffgl_plugin(ffgl,1) ) {
					NS_debug("Error in do_ffgl_plugin for plugin=%s",ffgl->name.c_str());
				}
			}
        }

    }

	cvReleaseImageHeader(&img1);
	cvReleaseImage(&img2);
	cvReleaseImage(&img3);

    //swapbuffers tells opengl to finish all of the pending
    //drawing instructions (which are to the "back" buffer)
    //and copy/swap them to the front buffer
    SwapBuffers(hdc);

    if (g_wantToClose==1)
    {

		NS_debug("g_wantToClose!!  freeing opengl resources!!\n");

        //if this is our last frame, we need to free OpenGL resources
        //while the gl context is still active

        //release the fbo
        fbo1.FreeResources(glExtensions);
        fbo2.FreeResources(glExtensions);

        glDeleteTextures(1,&mapTexture.Handle);
    }

    //deactivate rendering to the window
    wglMakeCurrent(NULL,NULL);

    //release the window's display context
    ReleaseDC(g_hwnd, hdc);

    //dispatch any pending windows msgs
    MSG msg;
    while (PeekMessage(&msg, 0, 0, 0, PM_REMOVE))
    {
        if (msg.message != WM_QUIT &&
                msg.message != WM_NULL)
        {
            TranslateMessage(&msg);
            DispatchMessage(&msg);
        }
        else
        {
            break;
        }
    }

    return(1);

}

int
do_ffgl_plugin(FFGLPluginInstance* plugin1,int which) // which: 0 = first one, 1 = middle, 2 = last
{
    //prepare the structure used to call
    //the plugin's ProcessOpenGL method
    ProcessOpenGLStructTag processStruct;

    FFGLTextureStruct *inputTextures[1];

	if ( which == 0 ) {
		fbo_output = &fbo1;
		fbo_input = NULL;
		//activate the fbo as our render target
		if ( ! fbo_output->BindAsRenderTarget(glExtensions) )
		{
			NS_debug("FBO Bind As Render Target Failed!\n");
			return 0;
		}
	} else if ( which == 2 ) {
		FFGLFBO* fbo_tmp = fbo_input;
		fbo_input = fbo_output;
		fbo_output = fbo_tmp;

        //now pass the contents of the FBO as a texture to the mirror plugin
        FFGLTextureStruct fboTexture = fbo_input->GetTextureInfo();
        inputTextures[0] = &fboTexture;
        processStruct.numInputTextures = 1;
        processStruct.inputTextures = inputTextures;
        processStruct.HostFBO = 0;

#ifdef USE_SPOUT
		bool b = _mySender.SendTexture(fboTexture.Handle, GL_TEXTURE_2D, fboWidth, fboHeight, false);
		if (!b) {
			NS_debug("Spout SendTexture failed?");
		}
#endif
	} else {
		
        fbo_output->UnbindAsRenderTarget(glExtensions);

		FFGLFBO* fbo_tmp = fbo_input;
		fbo_input = fbo_output;
		fbo_output = fbo_tmp;

		if ( fbo_output == NULL ) {
			fbo_output = &fbo2;
		}

		if ( ! fbo_output->BindAsRenderTarget(glExtensions) )
		{
			NS_debug("FBO Bind As Render Target Failed!\n");
			return 0;
		}

        //create the array of OpenGLTextureStruct * to be passed
        //to the plugin
        // inputTextures[0] = &aviTexture;
        // inputTextures[0] = &mapTexture;
		FFGLTextureStruct fboTexture = fbo_input->GetTextureInfo();
        inputTextures[0] = &fboTexture;
        processStruct.numInputTextures = 1;
        processStruct.inputTextures = inputTextures;

        //we must let the plugin know that it is rendering into a FBO
        //by sharing with it the handle to the currently bound FBO
        processStruct.HostFBO = fbo_output->GetFBOHandle();

		// processStruct.HostFBO = 0;  // NEW //
	}

    //set the gl viewport to equal the size of the FBO
    glViewport(
        fboViewport.x,
        fboViewport.y,
        fboViewport.width,
        fboViewport.height);

    //prepare gl state for rendering the first plugin (brightness)

    //make sure all the matrices are reset
    glMatrixMode(GL_TEXTURE);
    glLoadIdentity();
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();

    //clear the depth and color buffers
    glClearColor(0,0,0,0);
    glClearDepth(1.0);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    //tell plugin 1 what time it is
    plugin1->SetTime(curFrameTime);

    if ( which == 0 ){
        //create the array of OpenGLTextureStruct * to be passed
        //to the plugin
        inputTextures[0] = &mapTexture;
        processStruct.numInputTextures = 1;
        processStruct.inputTextures = inputTextures;

        //we must let the plugin know that it is rendering into a FBO
        //by sharing with it the handle to the currently bound FBO
        processStruct.HostFBO = fbo_output->GetFBOHandle();

    }

    glEnable(GL_BLEND);
    glDisable(GL_DEPTH_TEST);
    // glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    glBlendFunc(GL_SRC_ALPHA,GL_ONE);

    //call the plugin's ProcessOpenGL
    if (plugin1->CallProcessOpenGL(processStruct)==FF_SUCCESS)
    {
        //if the plugin call succeeds, the drawning is complete
    }
    else
    {
        //the plugin call failed, exit
        FFDebugMessage("Plugin 1's ProcessOpenGL failed");
        return 0;
    }
    return 1;
}

////////////////// END OF PLUGIN 1 ////////////////////////////

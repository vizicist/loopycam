#define _CRT_RAND_S

#include "Socket.h"

#include "NSosc.h"

#include "loopycam.h"

#include "loopyosc.h"
#include "osc/OscReceivedElements.h"

#include <iostream>
#include <sstream>
#include <string>

#include "nsoscit.h"

#if 0
#include "windows.h"

#include "looper.h"
#endif

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <limits.h>
#include <time.h>

Looper::Looper(int w, int h) {
	_flipset = false;
    ffWidth = w;
    ffHeight = h;
    ffSize = cvSize(w,h);
    frameImage = createImage24ofSize(ffSize);


    for ( int n=0; n<MAX_LOOPS; n++ ) {
        VFrameLoop* fl = &_loop[n];
        fl->clearme();
        _recording[n] = 0;
        _playing[n] = 0;
    }
    srand((unsigned)time(NULL));
    _enableXOR = 1;
    _border = 0;
	_recborder = 0;
	_trail = 0;
	_blackout = 0;
	_trailamount = 0.90f;
    _currentLoop = 0;
    _autoNext = 1;
    // _numPlaying = 1;
    _playing[0] = 2;
    _smooth = 1;
    _moveamount = 20;

    CvSize sz = ffSize;
    NS_debug("Looper frame size = %d,%d",sz.width,sz.height);
    _tmpImage = createImage24ofSize(sz);

    for ( int n=0; n<MAX_LOOPS; n++ ) {
        _sz[n] = cvSize(0,0);
        _targetsz[n] = cvSize(0,0);
        _sizeFactor[n] = 1.0;
        _szImage[n] = NULL;
		_pos[n] = cvPoint(0,0);

    }
    for ( int n=0; n<MAX_LOOPS; n++ ) {
        _randomizeSize(n,0,1.0);
    }
	_playing[0] = 2;
    _fullDisplay();
	_set_trail();
}

void
Looper::_quadrantDisplay()
{
    CvSize sz = ffSize;
	setwindows(4);
	int q = 0;
	for ( int n=0; n<MAX_LOOPS; n++ ) {
		if ( is_showing(n) ) {
			switch(q) {
			case 0:
				_changePosSize(n,cvPoint(sz.width/4,sz.height/4),cvSize(sz.width/2,sz.height/2));
				break;
			case 1:
				_changePosSize(n,cvPoint(3*sz.width/4,sz.height/4),cvSize(sz.width/2,sz.height/2));
				break;
			case 2:    
				_changePosSize(n,cvPoint(3*sz.width/4,3*sz.height/4),cvSize(sz.width/2,sz.height/2));
				break;
			case 3:   
				_changePosSize(n,cvPoint(sz.width/4,3*sz.height/4),cvSize(sz.width/2,sz.height/2));
			}
			q++;
		}
	}

#if 0
	int n;
	int nshown = 0;
	NS_debug("QUAD start num_showing=%d\n",num_showing());
    for ( n=0; n<MAX_LOOPS; n++ ) {
		if ( is_showing(n) ) {
			nshown++;
		} else if ( nshown < 4 ) {
            _playing[n] = 2;
			nshown++;
		} else {
			_playing[n] = 0;
		}
    }
	NS_debug("QUAD end num_showing=%d\n",num_showing());
#endif

}

void
Looper::_allLive(int onoff)
{
	int v = ( onoff ? 2 : 1 );
	for ( int n=0; n<MAX_LOOPS; n++ ) {
		if ( is_showing(n) ) {
			_playing[n] = 2;
		}
	}
}

void
Looper::_fullDisplay()
{
    CvSize sz = ffSize;
    for ( int n=0; n<MAX_LOOPS; n++ ) {
		// Make each loop a different size
		int offset = 4;
        _changePosSize(n,cvPoint(sz.width/2,sz.height/2),cvSize(sz.width-offset*n,sz.height-offset*n),FALSE);
    }
    for ( int n=0; n<MAX_LOOPS; n++ ) {
        _playing[n] = 0;
		_sz[n].width = 0;
		_sz[n].height = 0;
    }
    _playing[0] = 2;
}

void
Looper::_randomizeSize(int n, int playing, double aspect)
{
    unsigned int    r1,r2,r3,r4;
    CvSize sz = ffSize;

    if ( rand_s(&r1)!=0 || rand_s(&r2)!=0 || rand_s(&r3)!=0 || rand_s(&r4)!=0 ) {
        NS_debug("HEY!! rand_s failed!?");
        r1 = 0;
        r2 = 0;
        r3 = UINT_MAX;
        r4 = UINT_MAX;
    }
    int minwh = 100;  // was 50
	int xyborder = 100;   // was 50
    int dx = (sz.width - 2 * xyborder);
    int dy = (sz.height - 2 * xyborder);

    int x = xyborder + (int)(dx * (double(r1) / double(UINT_MAX)));
    int y = xyborder + (int)(dy * (double(r2) / double(UINT_MAX)));
    int w;
    int h;
    if ( aspect == 0.0 ) {
        w = minwh + (int)((sz.width-minwh) * (double(r3) / double(UINT_MAX)));
        h = minwh + (int)((sz.height-minwh) * (double(r4) / double(UINT_MAX)));
    } else {
		if ( aspect < 0.0 ) {
			aspect = double(sz.height) / sz.width;
		}
        if ( (double(r3) / double(UINT_MAX)) > 0.5 ) {
            w = minwh + (int)((sz.width-minwh) * (double(r4) / double(UINT_MAX)));
            h = int(w * aspect);
        } else {
            h = minwh + (int)((sz.height-minwh) * (double(r4) / double(UINT_MAX)));
            w = int(h * aspect);
        }
    }

    _changePosSize(n,cvPoint(x,y),cvSize(w,h));
    _playing[n] = playing;
}

void
Looper::_changePosSize(int n, CvPoint newpt, CvSize newsz, bool boundit)
{
    CvSize sz = ffSize;
    int x = newpt.x;
    int y = newpt.y;
    int w = newsz.width;
    int h = newsz.height;

    // NS_debug("Looper changePosSize for n=%d pos=%d,%d  size=%d,%d",n,x,y,w,h);

	if ( boundit ) {
		// NS_debug("Before, aspect ratio is %lf",(double)w/h);
		double aspectbefore = (double)w/h;
		int wbefore = w;
		_boundPosSize(&x,&y,&w,&h);
		// NS_debug("After 1, aspect ratio is %lf  pos=%d,%d size=%d,%d",(double)w/h,x,y,w,h);
		if ( ((double)w/h) < aspectbefore ) {
			h = (int)(w/aspectbefore);
		} else {
			w = (int)(h*aspectbefore);
		}
		// NS_debug("After 2, aspect ratio is %lf  pos=%d,%d size=%d,%d",(double)w/h,x,y,w,h);
	} else {
		// NS_debug("NOT BOUNDING resize xy=%d,%d wh=%d,%d\n",x,y,w,h);
	}

    _targetpos[n] = cvPoint(x,y);
    _targetsz[n] = cvSize(w,h);
    if ( _smooth == 0 ) {
        // NS_debug("smooth is 0, jumping to %d,%d",_pos[n].x,_pos[n].y);
        _pos[n] = cvPoint(x,y);
        _sz[n] = cvSize(w,h);
    }

    _releaseAndAllocate(n);
}

void
Looper::_boundPosSize(int *x, int *y, int *w, int *h)
{
    CvSize sz = ffSize;
	int margin = 0;
	int xymargin = 0;
	int origx = *x;
	int origy = *y;
	int origw = *w;
	int origh = *h;

    // bound the values
    if ( *w < margin ) *w = margin;
    if ( *h < margin ) *h = margin;
    if ( *w > (sz.width-margin) ) *w = sz.width - margin;
    if ( *h > (sz.height-margin) ) *h = sz.height - margin;

    if ( *x < xymargin ) *x = xymargin;
    if ( *y < xymargin ) *y = xymargin;
    if ( *x > (sz.width-xymargin) ) *x = sz.width - xymargin;
    if ( *y > (sz.height-xymargin) ) *y = sz.height - xymargin;

    // make sure it's within the display

    if ( (*x-*w/2) < 0 ) *w = *x*2;
    if ( (*y-*h/2) < 0 ) *h = *y*2;
    if ( (*x+*w/2) > sz.width ) *w = (sz.width-*x-1)*2;
    if ( (*y+*h/2) > sz.height) *h = (sz.height-*y-1)*2;
	if ( *w==0 || *h ==0 ) {
		NS_debug("BOUNDIT xy=%d,%d  wh=%d,%d   origxy=%d,%d origwh=%d,%d\n",*x,*y,*w,*h,origx,origy,origw,origh);
	}
}

#define signof(x) (x<0?-1:1)

void
Looper::_towardtarget(int n, int *nfull)
{
    // int maxamount = 3;
    int d;
    int changed = FALSE;

    if ( _pos[n].x != _targetpos[n].x ) {
        d = (_targetpos[n].x - _pos[n].x);
        if ( abs(d) > _moveamount )
            d = signof(d) * _moveamount;
        // NS_debug("towardtarget, adjusting x, d=%d  targetx is %d  x was %d  now %d",d,_targetpos[n].x,_pos[n].x,_pos[n].x + d);
        _pos[n].x += d;
        changed = TRUE;
    }
    if ( _pos[n].y != _targetpos[n].y ) {
        d = (_targetpos[n].y - _pos[n].y);
        if ( abs(d) > _moveamount )
            d = signof(d) * _moveamount;
        _pos[n].y += d;
        changed = TRUE;
    }
	if (_sz[n].width == 0 && _sz[n].height == 0) {
		_sz[n].width = _targetsz[n].width;
		_sz[n].height = _targetsz[n].height;
		_pos[n].x = _sz[n].width / 2;
		_pos[n].y = _sz[n].height / 2;
        changed = TRUE;
	}
    if ( _sz[n].width != _targetsz[n].width ) {
        d = (_targetsz[n].width - _sz[n].width);
        if ( abs(d) > _moveamount )
            d = signof(d) * _moveamount;
        _sz[n].width += d;
        changed = TRUE;
    }
    if ( _sz[n].height != _targetsz[n].height ) {
        d = (_targetsz[n].height - _sz[n].height);
        if ( abs(d) > _moveamount )
            d = signof(d) * _moveamount;
        _sz[n].height += d;
        changed = TRUE;
    }
	if ( changed ) {
        _boundPosSize(&(_pos[n].x),&(_pos[n].y),&(_sz[n].width),&(_sz[n].height));
	}
	// If there's more than one full-screen window, make them slightly different sizes
	if ( _sz[n].height == ffSize.height && _sz[n].width == ffSize.width ) {
			// NS_debug("n=%d nfull=%d\n",n,*nfull);
			if ( *nfull > 0 ) {
				NS_debug(" reducing n=%d by %d, was wh=%d,%d\n",n,*nfull,_sz[n].width,_sz[n].height);
#if 0
				_sz[n].height -= *nfull;
				_sz[n].width -= *nfull;
				changed = TRUE;
#endif
				NS_debug(" reducing n=%d by %d, now wh=%d,%d\n",n,*nfull,_sz[n].width,_sz[n].height);
			}
			(*nfull)++;
			// NS_debug("Incremented n=%d nfull=%d nfullptr=%ld\n",n,*nfull,(long)nfull);
	}
    if ( changed ) {
        _releaseAndAllocate(n);
    }
}

void
Looper::_releaseAndAllocate(int n)
{
    if ( _sz[n].width != 0 && _sz[n].height != 0 && _szImage[n] != NULL ) {
        // NS_debug("ABOUT TO FREE IMAGE of n=%d!",n);
        cvReleaseImage(&_szImage[n]);
    }

    // NS_debug("Looper changing size/pos for n=%d pos=%d,%d  size=%d,%d",n,_pos[n].x,_pos[n].y,_sz[n].width,_sz[n].height);
    _szImage[n] = createImage24ofSize(_sz[n]);
	// NS_debug("created _szImage = %d,%d\n",_szImage[n]->width,_szImage[n]->height);
}

IplImage*
Looper::createImage24ofSize(CvSize sz)
{
    // NS_debug("createImage24ofSize called! sz=%d %d\n",sz.width,sz.height);
    if ( sz.width > 5000 || sz.width > 5000 ) {
        NS_debug("Hey, createImage24ofSize detects bad size!?");
    }
    return cvCreateImage( sz, IPL_DEPTH_8U, 3 );
}

Looper::~Looper() {
}

void
Looper::randompositions(float aspect) {
    for ( int n=0; n<MAX_LOOPS; n++ ) {
        _randomizeSize(n,_playing[n],aspect);
    }
}

void
Looper::randomposition(float aspect) {
    _randomizeSize(_currentLoop,_playing[_currentLoop],aspect);
}

void
Looper::morewindows() {
	NS_debug("MOREWINDOWS, num_showing = %d\n",num_showing());
    if ( num_showing() < MAX_LOOPS ) {
		for ( int n=0; n<MAX_LOOPS; n++ ) {
			if ( ! is_showing(n) ) {
				_playing[n] = 2;
				break;
			}
		}
        // printf("numLoops = %d\n",_numLoops);
    }
	NS_debug("MOREWINDOWS end, num_showing = %d\n",num_showing());

}
void
Looper::_setautoNext(int v) {
    _autoNext = v;
}
void
Looper::_setsmooth(int v) {
    _smooth = v;
}
void
Looper::_setplayfactor(int loopnum, float x) {
    if ( _validLoopnum(loopnum) ) {
        _loop[loopnum].framerate *= x;
    }
}
void
Looper::_resetplayfactor(int loopnum) {
    if ( _validLoopnum(loopnum) ) {
        _loop[loopnum].framerate = 1.0;
    }
}

void
Looper::lesswindows() {
	if ( num_showing() > 1 ) {
		for ( int n=0; n<MAX_LOOPS; n++ ) {
			if ( is_showing(n) ) {
				_playing[n] = 0;
				_sz[n].width = 0;
				_sz[n].height = 0;
				break;
			}
		}
	}
    // printf("numLoops = %d\n",_numLoops);
}

void
Looper::setwindows(int n) {
	NS_debug("SETWINDOWS n=%d\n",n);
	while ( n > num_showing() && num_showing() < MAX_LOOPS ) {
		morewindows();
	}
	while ( n < num_showing() && num_showing() > 1 ) {
		lesswindows();
	}
}

void
Looper::togglesmooth() {
    _smooth = 1 - _smooth;
}

void
Looper::setsmooth(int v) {
	_smooth = (v)?1:0;
}

void
Looper::togglexor() {
    _enableXOR = 1 - _enableXOR;
}

void
Looper::toggleautonext() {
    _autoNext = 1 - _autoNext;
}

void
Looper::toggleborder() {
    _border = 1 - _border;
}

void
Looper::setinterp(int interp)
{
	if ( interp ) {
		CV_interp = CV_INTER_LINEAR;
	} else {
		CV_interp = CV_INTER_NN; // This produces some artifacts, but increases the frame rate from 20 to 30
	}
}

void
Looper::_nextLoop()
{
	int limit = MAX_LOOPS;
	NS_debug("NEXTLOOP _currentloop=%d\n",_currentLoop);
	for ( int n=0; n<limit; n++ ) {
		_currentLoop++;	
		if ( _currentLoop >= MAX_LOOPS )
			_currentLoop = 0;
		if ( is_showing(_currentLoop) ) {
			NS_debug("    currentLoop is now %d",_currentLoop);
			return;
		}
	}
	NS_debug("HEY, nextLoop didn't work?\n");
	_currentLoop = 0;

}

void
Looper::_setRecord(int onoff)
{
    if ( _autoNext != 0 && onoff != 0 ) {
        _nextLoop();
    }
    int loopnum = _currentLoop;
    VFrameLoop* fl = &_loop[loopnum];
    NS_debug("_setRecord, loopnum=%d onoff=%d",loopnum,onoff);
    if ( onoff == 0 ) {
        _recording[loopnum] = 0;
        // Turn recording off, start it playing
        NS_debug("LOOP recording off, nframes=%d",fl->nframes);
        if ( _playing[loopnum] == 1 ) {
            NS_debug("Recording off, advancing to Start");
            fl->advanceToStart();
        }
    } else {
        for ( int n=0; n<MAX_LOOPS; n++ ) {
            _recording[n] = 0;
        }
        _recording[loopnum] = 1 * onoff;
        // Turn recording on, clear existing loop
        fl->freeandclear();
        // Force playing on?
        _playing[loopnum] = 1;
		NS_debug("Playing of loopnum=%d is on\n",loopnum);
    }
}

void
Looper::_setBlackout(int onoff)
{
	_blackout = onoff;
}

void
Looper::_setRecordOverlay(int onoff)
{
    int loopnum = _currentLoop;
    VFrameLoop* fl = &_loop[loopnum];
    if ( ! is_showing(loopnum) ) {
        NS_debug("Hey, loopnum=%d isn't playing, overlay not allowed");
        _recording[loopnum] = 0;
    } else {
        // NS_debug("_setRecordOverlay, loopnum=%d onoff=%d",loopnum,onoff);
        for ( int n=0; n<MAX_LOOPS; n++ ) {
            _recording[n] = 0;
        }
        _recording[loopnum] = 2 * onoff;
    }

}


int
Looper::_validLoopnum(int loopnum)
{
    if ( loopnum < 0 || loopnum >= MAX_LOOPS ) {
        NS_debug("Looper: got bad loopnum (%d) ?",loopnum);
        return 0;
    }
    return 1;
}

void
Looper::_setPlay(int loopnum, int onofflive)
{
    NS_debug("_setPlay called, loop=%d onoff=%d",loopnum,onofflive);
    if ( onofflive == 1 ) {
        VFrameLoop* fl = &_loop[loopnum];
        NS_debug("setPlay, fl=%ld",(long)fl);
        fl->advanceToStart();
    }
    _playing[loopnum] = onofflive;
}

void
Looper::_restart(int loopnum)
{
    VFrameLoop* fl = NULL;

    fl = &_loop[loopnum];
    if ( fl->nframes == 0 ) {
        NS_debug("No frames recorded in loop %d",loopnum);
        return;
    }
    fl->advanceToStart();
}

void
Looper::_freeze(int loopnum, int freeze)
{
	VFrameLoop* fl = NULL;

	fl = &_loop[loopnum];
	if ( fl->nframes == 0 ) {
		return;
	}
	fl->setfreeze(freeze);
}

void
Looper::_restartrandom(int loopnum)
{
	VFrameLoop* fl = NULL;

	fl = &_loop[loopnum];
	if ( fl->nframes == 0 ) {
		return;
	}
	unsigned int r;
	if ( rand_s(&r) != 0 ) {
			r = 0;
	}
	float pos = (float)r / (float)MAXINT;
	VFrame* f = fl->frameOfPos( pos);
	fl->setNextToShow(f);
}

void
Looper::_restartsave(int loopnum)
{
	VFrameLoop* fl = &_loop[loopnum];
	if ( fl != NULL && fl->nframes > 0 ) {
		VFrame* f = fl->nexttoshow;
		if ( f != NULL ) {
			fl->savedpos = (float)(f->framenum) / (float)fl->nframes;
		}
	}
}

void
Looper::_restartrestore(int loopnum)
{
	VFrameLoop* fl = &_loop[loopnum];
	if ( fl->nframes == 0 ) {
		return;
	}
	VFrame* f = fl->frameOfPos( fl->savedpos);
	fl->setNextToShow(f);
}


void
Looper::_truncate(int loopnum)
{
    VFrameLoop* fl = NULL;

    fl = &_loop[loopnum];
    VFrame *next = fl->nexttoshow;
    if ( next == NULL ) {
        NS_debug("No frames recorded in loop %d",loopnum);
        return;
    }
    if ( next->framenum < 10 ) {
        NS_debug("Can't truncate that small (framenum=%d)",next->framenum);
        return;
    }
    fl->end = next;
    fl->advanceToStart();
}


void
Looper::_copy24bit(VideoPixel24bit* dest, VideoPixel24bit* src) {
    for (int x = 0; x < ffWidth; x++) {
        for (int y = 0; y < ffHeight; y++) {
            dest->red = (BYTE) (src->red);
            dest->green = (BYTE) (src->green);
            dest->blue = (BYTE) (src->blue);
            dest++;
            src++;
        }
    }
}

void
imageborder(IplImage *img, CvSize sz, CvScalar color)
{
    int linetype = 8;
    int w = sz.width;
    int h = sz.height;
    int thick = 1;

	int z = 0;
    cvLine(img,cvPoint(z,z),cvPoint(w-1,z),color,thick,linetype,0);
    cvLine(img,cvPoint(w-1,z),cvPoint(w-1,h-1),color,thick,linetype,0);
    cvLine(img,cvPoint(w-1,h-1),cvPoint(z,h-1),color,thick,linetype,0);
    cvLine(img,cvPoint(z,h-1),cvPoint(z,z),color,thick,linetype,0);
}

void
imageborder_record(IplImage *img, CvSize sz)
{
    imageborder(img,sz,CV_RGB(255,0,0));
}

void
imageborder_normal(IplImage *img, CvSize sz)
{
    imageborder(img,sz,CV_RGB(100,100,100));
}

unsigned char *
Looper::processFrame24Bit(unsigned char *pixels)
{
	// NS_debug("process start\n");
    VFrameLoop* fl = NULL;
    IplImage *fi = frameImage;
    cvSetImageData(fi,pixels,ffWidth*3);

	if ( _blackout ) {
		cvZero(fi);
		goto getout;
	}

    int whichrecording = -1;

    // NS_debug("processFrame24Bit");
    for (int n=0; n<MAX_LOOPS; n++) {
        if ( _recording[n] == 0 )
            continue;
		// NS_debug("Recording is on for loop n=%d\n",n);
        whichrecording = n;
        fl = &_loop[n];
        // If recording (as opposed to overlaying), add a frame
        if ( _recording[n] == 1 ) {
            if ( fl->nframes >= MAX_FRAMES ) {
                NS_debug("Too many frames recorded, turning off recording");
                fl->advanceToStart();
                _recording[n] = 0;
            } else {
                VFrame* tf = fl->addVFrame(fi);
				// NS_debug("Added frame %d to loop\n",tf->framenum);
				fl->setNextToShow(tf);
            }
        } else if ( _recording[n] == 2 ) {
            fl->replaceVFrame(fi);
        } else {
            NS_debug("Unexpected value of _recording=%d for n=%d",_recording[n],n);
        }
    }
	// NS_debug("process mid1\n");

    IplImage* i2 = NULL;

    // if any are showing the live image, save a copy of it
    bool savelive = FALSE;
    for (int n=0; n<MAX_LOOPS; n++) {
        if ( _playing[n] == 2 ) {
            savelive = TRUE;
        }
    }
	
#if 0
	int interp = CV_INTER_LINEAR;  // or CV_INTER_NN
	interp = CV_INTER_NN;  // This produces some artifacts, but increases the frame rate from 20 to 30
#endif

    if ( savelive ) {
        cvResize(fi, _tmpImage, CV_interp);
    }

	// THIS CALL IS A BOTTLENECK
    cvZero(fi);
    // cvConvertScale( fi, fi, 0.5, 0 );

    bool trynew = TRUE;

    IplImage *toimg;
    CvSize tosz;

    if ( _currentLoop < 0 || _currentLoop >= MAX_LOOPS )
        _currentLoop = 0;  // just in case

    int n = _currentLoop;
    int nplayed = 0;
    // Make sure _currentLoop is the last one drawn.
	int nfull = 0;
	int nshowing = num_showing();

	// NS_debug("process mid2\n");

    for (n++; nplayed<nshowing; n++ ) {
		// NS_debug("process mid3a n=%d\n",n);
        if ( n >= MAX_LOOPS )
            n = 0;
 		// NS_debug("LOOPTOP n=%d nplayed=%d is_showing=%d\n",n,nplayed,is_showing(n));

		if ( ! is_showing(n) ) {
            continue;
		}
		nplayed++;

        if ( _smooth ) {
            _towardtarget(n,&nfull);
        }
		if ( _sz[n].height == 0 || _sz[n].width == 0 ) {
			NS_debug("HEY! n=%d height/width=0?\n",n);
		}

        int w, h;
        int x, y;
        if ( trynew == FALSE ) {
        } else {
            w = _sz[n].width;
            h = _sz[n].height;
 			// the expression (+h/2-h) is so that
			// if h is odd, it will round down (as
			// opposed to using (-h/2) which would
			// round the resulting value up
			x = _pos[n].x + w/2 - w;
            y = _pos[n].y + h/2 - h; 

            if ( x < 0 )
                x = 0;
            if ( y < 0 )
                y = 0;
			if ( (x+w) > ffWidth ) {
				NS_debug("Hey, x+w>ffWidth\n");
				w = ffWidth - x;
			}
			if ( (y+h) > ffHeight ) {
				NS_debug("Hey, y+h>ffHeight\n");
				h = ffHeight - y;
			}

            toimg = _szImage[n];
            tosz = _sz[n];
        }

        if ( _playing[n] == 2 ) {
            // feed live image through
            cvResize(_tmpImage, toimg, CV_interp);
            if ( _border ) {
                imageborder_normal(toimg,tosz);
            }
        } else {
            fl = &_loop[n];
            if ( fl->nexttoshow == NULL ) {
				NS_debug("HEY nexttoshow==NULL in process for loop n=%d\n",n);
                continue;
            }
			// NS_debug("Should be playing frame =%d\n",fl->nexttoshow->framenum);
            cvResize(fl->nexttoshow->image, toimg, CV_interp);
            // NS_debug("n=%d which=%d",n,whichrecording);
#define NORECORDBORDER 0
            if ( _recborder && (n == whichrecording) && (! NORECORDBORDER) ) {
                imageborder_record(toimg,tosz);
            } else if ( _border ) {
                imageborder_normal(toimg,tosz);
            }
            // cvXor(fl->nexttoshow->image,fi,fi,NULL);
        }
		// NS_debug("process mid5 n=%d\n",n);

        cvSetImageROI(fi,cvRect(x,y,w,h));
		// NS_debug("process mid5b n=%d\n",n);

		int realn = n;
        if ( _enableXOR ) {
			// NS_debug("cvXOR n=%d \n",n);
			// NS_debug("process mid5c n=%d\n",n);
			try {
				cvXor(toimg,fi,fi,NULL);
			} catch (...) {
				NS_debug("Hey! exception in cvXor!\n");
			}
			// NS_debug("process mid5c2 n=%d\n",n);
        } else {
 			// NS_debug("cvOR n=%d \n",n);
			// NS_debug("process mid5d n=%d\n",n);
            cvOr(toimg,fi,fi,NULL);
            // cvCopy(toimg,fi,NULL);
        }
 		// NS_debug("process mid5e n=%d\n",n);
		cvResetImageROI( fi );
		// NS_debug("process mid6 n=%d\n",n);

    }

	// NS_debug("process mid7\n");

    // CvPoint pt1 = {10,10};
    // CvPoint pt2 = {100,100};
    // cvRectangle(fi,pt1,pt2,CV_RGB(255,0,0),5 /*width*/,8,0);

    // Advance the nexttoshow value of the playing loops
    for (int n=0; n<MAX_LOOPS; n++) {
        if ( _playing[n] == 1 ) {
			int r = _loop[n].advance();
#if 0
            if ( r == 1 ) {
                NS_debug("Turning loop n=%d off because advance returned 1");
            }
#endif
        }
    }

getout:
    pixels = (unsigned char *) (fi->imageData);
	// NS_debug("process end\n");

    return pixels;
}

int getAsInt32(int& nargs, const char* & types, osc::ReceivedMessage::const_iterator& arg, int default = 0)
{
	if ( nargs > 0 ) {
		nargs--;
		char t = *types++;
		if ( t != 'i' ) {
			NS_debug("Expected integer, found %c !?\n",t);
			return default;
		}
		return (arg++)->AsInt32();
	} else {
		return default;
	}
}

float getAsFloat(int& nargs, const char* & types, osc::ReceivedMessage::const_iterator& arg, float default = 0.0)
{
	if ( nargs > 0 ) {
		nargs--;
		char t = *types++;
		if ( t != 'f' ) {
			NS_debug("Expected float, found %c !?\n",t);
			return default;
		}
		return (arg++)->AsFloat();
	} else {
		return default;
	}
}

void Looper::processosc(std::string addr, const char* types, int nargs, osc::ReceivedMessage::const_iterator arg) {
    if ( addr == "/looper/record" ) {
        int onoff = getAsInt32(nargs,types,arg);
        _setRecord(onoff);
    } else if ( addr == "/looper/randompositions" ) {
        float aspect = getAsFloat(nargs,types,arg,-1.0);
        randompositions(aspect);
    } else if ( addr == "/looper/randomposition1" ) {
        float aspect = getAsFloat(nargs,types,arg,-1.0);
        randomposition(aspect);
    } else if ( addr == "/looper/recordoverlay" ) {
        int onoff = getAsInt32(nargs,types,arg);
        _setRecordOverlay(onoff);
	} else if ( addr == "/looper/blackout" ) {
		int onoff = getAsInt32(nargs,types,arg);
        _setBlackout(onoff);
    } else if ( addr == "/looper/play" ) {
        int loopnum = getAsInt32(nargs,types,arg);
        int onoff = getAsInt32(nargs,types,arg);
        if ( _validLoopnum(loopnum) ) {
            _setPlay(loopnum,onoff);
        }
    } else if ( addr == "/looper/morewindows" ) {
        morewindows();
    } else if ( addr == "/looper/lesswindows" ) {
        lesswindows();
	} else if ( addr == "/looper/setwindows" ) {
		int n = getAsInt32(nargs,types,arg,1);
		setwindows(n);
    } else if ( addr == "/looper/fulldisplay" ) {
        _fullDisplay();
    } else if ( addr == "/looper/quadrantdisplay" ) {
        _quadrantDisplay();
    } else if ( addr == "/looper/alllive" ) {
        int onoff = getAsInt32(nargs,types,arg,1);
        _allLive(onoff);
        // } else if ( s == "/looper/sizefactorall" ) {
        // 	float x = m.getArgAsFloat(0);
        // 	for ( int n=0; n<MAX_LOOPS; n++ ) {
        // 		_sizeFactor[n] = x;
        // 		_changePosSize(n,_pos[n],cvSize((int)(_sz[n].width*_sizeFactor[n]),int(_sz[n].height*_sizeFactor[n])));
        // }
    } else if ( addr == "/looper/autonext" ) {
        int v = getAsInt32(nargs,types,arg);
        _setautoNext(v);
    } else if ( addr == "/looper/togglesmooth" ) {
        togglesmooth();
	} else if ( addr == "/looper/setsmooth" ) {
		int v = getAsInt32(nargs,types,arg);
		setsmooth(v);
	} else if ( addr == "/looper/setinterp" ) {
		int v = getAsInt32(nargs,types,arg);
		setinterp(v);
    } else if ( addr == "/looper/nextloop" ) {
        _nextLoop();
    } else if ( addr == "/looper/playfactor" ) {
        int loopnum = getAsInt32(nargs,types,arg);
        float x = getAsFloat(nargs,types,arg,0.5);
        _setplayfactor(loopnum,x);
	} else if ( addr == "/looper/playfactorreset" ) {
        int loopnum = getAsInt32(nargs,types,arg);
        _resetplayfactor(loopnum);
    } else if ( addr == "/looper/moveamount" ) {
        _moveamount = getAsInt32(nargs,types,arg);
    } else if ( addr == "/looper/restart" ) {
        int loopnum = getAsInt32(nargs,types,arg);
        if ( _validLoopnum(loopnum) ) {
            _restart(loopnum);
        }
	} else if ( addr == "/looper/restartrandom" ) {
        int loopnum = getAsInt32(nargs,types,arg);
		if ( _validLoopnum(loopnum) ) {
			_restartrandom(loopnum);
		}
	} else if ( addr == "/looper/restartsave" ) {
        int loopnum = getAsInt32(nargs,types,arg);
		if ( _validLoopnum(loopnum) ) {
			_restartsave(loopnum);
		}
	} else if ( addr == "/looper/restartrestore" ) {
        int loopnum = getAsInt32(nargs,types,arg);
		if ( _validLoopnum(loopnum) ) {
			_restartrestore(loopnum);
		}
	} else if ( addr == "/looper/freeze" ) {
        int loopnum = getAsInt32(nargs,types,arg);
		if ( _validLoopnum(loopnum) ) {
			_freeze(loopnum,1);
		}
	} else if ( addr == "/looper/unfreeze" ) {
        int loopnum = getAsInt32(nargs,types,arg);
		if ( _validLoopnum(loopnum) ) {
			_freeze(loopnum,0);
		}
    } else if ( addr == "/looper/truncate" ) {
        int loopnum = getAsInt32(nargs,types,arg);
        if ( _validLoopnum(loopnum) ) {
            _truncate(loopnum);
        }
    } else if ( addr == "/looper/xor" ) {
        int onoff = getAsInt32(nargs,types,arg);
        _enableXOR = (onoff?1:0);
    } else if ( addr == "/looper/border" ) {
        int onoff = getAsInt32(nargs,types,arg);
        _border = (onoff?1:0);
	} else if ( addr == "/looper/fliph" ) {
        int onoff = getAsInt32(nargs,types,arg);
		NS_debug("IGNORING FLIPH onoff=%d\n",onoff);
		// set_fliph(onoff!=0);
		// post2flip->setparam("Horizontal",(float)onoff);
	} else if ( addr == "/looper/flipv" ) {
        int onoff = getAsInt32(nargs,types,arg);
		NS_debug("IGNORING FLIPV onoff=%d\n",onoff);
		// _set_flipv(onoff!=0);
		// post2flip->setparam("Vertical",(float)onoff);
	} else if ( addr == "/looper/recborder" ) {
        int onoff = getAsInt32(nargs,types,arg);
        _recborder = (onoff?1:0);
	} else if ( addr == "/looper/dotrail" ) {
        int onoff = getAsInt32(nargs,types,arg);
        _trail = (onoff?1:0);
		_set_trail();
	} else if ( addr == "/looper/trail" ) {
		float x = getAsFloat(nargs,types,arg);
		_trailamount = x;
		_set_trail();
    } else if ( addr == "/looper/setstart" ) {
        int loopnum = getAsInt32(nargs,types,arg);
        float x = getAsFloat(nargs,types,arg);
        if ( _validLoopnum(loopnum) ) {
            _loop[loopnum].setStartPos(x);
        }
    } else if ( addr == "/looper/setend" ) {
        int loopnum = getAsInt32(nargs,types,arg);
        float x = getAsFloat(nargs,types,arg);
        if ( _validLoopnum(loopnum) ) {
            _loop[loopnum].setEndPos(x);
        }
    } else if ( addr == "/looper/setreverse" ) {
        int loopnum = getAsInt32(nargs,types,arg);
        int onoff = getAsInt32(nargs,types,arg);
        if ( _validLoopnum(loopnum) ) {
            _loop[loopnum].setReverse(onoff);
        }
	} else {
	}
}

void
Looper::_set_trail()
{
		if ( _trail ) {
			post2trails->setparam("Opacity",_trailamount);
		} else {
			post2trails->setparam("Opacity",0.0);
		}
}

void
Looper::_set_fliph(bool onoff)
{
	_fliph = onoff;
	post2flip->setparam("Horizontal",(float)onoff);
}

void
Looper::_set_flipv(bool onoff)
{
	_flipv = onoff;
	post2flip->setparam("Vertical",(float)onoff);
}

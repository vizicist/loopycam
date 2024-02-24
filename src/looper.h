#ifndef __NSLOOPER_H__
#define __NSLOOPER_H__

#include "cv.h"
#include "vframe.h"
// #include "ofTexture.h"

#define NUM_PARAMS 2
#define NUM_INPUTS 1
#define MAX_LOOPS 8
#define MAX_FRAMES 1024

class Looper {

public:

	Looper(int w, int h);
	~Looper();

	unsigned char *	processFrame24Bit(unsigned char *pixels);

	IplImage *frameImage;

	int _enableXOR;
	int _border;
	int _recborder;
	int _trail;
	float _trailamount;
	int _currentLoop;
	int _blackout;
	int _autoNext;
	VFrameLoop _loop[MAX_LOOPS];
	int _recording[MAX_LOOPS];  // 1==recording, 2=overlaying
	int _playing[MAX_LOOPS];    // 1==playing loop, 2=live input
	// int _numPlaying;
	int _smooth;
	int _moveamount;
	bool _flipv;
	bool _fliph;
	bool _flipset;
	int is_showing(int n) {
		return ( _playing[n] > 0 );
	};
	int num_showing() {
		int nshowing = 0;
		for ( int n=0; n<MAX_LOOPS; n++ ) {
			if ( is_showing(n) ) {
				nshowing++;
			}
		}
		return nshowing;
	}


	int ffWidth;			// width of FreeFrame frame in pixels
	int ffHeight;		// height of FreeFrame frame in pixels
	CvSize ffSize;

	CvPoint _pos[MAX_LOOPS];
	CvPoint _targetpos[MAX_LOOPS];
	CvSize _sz[MAX_LOOPS];
	CvSize _targetsz[MAX_LOOPS];
	float _sizeFactor[MAX_LOOPS];
	IplImage *_szImage[MAX_LOOPS];
	CvSize _quarterSize;
	IplImage *_quarterImage;
	IplImage *_tmpImage;
	int _validLoopnum(int loopnum);
	VFrame* _createVFrame(IplImage* i);
	void _setRecord(int onoff);
	void _setRecordOverlay(int onoff);
	void _setPlay(int loopnum, int onoff);
	void _setQuadrants(int onoff);
	void _setRandomFrame(int loopnum);
	void _setBlackout(int onoff);
	void _restart(int loopnum);
	void _restartrandom(int loopnum);
	void _restartsave(int loopnum);
	void _restartrestore(int loopnum);
	void _freeze(int loopnum,int freeze);
	void _truncate(int loopnum);
	void _copy24bit(VideoPixel24bit* dest, VideoPixel24bit* src);
	void _randomizeSize(int loopnum, int playing, double aspect);
	void _fullDisplay();
	void _allLive(int onoff);
	void _quadrantDisplay();
	void _changePosSize(int n, CvPoint pt, CvSize sz, bool boundit = TRUE);
	void _nextLoop();
	void _towardtarget(int n, int *nfull);
	void _releaseAndAllocate(int n);
	void _boundPosSize(int *x, int *y, int *w, int *h);
	void _setautoNext(int v);
	void _setsmooth(int v);
	void _setplayfactor(int loopnum, float x);
	void _resetplayfactor(int loopnum);
	void _set_trail();
	void _set_fliph(bool onoff);
	void _set_flipv(bool onoff);
	void randompositions(float aspect);
	void randomposition(float aspect);
	void morewindows();
	void lesswindows();
	void setwindows(int n);
	void togglesmooth();
	void setsmooth(int v);
	void togglexor();
	void toggleautonext();
	void toggleborder();
	void setinterp(int interp);

	IplImage* createImage24ofSize(CvSize sz);

	void processosc(std::string addr, const char* types, int nargs, osc::ReceivedMessage::const_iterator arg); 
};
						
int	initialise();								
int	deInitialise();							

#endif

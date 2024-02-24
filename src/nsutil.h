#ifndef NSUTIL_H
#define NSUTIL_H

#define _USE_MATH_DEFINES

#include "winsock.h"
#include "cv.h"
#include "cxcore.h"
#include <math.h>

#define NTHEVENTSERVER_PORT 1384
// Every so many milliseconds, we re-register with the Nth Server
#define NTHEVENTSERVER_REREGISTER_MILLISECONDS 3000

int SendToUDPServer(std::string host, int serverport, const char *data, int leng);
int SendToSLIPServer(std::string host, int serverport, const char *data, int leng);

#define PARAM_DISPLAY_LEN 16

#define RAD2DEG(r) ((r)*360.0/(2.0*M_PI))
#define PI2 ((float)(2.0*M_PI))

// typedef struct ParamDynamicDataStructTag {
// 	float value;
// 	char displayValue[PARAM_DISPLAY_LEN+1];
// } ParamDynamicDataStruct;

typedef struct VideoPixel24bitTag {
	BYTE blue;
	BYTE green;
	BYTE red;
} VideoPixel24bit;

typedef struct VideoPixel16bitTag {
	BYTE fb;
	BYTE sb;
} VideoPixel16bit;

typedef struct VideoPixel32bitTag {
	BYTE blue;
	BYTE green;
	BYTE red;
	BYTE alpha;
} VideoPixel32bit;

typedef struct VideoParamInfoTag {
	char *name;
	float defaultval;
	int type;
} VideoParamInfo;

typedef struct VideoParamDataTag {
	float value;
	char display[PARAM_DISPLAY_LEN];
} VideoParamData;

void NS_debug(char *fmt, ...);
CvScalar randomRGB();

CvScalar HLStoRGB(float hue, float lum, float sat);
void RGBtoHLS(float r, float g, float b, float* hue, float* lum, float* sat);
float ToRGB1(float rm1, float rm2, float rh);
float angleNormalize(float a);
unsigned char *createimageofsize(CvSize sz);

class NSSprite {
	static int lastid;

public:
	NSSprite(CvPoint2D32f pt) {
		center = pt;
		age = 0.0;
		speedx = 0.0;
		speedy = 0.0;
		size = 1.0;
		generation = 0;
		velocity = 0.0;
		tracked = 0;
		moveang = 0.0;
		id = lastid++;
		// NS_debug("NEW SPRITE id=%d center=%lf,%lf this=%lld",id,center.x,center.y,(long long)this);
	}
	void increaseAge() {
		age += 1.0;
	}
	int tooOld() {
		if ( age > 100.0 ) {
			// NS_debug("tooOld returning TRUE, age=%lf for this=%lld",age,(long long)this);
			return TRUE;
		}
		else
			return FALSE;
	}
	void trackPointLost() {
		velocity = 0.0;
		tracked = 0;
	}
#if 0
	void trackPointMoved(CvPoint2D32f pt) {
		// float dx = pt.x - trackpoint.x;
		// float dy = pt.y - trackpoint.y;
		float dx = pt.x - center.x;
		float dy = pt.y - center.y;
		float vel = sqrt(dx*dx + dy*dy);
		float ang = angleNormalize((float)atan2(dy,dx));
		if ( age < 0.0 ) {
			NS_debug("Hey! age < 0? for id=%d this=%lld",id,(long long)this);
		}
		if ( vel > 3.0 && age < 3.0 ) {
			// NS_debug("Hmmm, vel=%lf dx=%lf dy=%lf age=%lf id=%d",vel,dx,dy,age,id);
			// NS_debug("Ignoring trackmove of id=%d, too fast (%lf), too young (%lf)",(long long)this,id,vel,age);
			// prevtrackpoint = trackpoint;
			// trackpoint = pt;
			return;
		}
		if ( vel > 4.0 && age > 50.0 ) {
			// NS_debug("Resetting age of id=%d vel=%lf pt=%lf,%lf",
			//	id,vel,pt.x,pt.y);
			age = 5.0;
		}
		float movesmooth = 20.0;
		speedx = (dx + (movesmooth-1)*speedx)/movesmooth;
		speedy = (dy + (movesmooth-1)*speedy)/movesmooth;
		velocity = sqrt(speedx*speedx + speedy*speedy);

		float dang = ang - moveang;
		if ( dang > M_PI ) {
			ang -= PI2;
		} else if ( dang < -M_PI ) {
			ang += PI2;
		}
		
		float angsmooth = 20.0;
		moveang = (ang + (angsmooth-1)*moveang)/angsmooth;
		moveang = angleNormalize(moveang);
		// if ( tracked ) {
		// 	NS_debug("id=%d rawang=%lf moveang=%lf dang=%lf",id,RAD2DEG(ang),RAD2DEG(moveang),RAD2DEG(dang));
		// }
		// NS_debug("TrackPointMoved new velocity=%lf  speed=%lf,%lf dxy=%lf,%lf ang=%lf",velocity,speedx,speedy,dx,dy,moveang);
		center.x = speedx + center.x;
		center.y = speedy + center.y;
	};
#endif

	CvPoint2D32f	center;
	float			speedx;
	float			speedy;
	float			velocity;
	float			moveang;
	float			size;
	float			age;
	int				id;
	int				generation;
	int				tracked;
	NSSprite *next;
};

#if 0
class NSPlugin
{

public:
	NSPlugin (int oscport = 0, bool oscregistered = FALSE);
	~NSPlugin ();

	// void debugOscMessage(char *plugin, const osc::ReceivedMessage& m);

	VideoParamData* getParamData(unsigned int index);

	DWORD processFrame(LPVOID pFrame);
	DWORD processFrameCopy(LPVOID pFrame);

	virtual DWORD instantiate(VideoInfoStruct* pvi,VideoParamInfo*);
	virtual void deinstantiate();
	virtual void ProcessOscMessage( const osc::ReceivedMessage& m, struct sockaddr_in *sin) = 0;

	virtual char* pluginName() = 0;
	virtual DWORD processFrame24Bit() = 0;
	virtual DWORD processFrame32Bit() = 0;
	virtual DWORD processFrameCopy24Bit() = 0;
	virtual DWORD processFrameCopy32Bit() = 0;
	virtual unsigned int numInputs() = 0;
	virtual unsigned int numParams() = 0;

	unsigned int FrameWidth() { return _videoInfo.frameWidth; };
	unsigned int FrameHeight() { return _videoInfo.frameHeight; };
	unsigned int FrameBitDepth() { return _videoInfo.bitDepth; };	
	IplImage* FrameImage() { return _image; };
	CvSize FrameImageSize() { return _imagesize; };
	char* FrameImageData() { return _image->imageData; };
	// IplImage* FrameImageCopy() { return cvCreateImage(FrameImageSize(), IPL_DEPTH_8U, 3); };

	int Enabled() { return _enabled; };
	LPVOID allocateFrame();
	IplImage* createFrameImage();
	IplImage* createImage24();
	IplImage* createImage32();
	void releaseImage(IplImage**i);
	IplImage* createImage24ofSize(CvSize sz);
	void setImageData24(IplImage*,char*);
	void setImageData32(IplImage*,char*);
	IplImage* createFrameImageHeader();
	IplImage* createImageHeader24();
	IplImage* createImageHeader32();
	IplImage* createMask();
	NSSprite* addSprite(CvPoint2D32f pt);
	void OscCheck();
	void clearSpritelist();
	void debugSpritelist();
	void removeSprite(NSSprite* removeme);

	void DrawLine(int x0, int y0, int x1, int y1);
	void getRGB(float hue, float lum, float sat, float* r, float* g, float* b);

	NSSprite* _spritelist;
	int numSprites() {
		NSSprite* s = _spritelist;
		int n=0;
		while (s!=NULL) {
			n++;
			s=s->next;
		}
		return n;
	}

	int _oscEnabled;

private:
	void _allocateParameters(VideoParamInfo* pi);
	int _openListener(char *host, int *port);
	void _processOscBundle( const osc::ReceivedBundle& b, struct sockaddr_in *sin );
	void _oscListen();
	void _oscUnListen();
	void _oscRegister();

	SOCKET _s;
	int _myport;
	VideoInfoStruct _videoInfo;
	unsigned int _numInputs;
	VideoParamData *_paramdata;
	int _enabled;
	bool _oscRegistered;
	DWORD _lastOscRegisterTime;

	int _usedda;

	CvSize _imagesize;
	IplImage* _image;


};
#endif




#endif

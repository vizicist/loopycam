//
// This file is auto-generated. Please don't modify it!
//

#import "VideoWriter.h"
#import "CVObjcUtil.h"

#import "IntVector.h"
#import "Mat.h"
#import "Size2i.h"

@implementation VideoWriter


- (instancetype)initWithNativePtr:(cv::Ptr<cv::VideoWriter>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::VideoWriter>)nativePtr {
    return [[VideoWriter alloc] initWithNativePtr:nativePtr];
}



//
//   cv::VideoWriter::VideoWriter()
//
- (instancetype)init {
    return [self initWithNativePtr:cv::Ptr<cv::VideoWriter>(new cv::VideoWriter())];
}


//
//   cv::VideoWriter::VideoWriter(String filename, int fourcc, double fps, Size frameSize, bool isColor = true)
//
- (instancetype)initWithFilename:(NSString*)filename fourcc:(int)fourcc fps:(double)fps frameSize:(Size2i*)frameSize isColor:(BOOL)isColor {
    return [self initWithNativePtr:cv::Ptr<cv::VideoWriter>(new cv::VideoWriter(cv::String(filename.UTF8String), fourcc, fps, frameSize.nativeRef, (bool)isColor))];
}

- (instancetype)initWithFilename:(NSString*)filename fourcc:(int)fourcc fps:(double)fps frameSize:(Size2i*)frameSize {
    return [self initWithNativePtr:cv::Ptr<cv::VideoWriter>(new cv::VideoWriter(cv::String(filename.UTF8String), fourcc, fps, frameSize.nativeRef))];
}


//
//   cv::VideoWriter::VideoWriter(String filename, int apiPreference, int fourcc, double fps, Size frameSize, bool isColor = true)
//
- (instancetype)initWithFilename:(NSString*)filename apiPreference:(int)apiPreference fourcc:(int)fourcc fps:(double)fps frameSize:(Size2i*)frameSize isColor:(BOOL)isColor {
    return [self initWithNativePtr:cv::Ptr<cv::VideoWriter>(new cv::VideoWriter(cv::String(filename.UTF8String), apiPreference, fourcc, fps, frameSize.nativeRef, (bool)isColor))];
}

- (instancetype)initWithFilename:(NSString*)filename apiPreference:(int)apiPreference fourcc:(int)fourcc fps:(double)fps frameSize:(Size2i*)frameSize {
    return [self initWithNativePtr:cv::Ptr<cv::VideoWriter>(new cv::VideoWriter(cv::String(filename.UTF8String), apiPreference, fourcc, fps, frameSize.nativeRef))];
}


//
//   cv::VideoWriter::VideoWriter(String filename, int fourcc, double fps, Size frameSize, vector_int params)
//
- (instancetype)initWithFilename:(NSString*)filename fourcc:(int)fourcc fps:(double)fps frameSize:(Size2i*)frameSize params:(IntVector*)params {
    return [self initWithNativePtr:cv::Ptr<cv::VideoWriter>(new cv::VideoWriter(cv::String(filename.UTF8String), fourcc, fps, frameSize.nativeRef, params.nativeRef))];
}


//
//   cv::VideoWriter::VideoWriter(String filename, int apiPreference, int fourcc, double fps, Size frameSize, vector_int params)
//
- (instancetype)initWithFilename:(NSString*)filename apiPreference:(int)apiPreference fourcc:(int)fourcc fps:(double)fps frameSize:(Size2i*)frameSize params:(IntVector*)params {
    return [self initWithNativePtr:cv::Ptr<cv::VideoWriter>(new cv::VideoWriter(cv::String(filename.UTF8String), apiPreference, fourcc, fps, frameSize.nativeRef, params.nativeRef))];
}


//
//  bool cv::VideoWriter::open(String filename, int fourcc, double fps, Size frameSize, bool isColor = true)
//
- (BOOL)open:(NSString*)filename fourcc:(int)fourcc fps:(double)fps frameSize:(Size2i*)frameSize isColor:(BOOL)isColor {
    bool retVal = self.nativePtr->open(cv::String(filename.UTF8String), fourcc, fps, frameSize.nativeRef, (bool)isColor);
    return retVal;
}

- (BOOL)open:(NSString*)filename fourcc:(int)fourcc fps:(double)fps frameSize:(Size2i*)frameSize {
    bool retVal = self.nativePtr->open(cv::String(filename.UTF8String), fourcc, fps, frameSize.nativeRef);
    return retVal;
}


//
//  bool cv::VideoWriter::open(String filename, int apiPreference, int fourcc, double fps, Size frameSize, bool isColor = true)
//
- (BOOL)open:(NSString*)filename apiPreference:(int)apiPreference fourcc:(int)fourcc fps:(double)fps frameSize:(Size2i*)frameSize isColor:(BOOL)isColor {
    bool retVal = self.nativePtr->open(cv::String(filename.UTF8String), apiPreference, fourcc, fps, frameSize.nativeRef, (bool)isColor);
    return retVal;
}

- (BOOL)open:(NSString*)filename apiPreference:(int)apiPreference fourcc:(int)fourcc fps:(double)fps frameSize:(Size2i*)frameSize {
    bool retVal = self.nativePtr->open(cv::String(filename.UTF8String), apiPreference, fourcc, fps, frameSize.nativeRef);
    return retVal;
}


//
//  bool cv::VideoWriter::open(String filename, int fourcc, double fps, Size frameSize, vector_int params)
//
- (BOOL)open:(NSString*)filename fourcc:(int)fourcc fps:(double)fps frameSize:(Size2i*)frameSize params:(IntVector*)params {
    bool retVal = self.nativePtr->open(cv::String(filename.UTF8String), fourcc, fps, frameSize.nativeRef, params.nativeRef);
    return retVal;
}


//
//  bool cv::VideoWriter::open(String filename, int apiPreference, int fourcc, double fps, Size frameSize, vector_int params)
//
- (BOOL)open:(NSString*)filename apiPreference:(int)apiPreference fourcc:(int)fourcc fps:(double)fps frameSize:(Size2i*)frameSize params:(IntVector*)params {
    bool retVal = self.nativePtr->open(cv::String(filename.UTF8String), apiPreference, fourcc, fps, frameSize.nativeRef, params.nativeRef);
    return retVal;
}


//
//  bool cv::VideoWriter::isOpened()
//
- (BOOL)isOpened {
    bool retVal = self.nativePtr->isOpened();
    return retVal;
}


//
//  void cv::VideoWriter::write(Mat image)
//
- (void)write:(Mat*)image {
    self.nativePtr->write(image.nativeRef);
}


//
//  bool cv::VideoWriter::set(int propId, double value)
//
- (BOOL)set:(int)propId value:(double)value {
    bool retVal = self.nativePtr->set(propId, value);
    return retVal;
}


//
//  double cv::VideoWriter::get(int propId)
//
- (double)get:(int)propId {
    double retVal = self.nativePtr->get(propId);
    return retVal;
}


//
// static int cv::VideoWriter::fourcc(char c1, char c2, char c3, char c4)
//
+ (int)fourcc:(char)c1 c2:(char)c2 c3:(char)c3 c4:(char)c4 {
    int retVal = cv::VideoWriter::fourcc(c1, c2, c3, c4);
    return retVal;
}


//
//  String cv::VideoWriter::getBackendName()
//
- (NSString*)getBackendName {
    cv::String retVal = self.nativePtr->getBackendName();
    return [NSString stringWithUTF8String:retVal.c_str()];
}



@end



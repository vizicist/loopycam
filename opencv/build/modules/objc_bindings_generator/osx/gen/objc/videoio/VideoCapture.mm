//
// This file is auto-generated. Please don't modify it!
//

#import "VideoCapture.h"
#import "CVObjcUtil.h"

#import "IntVector.h"
#import "Mat.h"

@implementation VideoCapture


- (instancetype)initWithNativePtr:(cv::Ptr<cv::VideoCapture>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::VideoCapture>)nativePtr {
    return [[VideoCapture alloc] initWithNativePtr:nativePtr];
}



//
//   cv::VideoCapture::VideoCapture()
//
- (instancetype)init {
    return [self initWithNativePtr:cv::Ptr<cv::VideoCapture>(new cv::VideoCapture())];
}


//
//   cv::VideoCapture::VideoCapture(String filename, int apiPreference = CAP_ANY)
//
- (instancetype)initWithFilename:(NSString*)filename apiPreference:(int)apiPreference {
    return [self initWithNativePtr:cv::Ptr<cv::VideoCapture>(new cv::VideoCapture(cv::String(filename.UTF8String), apiPreference))];
}

- (instancetype)initWithFilename:(NSString*)filename {
    return [self initWithNativePtr:cv::Ptr<cv::VideoCapture>(new cv::VideoCapture(cv::String(filename.UTF8String)))];
}


//
//   cv::VideoCapture::VideoCapture(String filename, int apiPreference, vector_int params)
//
- (instancetype)initWithFilename:(NSString*)filename apiPreference:(int)apiPreference params:(IntVector*)params {
    return [self initWithNativePtr:cv::Ptr<cv::VideoCapture>(new cv::VideoCapture(cv::String(filename.UTF8String), apiPreference, params.nativeRef))];
}


//
//   cv::VideoCapture::VideoCapture(int index, int apiPreference = CAP_ANY)
//
- (instancetype)initWithIndex:(int)index apiPreference:(int)apiPreference {
    return [self initWithNativePtr:cv::Ptr<cv::VideoCapture>(new cv::VideoCapture(index, apiPreference))];
}

- (instancetype)initWithIndex:(int)index {
    return [self initWithNativePtr:cv::Ptr<cv::VideoCapture>(new cv::VideoCapture(index))];
}


//
//   cv::VideoCapture::VideoCapture(int index, int apiPreference, vector_int params)
//
- (instancetype)initWithIndex:(int)index apiPreference:(int)apiPreference params:(IntVector*)params {
    return [self initWithNativePtr:cv::Ptr<cv::VideoCapture>(new cv::VideoCapture(index, apiPreference, params.nativeRef))];
}


//
//  bool cv::VideoCapture::open(String filename, int apiPreference = CAP_ANY)
//
- (BOOL)open:(NSString*)filename apiPreference:(int)apiPreference {
    bool retVal = self.nativePtr->open(cv::String(filename.UTF8String), apiPreference);
    return retVal;
}

- (BOOL)open:(NSString*)filename {
    bool retVal = self.nativePtr->open(cv::String(filename.UTF8String));
    return retVal;
}


//
//  bool cv::VideoCapture::open(String filename, int apiPreference, vector_int params)
//
- (BOOL)open:(NSString*)filename apiPreference:(int)apiPreference params:(IntVector*)params {
    bool retVal = self.nativePtr->open(cv::String(filename.UTF8String), apiPreference, params.nativeRef);
    return retVal;
}


//
//  bool cv::VideoCapture::open(int index, int apiPreference = CAP_ANY)
//
- (BOOL)openWithIndex:(int)index apiPreference:(int)apiPreference {
    bool retVal = self.nativePtr->open(index, apiPreference);
    return retVal;
}

- (BOOL)openWithIndex:(int)index {
    bool retVal = self.nativePtr->open(index);
    return retVal;
}


//
//  bool cv::VideoCapture::open(int index, int apiPreference, vector_int params)
//
- (BOOL)openWithIndexAndParameters:(int)index apiPreference:(int)apiPreference params:(IntVector*)params {
    bool retVal = self.nativePtr->open(index, apiPreference, params.nativeRef);
    return retVal;
}


//
//  bool cv::VideoCapture::isOpened()
//
- (BOOL)isOpened {
    bool retVal = self.nativePtr->isOpened();
    return retVal;
}


//
//  bool cv::VideoCapture::grab()
//
- (BOOL)grab {
    bool retVal = self.nativePtr->grab();
    return retVal;
}


//
//  bool cv::VideoCapture::retrieve(Mat& image, int flag = 0)
//
- (BOOL)retrieve:(Mat*)image flag:(int)flag {
    bool retVal = self.nativePtr->retrieve(image.nativeRef, flag);
    return retVal;
}

- (BOOL)retrieve:(Mat*)image {
    bool retVal = self.nativePtr->retrieve(image.nativeRef);
    return retVal;
}


//
//  bool cv::VideoCapture::read(Mat& image)
//
- (BOOL)read:(Mat*)image {
    bool retVal = self.nativePtr->read(image.nativeRef);
    return retVal;
}


//
//  bool cv::VideoCapture::set(int propId, double value)
//
- (BOOL)set:(int)propId value:(double)value {
    bool retVal = self.nativePtr->set(propId, value);
    return retVal;
}


//
//  double cv::VideoCapture::get(int propId)
//
- (double)get:(int)propId {
    double retVal = self.nativePtr->get(propId);
    return retVal;
}


//
//  String cv::VideoCapture::getBackendName()
//
- (NSString*)getBackendName {
    cv::String retVal = self.nativePtr->getBackendName();
    return [NSString stringWithUTF8String:retVal.c_str()];
}


//
//  void cv::VideoCapture::setExceptionMode(bool enable)
//
- (void)setExceptionMode:(BOOL)enable {
    self.nativePtr->setExceptionMode((bool)enable);
}


//
//  bool cv::VideoCapture::getExceptionMode()
//
- (BOOL)getExceptionMode {
    bool retVal = self.nativePtr->getExceptionMode();
    return retVal;
}


//
// static bool cv::VideoCapture::waitAny(vector_VideoCapture streams, vector_int& readyIndex, int64 timeoutNs = 0)
//


@end



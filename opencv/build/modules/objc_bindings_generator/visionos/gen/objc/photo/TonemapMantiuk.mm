//
// This file is auto-generated. Please don't modify it!
//

#import "TonemapMantiuk.h"
#import "CVObjcUtil.h"



@implementation TonemapMantiuk


- (instancetype)initWithNativePtr:(cv::Ptr<cv::TonemapMantiuk>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrTonemapMantiuk = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::TonemapMantiuk>)nativePtr {
    return [[TonemapMantiuk alloc] initWithNativePtr:nativePtr];
}



//
//  float cv::TonemapMantiuk::getScale()
//
- (float)getScale {
    float retVal = self.nativePtrTonemapMantiuk->getScale();
    return retVal;
}


//
//  void cv::TonemapMantiuk::setScale(float scale)
//
- (void)setScale:(float)scale {
    self.nativePtrTonemapMantiuk->setScale(scale);
}


//
//  float cv::TonemapMantiuk::getSaturation()
//
- (float)getSaturation {
    float retVal = self.nativePtrTonemapMantiuk->getSaturation();
    return retVal;
}


//
//  void cv::TonemapMantiuk::setSaturation(float saturation)
//
- (void)setSaturation:(float)saturation {
    self.nativePtrTonemapMantiuk->setSaturation(saturation);
}



@end



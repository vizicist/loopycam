//
// This file is auto-generated. Please don't modify it!
//

#import "Tonemap.h"
#import "CVObjcUtil.h"

#import "Mat.h"

@implementation Tonemap


- (instancetype)initWithNativePtr:(cv::Ptr<cv::Tonemap>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrTonemap = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::Tonemap>)nativePtr {
    return [[Tonemap alloc] initWithNativePtr:nativePtr];
}



//
//  void cv::Tonemap::process(Mat src, Mat& dst)
//
- (void)process:(Mat*)src dst:(Mat*)dst {
    self.nativePtrTonemap->process(src.nativeRef, dst.nativeRef);
}


//
//  float cv::Tonemap::getGamma()
//
- (float)getGamma {
    float retVal = self.nativePtrTonemap->getGamma();
    return retVal;
}


//
//  void cv::Tonemap::setGamma(float gamma)
//
- (void)setGamma:(float)gamma {
    self.nativePtrTonemap->setGamma(gamma);
}



@end



//
// This file is auto-generated. Please don't modify it!
//

#import "BackgroundSubtractor.h"
#import "CVObjcUtil.h"

#import "Mat.h"

@implementation BackgroundSubtractor


- (instancetype)initWithNativePtr:(cv::Ptr<cv::BackgroundSubtractor>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrBackgroundSubtractor = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::BackgroundSubtractor>)nativePtr {
    return [[BackgroundSubtractor alloc] initWithNativePtr:nativePtr];
}



//
//  void cv::BackgroundSubtractor::apply(Mat image, Mat& fgmask, double learningRate = -1)
//
- (void)apply:(Mat*)image fgmask:(Mat*)fgmask learningRate:(double)learningRate {
    self.nativePtrBackgroundSubtractor->apply(image.nativeRef, fgmask.nativeRef, learningRate);
}

- (void)apply:(Mat*)image fgmask:(Mat*)fgmask {
    self.nativePtrBackgroundSubtractor->apply(image.nativeRef, fgmask.nativeRef);
}


//
//  void cv::BackgroundSubtractor::getBackgroundImage(Mat& backgroundImage)
//
- (void)getBackgroundImage:(Mat*)backgroundImage {
    self.nativePtrBackgroundSubtractor->getBackgroundImage(backgroundImage.nativeRef);
}



@end



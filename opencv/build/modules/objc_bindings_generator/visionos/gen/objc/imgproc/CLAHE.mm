//
// This file is auto-generated. Please don't modify it!
//

#import "CLAHE.h"
#import "CVObjcUtil.h"

#import "Mat.h"
#import "Size2i.h"

@implementation CLAHE


- (instancetype)initWithNativePtr:(cv::Ptr<cv::CLAHE>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrCLAHE = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::CLAHE>)nativePtr {
    return [[CLAHE alloc] initWithNativePtr:nativePtr];
}



//
//  void cv::CLAHE::apply(Mat src, Mat& dst)
//
- (void)apply:(Mat*)src dst:(Mat*)dst {
    self.nativePtrCLAHE->apply(src.nativeRef, dst.nativeRef);
}


//
//  void cv::CLAHE::setClipLimit(double clipLimit)
//
- (void)setClipLimit:(double)clipLimit {
    self.nativePtrCLAHE->setClipLimit(clipLimit);
}


//
//  double cv::CLAHE::getClipLimit()
//
- (double)getClipLimit {
    double retVal = self.nativePtrCLAHE->getClipLimit();
    return retVal;
}


//
//  void cv::CLAHE::setTilesGridSize(Size tileGridSize)
//
- (void)setTilesGridSize:(Size2i*)tileGridSize {
    self.nativePtrCLAHE->setTilesGridSize(tileGridSize.nativeRef);
}


//
//  Size cv::CLAHE::getTilesGridSize()
//
- (Size2i*)getTilesGridSize {
    cv::Size retVal = self.nativePtrCLAHE->getTilesGridSize();
    return [Size2i fromNative:retVal];
}


//
//  void cv::CLAHE::collectGarbage()
//
- (void)collectGarbage {
    self.nativePtrCLAHE->collectGarbage();
}



@end



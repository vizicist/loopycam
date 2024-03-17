//
// This file is auto-generated. Please don't modify it!
//

#import "StereoBM.h"
#import "CVObjcUtil.h"

#import "Rect2i.h"

@implementation StereoBM


- (instancetype)initWithNativePtr:(cv::Ptr<cv::StereoBM>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrStereoBM = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::StereoBM>)nativePtr {
    return [[StereoBM alloc] initWithNativePtr:nativePtr];
}


+ (int)PREFILTER_NORMALIZED_RESPONSE {
    return 0;
}

+ (int)PREFILTER_XSOBEL {
    return 1;
}


//
//  int cv::StereoBM::getPreFilterType()
//
- (int)getPreFilterType {
    int retVal = self.nativePtrStereoBM->getPreFilterType();
    return retVal;
}


//
//  void cv::StereoBM::setPreFilterType(int preFilterType)
//
- (void)setPreFilterType:(int)preFilterType {
    self.nativePtrStereoBM->setPreFilterType(preFilterType);
}


//
//  int cv::StereoBM::getPreFilterSize()
//
- (int)getPreFilterSize {
    int retVal = self.nativePtrStereoBM->getPreFilterSize();
    return retVal;
}


//
//  void cv::StereoBM::setPreFilterSize(int preFilterSize)
//
- (void)setPreFilterSize:(int)preFilterSize {
    self.nativePtrStereoBM->setPreFilterSize(preFilterSize);
}


//
//  int cv::StereoBM::getPreFilterCap()
//
- (int)getPreFilterCap {
    int retVal = self.nativePtrStereoBM->getPreFilterCap();
    return retVal;
}


//
//  void cv::StereoBM::setPreFilterCap(int preFilterCap)
//
- (void)setPreFilterCap:(int)preFilterCap {
    self.nativePtrStereoBM->setPreFilterCap(preFilterCap);
}


//
//  int cv::StereoBM::getTextureThreshold()
//
- (int)getTextureThreshold {
    int retVal = self.nativePtrStereoBM->getTextureThreshold();
    return retVal;
}


//
//  void cv::StereoBM::setTextureThreshold(int textureThreshold)
//
- (void)setTextureThreshold:(int)textureThreshold {
    self.nativePtrStereoBM->setTextureThreshold(textureThreshold);
}


//
//  int cv::StereoBM::getUniquenessRatio()
//
- (int)getUniquenessRatio {
    int retVal = self.nativePtrStereoBM->getUniquenessRatio();
    return retVal;
}


//
//  void cv::StereoBM::setUniquenessRatio(int uniquenessRatio)
//
- (void)setUniquenessRatio:(int)uniquenessRatio {
    self.nativePtrStereoBM->setUniquenessRatio(uniquenessRatio);
}


//
//  int cv::StereoBM::getSmallerBlockSize()
//
- (int)getSmallerBlockSize {
    int retVal = self.nativePtrStereoBM->getSmallerBlockSize();
    return retVal;
}


//
//  void cv::StereoBM::setSmallerBlockSize(int blockSize)
//
- (void)setSmallerBlockSize:(int)blockSize {
    self.nativePtrStereoBM->setSmallerBlockSize(blockSize);
}


//
//  Rect cv::StereoBM::getROI1()
//
- (Rect2i*)getROI1 {
    cv::Rect retVal = self.nativePtrStereoBM->getROI1();
    return [Rect2i fromNative:retVal];
}


//
//  void cv::StereoBM::setROI1(Rect roi1)
//
- (void)setROI1:(Rect2i*)roi1 {
    self.nativePtrStereoBM->setROI1(roi1.nativeRef);
}


//
//  Rect cv::StereoBM::getROI2()
//
- (Rect2i*)getROI2 {
    cv::Rect retVal = self.nativePtrStereoBM->getROI2();
    return [Rect2i fromNative:retVal];
}


//
//  void cv::StereoBM::setROI2(Rect roi2)
//
- (void)setROI2:(Rect2i*)roi2 {
    self.nativePtrStereoBM->setROI2(roi2.nativeRef);
}


//
// static Ptr_StereoBM cv::StereoBM::create(int numDisparities = 0, int blockSize = 21)
//
+ (StereoBM*)create:(int)numDisparities blockSize:(int)blockSize {
    cv::Ptr<cv::StereoBM> retVal = cv::StereoBM::create(numDisparities, blockSize);
    return [StereoBM fromNative:retVal];
}

+ (StereoBM*)create:(int)numDisparities {
    cv::Ptr<cv::StereoBM> retVal = cv::StereoBM::create(numDisparities);
    return [StereoBM fromNative:retVal];
}

+ (StereoBM*)create {
    cv::Ptr<cv::StereoBM> retVal = cv::StereoBM::create();
    return [StereoBM fromNative:retVal];
}



@end



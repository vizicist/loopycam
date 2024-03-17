//
// This file is auto-generated. Please don't modify it!
//

#import "StereoSGBM.h"
#import "CVObjcUtil.h"



@implementation StereoSGBM


- (instancetype)initWithNativePtr:(cv::Ptr<cv::StereoSGBM>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrStereoSGBM = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::StereoSGBM>)nativePtr {
    return [[StereoSGBM alloc] initWithNativePtr:nativePtr];
}


+ (int)MODE_SGBM {
    return 0;
}

+ (int)MODE_HH {
    return 1;
}

+ (int)MODE_SGBM_3WAY {
    return 2;
}

+ (int)MODE_HH4 {
    return 3;
}


//
//  int cv::StereoSGBM::getPreFilterCap()
//
- (int)getPreFilterCap {
    int retVal = self.nativePtrStereoSGBM->getPreFilterCap();
    return retVal;
}


//
//  void cv::StereoSGBM::setPreFilterCap(int preFilterCap)
//
- (void)setPreFilterCap:(int)preFilterCap {
    self.nativePtrStereoSGBM->setPreFilterCap(preFilterCap);
}


//
//  int cv::StereoSGBM::getUniquenessRatio()
//
- (int)getUniquenessRatio {
    int retVal = self.nativePtrStereoSGBM->getUniquenessRatio();
    return retVal;
}


//
//  void cv::StereoSGBM::setUniquenessRatio(int uniquenessRatio)
//
- (void)setUniquenessRatio:(int)uniquenessRatio {
    self.nativePtrStereoSGBM->setUniquenessRatio(uniquenessRatio);
}


//
//  int cv::StereoSGBM::getP1()
//
- (int)getP1 {
    int retVal = self.nativePtrStereoSGBM->getP1();
    return retVal;
}


//
//  void cv::StereoSGBM::setP1(int P1)
//
- (void)setP1:(int)P1 {
    self.nativePtrStereoSGBM->setP1(P1);
}


//
//  int cv::StereoSGBM::getP2()
//
- (int)getP2 {
    int retVal = self.nativePtrStereoSGBM->getP2();
    return retVal;
}


//
//  void cv::StereoSGBM::setP2(int P2)
//
- (void)setP2:(int)P2 {
    self.nativePtrStereoSGBM->setP2(P2);
}


//
//  int cv::StereoSGBM::getMode()
//
- (int)getMode {
    int retVal = self.nativePtrStereoSGBM->getMode();
    return retVal;
}


//
//  void cv::StereoSGBM::setMode(int mode)
//
- (void)setMode:(int)mode {
    self.nativePtrStereoSGBM->setMode(mode);
}


//
// static Ptr_StereoSGBM cv::StereoSGBM::create(int minDisparity = 0, int numDisparities = 16, int blockSize = 3, int P1 = 0, int P2 = 0, int disp12MaxDiff = 0, int preFilterCap = 0, int uniquenessRatio = 0, int speckleWindowSize = 0, int speckleRange = 0, int mode = StereoSGBM::MODE_SGBM)
//
+ (StereoSGBM*)create:(int)minDisparity numDisparities:(int)numDisparities blockSize:(int)blockSize P1:(int)P1 P2:(int)P2 disp12MaxDiff:(int)disp12MaxDiff preFilterCap:(int)preFilterCap uniquenessRatio:(int)uniquenessRatio speckleWindowSize:(int)speckleWindowSize speckleRange:(int)speckleRange mode:(int)mode {
    cv::Ptr<cv::StereoSGBM> retVal = cv::StereoSGBM::create(minDisparity, numDisparities, blockSize, P1, P2, disp12MaxDiff, preFilterCap, uniquenessRatio, speckleWindowSize, speckleRange, mode);
    return [StereoSGBM fromNative:retVal];
}

+ (StereoSGBM*)create:(int)minDisparity numDisparities:(int)numDisparities blockSize:(int)blockSize P1:(int)P1 P2:(int)P2 disp12MaxDiff:(int)disp12MaxDiff preFilterCap:(int)preFilterCap uniquenessRatio:(int)uniquenessRatio speckleWindowSize:(int)speckleWindowSize speckleRange:(int)speckleRange {
    cv::Ptr<cv::StereoSGBM> retVal = cv::StereoSGBM::create(minDisparity, numDisparities, blockSize, P1, P2, disp12MaxDiff, preFilterCap, uniquenessRatio, speckleWindowSize, speckleRange);
    return [StereoSGBM fromNative:retVal];
}

+ (StereoSGBM*)create:(int)minDisparity numDisparities:(int)numDisparities blockSize:(int)blockSize P1:(int)P1 P2:(int)P2 disp12MaxDiff:(int)disp12MaxDiff preFilterCap:(int)preFilterCap uniquenessRatio:(int)uniquenessRatio speckleWindowSize:(int)speckleWindowSize {
    cv::Ptr<cv::StereoSGBM> retVal = cv::StereoSGBM::create(minDisparity, numDisparities, blockSize, P1, P2, disp12MaxDiff, preFilterCap, uniquenessRatio, speckleWindowSize);
    return [StereoSGBM fromNative:retVal];
}

+ (StereoSGBM*)create:(int)minDisparity numDisparities:(int)numDisparities blockSize:(int)blockSize P1:(int)P1 P2:(int)P2 disp12MaxDiff:(int)disp12MaxDiff preFilterCap:(int)preFilterCap uniquenessRatio:(int)uniquenessRatio {
    cv::Ptr<cv::StereoSGBM> retVal = cv::StereoSGBM::create(minDisparity, numDisparities, blockSize, P1, P2, disp12MaxDiff, preFilterCap, uniquenessRatio);
    return [StereoSGBM fromNative:retVal];
}

+ (StereoSGBM*)create:(int)minDisparity numDisparities:(int)numDisparities blockSize:(int)blockSize P1:(int)P1 P2:(int)P2 disp12MaxDiff:(int)disp12MaxDiff preFilterCap:(int)preFilterCap {
    cv::Ptr<cv::StereoSGBM> retVal = cv::StereoSGBM::create(minDisparity, numDisparities, blockSize, P1, P2, disp12MaxDiff, preFilterCap);
    return [StereoSGBM fromNative:retVal];
}

+ (StereoSGBM*)create:(int)minDisparity numDisparities:(int)numDisparities blockSize:(int)blockSize P1:(int)P1 P2:(int)P2 disp12MaxDiff:(int)disp12MaxDiff {
    cv::Ptr<cv::StereoSGBM> retVal = cv::StereoSGBM::create(minDisparity, numDisparities, blockSize, P1, P2, disp12MaxDiff);
    return [StereoSGBM fromNative:retVal];
}

+ (StereoSGBM*)create:(int)minDisparity numDisparities:(int)numDisparities blockSize:(int)blockSize P1:(int)P1 P2:(int)P2 {
    cv::Ptr<cv::StereoSGBM> retVal = cv::StereoSGBM::create(minDisparity, numDisparities, blockSize, P1, P2);
    return [StereoSGBM fromNative:retVal];
}

+ (StereoSGBM*)create:(int)minDisparity numDisparities:(int)numDisparities blockSize:(int)blockSize P1:(int)P1 {
    cv::Ptr<cv::StereoSGBM> retVal = cv::StereoSGBM::create(minDisparity, numDisparities, blockSize, P1);
    return [StereoSGBM fromNative:retVal];
}

+ (StereoSGBM*)create:(int)minDisparity numDisparities:(int)numDisparities blockSize:(int)blockSize {
    cv::Ptr<cv::StereoSGBM> retVal = cv::StereoSGBM::create(minDisparity, numDisparities, blockSize);
    return [StereoSGBM fromNative:retVal];
}

+ (StereoSGBM*)create:(int)minDisparity numDisparities:(int)numDisparities {
    cv::Ptr<cv::StereoSGBM> retVal = cv::StereoSGBM::create(minDisparity, numDisparities);
    return [StereoSGBM fromNative:retVal];
}

+ (StereoSGBM*)create:(int)minDisparity {
    cv::Ptr<cv::StereoSGBM> retVal = cv::StereoSGBM::create(minDisparity);
    return [StereoSGBM fromNative:retVal];
}

+ (StereoSGBM*)create {
    cv::Ptr<cv::StereoSGBM> retVal = cv::StereoSGBM::create();
    return [StereoSGBM fromNative:retVal];
}



@end



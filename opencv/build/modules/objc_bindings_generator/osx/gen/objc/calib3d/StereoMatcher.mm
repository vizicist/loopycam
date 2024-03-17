//
// This file is auto-generated. Please don't modify it!
//

#import "StereoMatcher.h"
#import "CVObjcUtil.h"

#import "Mat.h"

@implementation StereoMatcher


- (instancetype)initWithNativePtr:(cv::Ptr<cv::StereoMatcher>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrStereoMatcher = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::StereoMatcher>)nativePtr {
    return [[StereoMatcher alloc] initWithNativePtr:nativePtr];
}


+ (int)DISP_SHIFT {
    return 4;
}

+ (int)DISP_SCALE {
    return (1 << StereoMatcher.DISP_SHIFT);
}


//
//  void cv::StereoMatcher::compute(Mat left, Mat right, Mat& disparity)
//
- (void)compute:(Mat*)left right:(Mat*)right disparity:(Mat*)disparity {
    self.nativePtrStereoMatcher->compute(left.nativeRef, right.nativeRef, disparity.nativeRef);
}


//
//  int cv::StereoMatcher::getMinDisparity()
//
- (int)getMinDisparity {
    int retVal = self.nativePtrStereoMatcher->getMinDisparity();
    return retVal;
}


//
//  void cv::StereoMatcher::setMinDisparity(int minDisparity)
//
- (void)setMinDisparity:(int)minDisparity {
    self.nativePtrStereoMatcher->setMinDisparity(minDisparity);
}


//
//  int cv::StereoMatcher::getNumDisparities()
//
- (int)getNumDisparities {
    int retVal = self.nativePtrStereoMatcher->getNumDisparities();
    return retVal;
}


//
//  void cv::StereoMatcher::setNumDisparities(int numDisparities)
//
- (void)setNumDisparities:(int)numDisparities {
    self.nativePtrStereoMatcher->setNumDisparities(numDisparities);
}


//
//  int cv::StereoMatcher::getBlockSize()
//
- (int)getBlockSize {
    int retVal = self.nativePtrStereoMatcher->getBlockSize();
    return retVal;
}


//
//  void cv::StereoMatcher::setBlockSize(int blockSize)
//
- (void)setBlockSize:(int)blockSize {
    self.nativePtrStereoMatcher->setBlockSize(blockSize);
}


//
//  int cv::StereoMatcher::getSpeckleWindowSize()
//
- (int)getSpeckleWindowSize {
    int retVal = self.nativePtrStereoMatcher->getSpeckleWindowSize();
    return retVal;
}


//
//  void cv::StereoMatcher::setSpeckleWindowSize(int speckleWindowSize)
//
- (void)setSpeckleWindowSize:(int)speckleWindowSize {
    self.nativePtrStereoMatcher->setSpeckleWindowSize(speckleWindowSize);
}


//
//  int cv::StereoMatcher::getSpeckleRange()
//
- (int)getSpeckleRange {
    int retVal = self.nativePtrStereoMatcher->getSpeckleRange();
    return retVal;
}


//
//  void cv::StereoMatcher::setSpeckleRange(int speckleRange)
//
- (void)setSpeckleRange:(int)speckleRange {
    self.nativePtrStereoMatcher->setSpeckleRange(speckleRange);
}


//
//  int cv::StereoMatcher::getDisp12MaxDiff()
//
- (int)getDisp12MaxDiff {
    int retVal = self.nativePtrStereoMatcher->getDisp12MaxDiff();
    return retVal;
}


//
//  void cv::StereoMatcher::setDisp12MaxDiff(int disp12MaxDiff)
//
- (void)setDisp12MaxDiff:(int)disp12MaxDiff {
    self.nativePtrStereoMatcher->setDisp12MaxDiff(disp12MaxDiff);
}



@end



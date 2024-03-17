//
// This file is auto-generated. Please don't modify it!
//

#import "BackgroundSubtractorMOG2.h"
#import "CVObjcUtil.h"

#import "Mat.h"

@implementation BackgroundSubtractorMOG2


- (instancetype)initWithNativePtr:(cv::Ptr<cv::BackgroundSubtractorMOG2>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrBackgroundSubtractorMOG2 = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::BackgroundSubtractorMOG2>)nativePtr {
    return [[BackgroundSubtractorMOG2 alloc] initWithNativePtr:nativePtr];
}



//
//  int cv::BackgroundSubtractorMOG2::getHistory()
//
- (int)getHistory {
    int retVal = self.nativePtrBackgroundSubtractorMOG2->getHistory();
    return retVal;
}


//
//  void cv::BackgroundSubtractorMOG2::setHistory(int history)
//
- (void)setHistory:(int)history {
    self.nativePtrBackgroundSubtractorMOG2->setHistory(history);
}


//
//  int cv::BackgroundSubtractorMOG2::getNMixtures()
//
- (int)getNMixtures {
    int retVal = self.nativePtrBackgroundSubtractorMOG2->getNMixtures();
    return retVal;
}


//
//  void cv::BackgroundSubtractorMOG2::setNMixtures(int nmixtures)
//
- (void)setNMixtures:(int)nmixtures {
    self.nativePtrBackgroundSubtractorMOG2->setNMixtures(nmixtures);
}


//
//  double cv::BackgroundSubtractorMOG2::getBackgroundRatio()
//
- (double)getBackgroundRatio {
    double retVal = self.nativePtrBackgroundSubtractorMOG2->getBackgroundRatio();
    return retVal;
}


//
//  void cv::BackgroundSubtractorMOG2::setBackgroundRatio(double ratio)
//
- (void)setBackgroundRatio:(double)ratio {
    self.nativePtrBackgroundSubtractorMOG2->setBackgroundRatio(ratio);
}


//
//  double cv::BackgroundSubtractorMOG2::getVarThreshold()
//
- (double)getVarThreshold {
    double retVal = self.nativePtrBackgroundSubtractorMOG2->getVarThreshold();
    return retVal;
}


//
//  void cv::BackgroundSubtractorMOG2::setVarThreshold(double varThreshold)
//
- (void)setVarThreshold:(double)varThreshold {
    self.nativePtrBackgroundSubtractorMOG2->setVarThreshold(varThreshold);
}


//
//  double cv::BackgroundSubtractorMOG2::getVarThresholdGen()
//
- (double)getVarThresholdGen {
    double retVal = self.nativePtrBackgroundSubtractorMOG2->getVarThresholdGen();
    return retVal;
}


//
//  void cv::BackgroundSubtractorMOG2::setVarThresholdGen(double varThresholdGen)
//
- (void)setVarThresholdGen:(double)varThresholdGen {
    self.nativePtrBackgroundSubtractorMOG2->setVarThresholdGen(varThresholdGen);
}


//
//  double cv::BackgroundSubtractorMOG2::getVarInit()
//
- (double)getVarInit {
    double retVal = self.nativePtrBackgroundSubtractorMOG2->getVarInit();
    return retVal;
}


//
//  void cv::BackgroundSubtractorMOG2::setVarInit(double varInit)
//
- (void)setVarInit:(double)varInit {
    self.nativePtrBackgroundSubtractorMOG2->setVarInit(varInit);
}


//
//  double cv::BackgroundSubtractorMOG2::getVarMin()
//
- (double)getVarMin {
    double retVal = self.nativePtrBackgroundSubtractorMOG2->getVarMin();
    return retVal;
}


//
//  void cv::BackgroundSubtractorMOG2::setVarMin(double varMin)
//
- (void)setVarMin:(double)varMin {
    self.nativePtrBackgroundSubtractorMOG2->setVarMin(varMin);
}


//
//  double cv::BackgroundSubtractorMOG2::getVarMax()
//
- (double)getVarMax {
    double retVal = self.nativePtrBackgroundSubtractorMOG2->getVarMax();
    return retVal;
}


//
//  void cv::BackgroundSubtractorMOG2::setVarMax(double varMax)
//
- (void)setVarMax:(double)varMax {
    self.nativePtrBackgroundSubtractorMOG2->setVarMax(varMax);
}


//
//  double cv::BackgroundSubtractorMOG2::getComplexityReductionThreshold()
//
- (double)getComplexityReductionThreshold {
    double retVal = self.nativePtrBackgroundSubtractorMOG2->getComplexityReductionThreshold();
    return retVal;
}


//
//  void cv::BackgroundSubtractorMOG2::setComplexityReductionThreshold(double ct)
//
- (void)setComplexityReductionThreshold:(double)ct {
    self.nativePtrBackgroundSubtractorMOG2->setComplexityReductionThreshold(ct);
}


//
//  bool cv::BackgroundSubtractorMOG2::getDetectShadows()
//
- (BOOL)getDetectShadows {
    bool retVal = self.nativePtrBackgroundSubtractorMOG2->getDetectShadows();
    return retVal;
}


//
//  void cv::BackgroundSubtractorMOG2::setDetectShadows(bool detectShadows)
//
- (void)setDetectShadows:(BOOL)detectShadows {
    self.nativePtrBackgroundSubtractorMOG2->setDetectShadows((bool)detectShadows);
}


//
//  int cv::BackgroundSubtractorMOG2::getShadowValue()
//
- (int)getShadowValue {
    int retVal = self.nativePtrBackgroundSubtractorMOG2->getShadowValue();
    return retVal;
}


//
//  void cv::BackgroundSubtractorMOG2::setShadowValue(int value)
//
- (void)setShadowValue:(int)value {
    self.nativePtrBackgroundSubtractorMOG2->setShadowValue(value);
}


//
//  double cv::BackgroundSubtractorMOG2::getShadowThreshold()
//
- (double)getShadowThreshold {
    double retVal = self.nativePtrBackgroundSubtractorMOG2->getShadowThreshold();
    return retVal;
}


//
//  void cv::BackgroundSubtractorMOG2::setShadowThreshold(double threshold)
//
- (void)setShadowThreshold:(double)threshold {
    self.nativePtrBackgroundSubtractorMOG2->setShadowThreshold(threshold);
}


//
//  void cv::BackgroundSubtractorMOG2::apply(Mat image, Mat& fgmask, double learningRate = -1)
//
- (void)apply:(Mat*)image fgmask:(Mat*)fgmask learningRate:(double)learningRate {
    self.nativePtrBackgroundSubtractorMOG2->apply(image.nativeRef, fgmask.nativeRef, learningRate);
}

- (void)apply:(Mat*)image fgmask:(Mat*)fgmask {
    self.nativePtrBackgroundSubtractorMOG2->apply(image.nativeRef, fgmask.nativeRef);
}



@end



//
// This file is auto-generated. Please don't modify it!
//

#import "BackgroundSubtractorKNN.h"
#import "CVObjcUtil.h"



@implementation BackgroundSubtractorKNN


- (instancetype)initWithNativePtr:(cv::Ptr<cv::BackgroundSubtractorKNN>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrBackgroundSubtractorKNN = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::BackgroundSubtractorKNN>)nativePtr {
    return [[BackgroundSubtractorKNN alloc] initWithNativePtr:nativePtr];
}



//
//  int cv::BackgroundSubtractorKNN::getHistory()
//
- (int)getHistory {
    int retVal = self.nativePtrBackgroundSubtractorKNN->getHistory();
    return retVal;
}


//
//  void cv::BackgroundSubtractorKNN::setHistory(int history)
//
- (void)setHistory:(int)history {
    self.nativePtrBackgroundSubtractorKNN->setHistory(history);
}


//
//  int cv::BackgroundSubtractorKNN::getNSamples()
//
- (int)getNSamples {
    int retVal = self.nativePtrBackgroundSubtractorKNN->getNSamples();
    return retVal;
}


//
//  void cv::BackgroundSubtractorKNN::setNSamples(int _nN)
//
- (void)setNSamples:(int)_nN {
    self.nativePtrBackgroundSubtractorKNN->setNSamples(_nN);
}


//
//  double cv::BackgroundSubtractorKNN::getDist2Threshold()
//
- (double)getDist2Threshold {
    double retVal = self.nativePtrBackgroundSubtractorKNN->getDist2Threshold();
    return retVal;
}


//
//  void cv::BackgroundSubtractorKNN::setDist2Threshold(double _dist2Threshold)
//
- (void)setDist2Threshold:(double)_dist2Threshold {
    self.nativePtrBackgroundSubtractorKNN->setDist2Threshold(_dist2Threshold);
}


//
//  int cv::BackgroundSubtractorKNN::getkNNSamples()
//
- (int)getkNNSamples {
    int retVal = self.nativePtrBackgroundSubtractorKNN->getkNNSamples();
    return retVal;
}


//
//  void cv::BackgroundSubtractorKNN::setkNNSamples(int _nkNN)
//
- (void)setkNNSamples:(int)_nkNN {
    self.nativePtrBackgroundSubtractorKNN->setkNNSamples(_nkNN);
}


//
//  bool cv::BackgroundSubtractorKNN::getDetectShadows()
//
- (BOOL)getDetectShadows {
    bool retVal = self.nativePtrBackgroundSubtractorKNN->getDetectShadows();
    return retVal;
}


//
//  void cv::BackgroundSubtractorKNN::setDetectShadows(bool detectShadows)
//
- (void)setDetectShadows:(BOOL)detectShadows {
    self.nativePtrBackgroundSubtractorKNN->setDetectShadows((bool)detectShadows);
}


//
//  int cv::BackgroundSubtractorKNN::getShadowValue()
//
- (int)getShadowValue {
    int retVal = self.nativePtrBackgroundSubtractorKNN->getShadowValue();
    return retVal;
}


//
//  void cv::BackgroundSubtractorKNN::setShadowValue(int value)
//
- (void)setShadowValue:(int)value {
    self.nativePtrBackgroundSubtractorKNN->setShadowValue(value);
}


//
//  double cv::BackgroundSubtractorKNN::getShadowThreshold()
//
- (double)getShadowThreshold {
    double retVal = self.nativePtrBackgroundSubtractorKNN->getShadowThreshold();
    return retVal;
}


//
//  void cv::BackgroundSubtractorKNN::setShadowThreshold(double threshold)
//
- (void)setShadowThreshold:(double)threshold {
    self.nativePtrBackgroundSubtractorKNN->setShadowThreshold(threshold);
}



@end



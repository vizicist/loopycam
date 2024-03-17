//
// This file is auto-generated. Please don't modify it!
//

#import "FastFeatureDetector.h"
#import "CVObjcUtil.h"



@implementation FastFeatureDetector


- (instancetype)initWithNativePtr:(cv::Ptr<cv::FastFeatureDetector>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrFastFeatureDetector = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::FastFeatureDetector>)nativePtr {
    return [[FastFeatureDetector alloc] initWithNativePtr:nativePtr];
}


+ (int)THRESHOLD {
    return 10000;
}

+ (int)NONMAX_SUPPRESSION {
    return 10001;
}

+ (int)FAST_N {
    return 10002;
}


//
// static Ptr_FastFeatureDetector cv::FastFeatureDetector::create(int threshold = 10, bool nonmaxSuppression = true, FastFeatureDetector_DetectorType type = FastFeatureDetector::TYPE_9_16)
//
+ (FastFeatureDetector*)create:(int)threshold nonmaxSuppression:(BOOL)nonmaxSuppression type:(FastDetectorType)type {
    cv::Ptr<cv::FastFeatureDetector> retVal = cv::FastFeatureDetector::create(threshold, (bool)nonmaxSuppression, (cv::FastFeatureDetector::DetectorType)type);
    return [FastFeatureDetector fromNative:retVal];
}

+ (FastFeatureDetector*)create:(int)threshold nonmaxSuppression:(BOOL)nonmaxSuppression {
    cv::Ptr<cv::FastFeatureDetector> retVal = cv::FastFeatureDetector::create(threshold, (bool)nonmaxSuppression);
    return [FastFeatureDetector fromNative:retVal];
}

+ (FastFeatureDetector*)create:(int)threshold {
    cv::Ptr<cv::FastFeatureDetector> retVal = cv::FastFeatureDetector::create(threshold);
    return [FastFeatureDetector fromNative:retVal];
}

+ (FastFeatureDetector*)create {
    cv::Ptr<cv::FastFeatureDetector> retVal = cv::FastFeatureDetector::create();
    return [FastFeatureDetector fromNative:retVal];
}


//
//  void cv::FastFeatureDetector::setThreshold(int threshold)
//
- (void)setThreshold:(int)threshold {
    self.nativePtrFastFeatureDetector->setThreshold(threshold);
}


//
//  int cv::FastFeatureDetector::getThreshold()
//
- (int)getThreshold {
    int retVal = self.nativePtrFastFeatureDetector->getThreshold();
    return retVal;
}


//
//  void cv::FastFeatureDetector::setNonmaxSuppression(bool f)
//
- (void)setNonmaxSuppression:(BOOL)f {
    self.nativePtrFastFeatureDetector->setNonmaxSuppression((bool)f);
}


//
//  bool cv::FastFeatureDetector::getNonmaxSuppression()
//
- (BOOL)getNonmaxSuppression {
    bool retVal = self.nativePtrFastFeatureDetector->getNonmaxSuppression();
    return retVal;
}


//
//  void cv::FastFeatureDetector::setType(FastFeatureDetector_DetectorType type)
//
- (void)setType:(FastDetectorType)type {
    self.nativePtrFastFeatureDetector->setType((cv::FastFeatureDetector::DetectorType)type);
}


//
//  FastFeatureDetector_DetectorType cv::FastFeatureDetector::getType()
//
- (FastDetectorType)getType {
    cv::FastFeatureDetector::DetectorType retVal = self.nativePtrFastFeatureDetector->getType();
    return (FastDetectorType)retVal;
}


//
//  String cv::FastFeatureDetector::getDefaultName()
//
- (NSString*)getDefaultName {
    cv::String retVal = self.nativePtrFastFeatureDetector->getDefaultName();
    return [NSString stringWithUTF8String:retVal.c_str()];
}



@end



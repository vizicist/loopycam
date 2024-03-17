//
// This file is auto-generated. Please don't modify it!
//

#import "AgastFeatureDetector.h"
#import "CVObjcUtil.h"



@implementation AgastFeatureDetector


- (instancetype)initWithNativePtr:(cv::Ptr<cv::AgastFeatureDetector>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrAgastFeatureDetector = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::AgastFeatureDetector>)nativePtr {
    return [[AgastFeatureDetector alloc] initWithNativePtr:nativePtr];
}


+ (int)THRESHOLD {
    return 10000;
}

+ (int)NONMAX_SUPPRESSION {
    return 10001;
}


//
// static Ptr_AgastFeatureDetector cv::AgastFeatureDetector::create(int threshold = 10, bool nonmaxSuppression = true, AgastFeatureDetector_DetectorType type = AgastFeatureDetector::OAST_9_16)
//
+ (AgastFeatureDetector*)create:(int)threshold nonmaxSuppression:(BOOL)nonmaxSuppression type:(AgastDetectorType)type {
    cv::Ptr<cv::AgastFeatureDetector> retVal = cv::AgastFeatureDetector::create(threshold, (bool)nonmaxSuppression, (cv::AgastFeatureDetector::DetectorType)type);
    return [AgastFeatureDetector fromNative:retVal];
}

+ (AgastFeatureDetector*)create:(int)threshold nonmaxSuppression:(BOOL)nonmaxSuppression {
    cv::Ptr<cv::AgastFeatureDetector> retVal = cv::AgastFeatureDetector::create(threshold, (bool)nonmaxSuppression);
    return [AgastFeatureDetector fromNative:retVal];
}

+ (AgastFeatureDetector*)create:(int)threshold {
    cv::Ptr<cv::AgastFeatureDetector> retVal = cv::AgastFeatureDetector::create(threshold);
    return [AgastFeatureDetector fromNative:retVal];
}

+ (AgastFeatureDetector*)create {
    cv::Ptr<cv::AgastFeatureDetector> retVal = cv::AgastFeatureDetector::create();
    return [AgastFeatureDetector fromNative:retVal];
}


//
//  void cv::AgastFeatureDetector::setThreshold(int threshold)
//
- (void)setThreshold:(int)threshold {
    self.nativePtrAgastFeatureDetector->setThreshold(threshold);
}


//
//  int cv::AgastFeatureDetector::getThreshold()
//
- (int)getThreshold {
    int retVal = self.nativePtrAgastFeatureDetector->getThreshold();
    return retVal;
}


//
//  void cv::AgastFeatureDetector::setNonmaxSuppression(bool f)
//
- (void)setNonmaxSuppression:(BOOL)f {
    self.nativePtrAgastFeatureDetector->setNonmaxSuppression((bool)f);
}


//
//  bool cv::AgastFeatureDetector::getNonmaxSuppression()
//
- (BOOL)getNonmaxSuppression {
    bool retVal = self.nativePtrAgastFeatureDetector->getNonmaxSuppression();
    return retVal;
}


//
//  void cv::AgastFeatureDetector::setType(AgastFeatureDetector_DetectorType type)
//
- (void)setType:(AgastDetectorType)type {
    self.nativePtrAgastFeatureDetector->setType((cv::AgastFeatureDetector::DetectorType)type);
}


//
//  AgastFeatureDetector_DetectorType cv::AgastFeatureDetector::getType()
//
- (AgastDetectorType)getType {
    cv::AgastFeatureDetector::DetectorType retVal = self.nativePtrAgastFeatureDetector->getType();
    return (AgastDetectorType)retVal;
}


//
//  String cv::AgastFeatureDetector::getDefaultName()
//
- (NSString*)getDefaultName {
    cv::String retVal = self.nativePtrAgastFeatureDetector->getDefaultName();
    return [NSString stringWithUTF8String:retVal.c_str()];
}



@end



//
// This file is auto-generated. Please don't modify it!
//

#import "CalibrateRobertson.h"
#import "CVObjcUtil.h"

#import "Mat.h"

@implementation CalibrateRobertson


- (instancetype)initWithNativePtr:(cv::Ptr<cv::CalibrateRobertson>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrCalibrateRobertson = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::CalibrateRobertson>)nativePtr {
    return [[CalibrateRobertson alloc] initWithNativePtr:nativePtr];
}



//
//  int cv::CalibrateRobertson::getMaxIter()
//
- (int)getMaxIter {
    int retVal = self.nativePtrCalibrateRobertson->getMaxIter();
    return retVal;
}


//
//  void cv::CalibrateRobertson::setMaxIter(int max_iter)
//
- (void)setMaxIter:(int)max_iter {
    self.nativePtrCalibrateRobertson->setMaxIter(max_iter);
}


//
//  float cv::CalibrateRobertson::getThreshold()
//
- (float)getThreshold {
    float retVal = self.nativePtrCalibrateRobertson->getThreshold();
    return retVal;
}


//
//  void cv::CalibrateRobertson::setThreshold(float threshold)
//
- (void)setThreshold:(float)threshold {
    self.nativePtrCalibrateRobertson->setThreshold(threshold);
}


//
//  Mat cv::CalibrateRobertson::getRadiance()
//
- (Mat*)getRadiance {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtrCalibrateRobertson->getRadiance());
    return [Mat fromNativePtr:retVal];
}



@end



//
// This file is auto-generated. Please don't modify it!
//

#import "TrackerNano.h"
#import "CVObjcUtil.h"

#import "TrackerNanoParams.h"

@implementation TrackerNano


- (instancetype)initWithNativePtr:(cv::Ptr<cv::TrackerNano>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrTrackerNano = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::TrackerNano>)nativePtr {
    return [[TrackerNano alloc] initWithNativePtr:nativePtr];
}



//
// static Ptr_TrackerNano cv::TrackerNano::create(TrackerNano_Params parameters = TrackerNano::Params())
//
+ (TrackerNano*)create:(TrackerNanoParams*)parameters {
    cv::Ptr<cv::TrackerNano> retVal = cv::TrackerNano::create(*(parameters.nativePtr));
    return [TrackerNano fromNative:retVal];
}

+ (TrackerNano*)create {
    cv::Ptr<cv::TrackerNano> retVal = cv::TrackerNano::create();
    return [TrackerNano fromNative:retVal];
}


//
//  float cv::TrackerNano::getTrackingScore()
//
- (float)getTrackingScore {
    float retVal = self.nativePtrTrackerNano->getTrackingScore();
    return retVal;
}



@end



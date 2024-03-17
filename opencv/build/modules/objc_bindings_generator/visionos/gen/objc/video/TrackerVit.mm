//
// This file is auto-generated. Please don't modify it!
//

#import "TrackerVit.h"
#import "CVObjcUtil.h"

#import "TrackerVitParams.h"

@implementation TrackerVit


- (instancetype)initWithNativePtr:(cv::Ptr<cv::TrackerVit>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrTrackerVit = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::TrackerVit>)nativePtr {
    return [[TrackerVit alloc] initWithNativePtr:nativePtr];
}



//
// static Ptr_TrackerVit cv::TrackerVit::create(TrackerVit_Params parameters = TrackerVit::Params())
//
+ (TrackerVit*)create:(TrackerVitParams*)parameters {
    cv::Ptr<cv::TrackerVit> retVal = cv::TrackerVit::create(*(parameters.nativePtr));
    return [TrackerVit fromNative:retVal];
}

+ (TrackerVit*)create {
    cv::Ptr<cv::TrackerVit> retVal = cv::TrackerVit::create();
    return [TrackerVit fromNative:retVal];
}


//
//  float cv::TrackerVit::getTrackingScore()
//
- (float)getTrackingScore {
    float retVal = self.nativePtrTrackerVit->getTrackingScore();
    return retVal;
}



@end



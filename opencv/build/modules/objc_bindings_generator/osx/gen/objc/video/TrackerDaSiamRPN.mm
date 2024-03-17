//
// This file is auto-generated. Please don't modify it!
//

#import "TrackerDaSiamRPN.h"
#import "CVObjcUtil.h"

#import "TrackerDaSiamRPNParams.h"

@implementation TrackerDaSiamRPN


- (instancetype)initWithNativePtr:(cv::Ptr<cv::TrackerDaSiamRPN>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrTrackerDaSiamRPN = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::TrackerDaSiamRPN>)nativePtr {
    return [[TrackerDaSiamRPN alloc] initWithNativePtr:nativePtr];
}



//
// static Ptr_TrackerDaSiamRPN cv::TrackerDaSiamRPN::create(TrackerDaSiamRPN_Params parameters = TrackerDaSiamRPN::Params())
//
+ (TrackerDaSiamRPN*)create:(TrackerDaSiamRPNParams*)parameters {
    cv::Ptr<cv::TrackerDaSiamRPN> retVal = cv::TrackerDaSiamRPN::create(*(parameters.nativePtr));
    return [TrackerDaSiamRPN fromNative:retVal];
}

+ (TrackerDaSiamRPN*)create {
    cv::Ptr<cv::TrackerDaSiamRPN> retVal = cv::TrackerDaSiamRPN::create();
    return [TrackerDaSiamRPN fromNative:retVal];
}


//
//  float cv::TrackerDaSiamRPN::getTrackingScore()
//
- (float)getTrackingScore {
    float retVal = self.nativePtrTrackerDaSiamRPN->getTrackingScore();
    return retVal;
}



@end



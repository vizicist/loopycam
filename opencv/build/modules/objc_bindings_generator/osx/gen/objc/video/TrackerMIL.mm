//
// This file is auto-generated. Please don't modify it!
//

#import "TrackerMIL.h"
#import "CVObjcUtil.h"

#import "TrackerMILParams.h"

@implementation TrackerMIL


- (instancetype)initWithNativePtr:(cv::Ptr<cv::TrackerMIL>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrTrackerMIL = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::TrackerMIL>)nativePtr {
    return [[TrackerMIL alloc] initWithNativePtr:nativePtr];
}



//
// static Ptr_TrackerMIL cv::TrackerMIL::create(TrackerMIL_Params parameters = TrackerMIL::Params())
//
+ (TrackerMIL*)create:(TrackerMILParams*)parameters {
    cv::Ptr<cv::TrackerMIL> retVal = cv::TrackerMIL::create(*(parameters.nativePtr));
    return [TrackerMIL fromNative:retVal];
}

+ (TrackerMIL*)create {
    cv::Ptr<cv::TrackerMIL> retVal = cv::TrackerMIL::create();
    return [TrackerMIL fromNative:retVal];
}



@end



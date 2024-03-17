//
// This file is auto-generated. Please don't modify it!
//

#import "TrackerGOTURN.h"
#import "CVObjcUtil.h"

#import "TrackerGOTURNParams.h"

@implementation TrackerGOTURN


- (instancetype)initWithNativePtr:(cv::Ptr<cv::TrackerGOTURN>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrTrackerGOTURN = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::TrackerGOTURN>)nativePtr {
    return [[TrackerGOTURN alloc] initWithNativePtr:nativePtr];
}



//
// static Ptr_TrackerGOTURN cv::TrackerGOTURN::create(TrackerGOTURN_Params parameters = TrackerGOTURN::Params())
//
+ (TrackerGOTURN*)create:(TrackerGOTURNParams*)parameters {
    cv::Ptr<cv::TrackerGOTURN> retVal = cv::TrackerGOTURN::create(*(parameters.nativePtr));
    return [TrackerGOTURN fromNative:retVal];
}

+ (TrackerGOTURN*)create {
    cv::Ptr<cv::TrackerGOTURN> retVal = cv::TrackerGOTURN::create();
    return [TrackerGOTURN fromNative:retVal];
}



@end



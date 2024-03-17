//
// This file is auto-generated. Please don't modify it!
//

#import "FlannBasedMatcher.h"
#import "CVObjcUtil.h"



@implementation FlannBasedMatcher


- (instancetype)initWithNativePtr:(cv::Ptr<cv::FlannBasedMatcher>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrFlannBasedMatcher = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::FlannBasedMatcher>)nativePtr {
    return [[FlannBasedMatcher alloc] initWithNativePtr:nativePtr];
}



//
//   cv::FlannBasedMatcher::FlannBasedMatcher( _hidden_  indexParams = cv::makePtr<cv::flann::KDTreeIndexParams>(),  _hidden_  searchParams = cv::makePtr<cv::flann::SearchParams>())
//
- (instancetype)initWithIndexParams {
    return [self initWithNativePtr:cv::Ptr<cv::FlannBasedMatcher>(new cv::FlannBasedMatcher(cv::makePtr<cv::flann::KDTreeIndexParams>(), cv::makePtr<cv::flann::SearchParams>()))];
}


//
// static Ptr_FlannBasedMatcher cv::FlannBasedMatcher::create()
//
+ (FlannBasedMatcher*)create {
    cv::Ptr<cv::FlannBasedMatcher> retVal = cv::FlannBasedMatcher::create();
    return [FlannBasedMatcher fromNative:retVal];
}



@end



//
// This file is auto-generated. Please don't modify it!
//

#import "BFMatcher.h"
#import "CVObjcUtil.h"

#import "Core.h"

@implementation BFMatcher


- (instancetype)initWithNativePtr:(cv::Ptr<cv::BFMatcher>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrBFMatcher = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::BFMatcher>)nativePtr {
    return [[BFMatcher alloc] initWithNativePtr:nativePtr];
}



//
//   cv::BFMatcher::BFMatcher(NormTypes normType = NORM_L2, bool crossCheck = false)
//
- (instancetype)initWithNormType:(NormTypes)normType crossCheck:(BOOL)crossCheck {
    return [self initWithNativePtr:cv::Ptr<cv::BFMatcher>(new cv::BFMatcher((cv::NormTypes)normType, (bool)crossCheck))];
}

- (instancetype)initWithNormType:(NormTypes)normType {
    return [self initWithNativePtr:cv::Ptr<cv::BFMatcher>(new cv::BFMatcher((cv::NormTypes)normType))];
}

- (instancetype)init {
    return [self initWithNativePtr:cv::Ptr<cv::BFMatcher>(new cv::BFMatcher())];
}


//
// static Ptr_BFMatcher cv::BFMatcher::create(NormTypes normType = NORM_L2, bool crossCheck = false)
//
+ (BFMatcher*)createBFMatcher:(NormTypes)normType crossCheck:(BOOL)crossCheck {
    cv::Ptr<cv::BFMatcher> retVal = cv::BFMatcher::create((cv::NormTypes)normType, (bool)crossCheck);
    return [BFMatcher fromNative:retVal];
}

+ (BFMatcher*)createBFMatcher:(NormTypes)normType {
    cv::Ptr<cv::BFMatcher> retVal = cv::BFMatcher::create((cv::NormTypes)normType);
    return [BFMatcher fromNative:retVal];
}

+ (BFMatcher*)createBFMatcher {
    cv::Ptr<cv::BFMatcher> retVal = cv::BFMatcher::create();
    return [BFMatcher fromNative:retVal];
}



@end



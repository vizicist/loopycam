//
// This file is auto-generated. Please don't modify it!
//

#import "BaseCascadeClassifier.h"
#import "CVObjcUtil.h"



@implementation BaseCascadeClassifier


- (instancetype)initWithNativePtr:(cv::Ptr<cv::BaseCascadeClassifier>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrBaseCascadeClassifier = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::BaseCascadeClassifier>)nativePtr {
    return [[BaseCascadeClassifier alloc] initWithNativePtr:nativePtr];
}




@end



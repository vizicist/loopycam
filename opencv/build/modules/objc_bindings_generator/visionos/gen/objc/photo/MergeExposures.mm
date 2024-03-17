//
// This file is auto-generated. Please don't modify it!
//

#import "MergeExposures.h"
#import "CVObjcUtil.h"

#import "Mat.h"

@implementation MergeExposures


- (instancetype)initWithNativePtr:(cv::Ptr<cv::MergeExposures>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrMergeExposures = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::MergeExposures>)nativePtr {
    return [[MergeExposures alloc] initWithNativePtr:nativePtr];
}



//
//  void cv::MergeExposures::process(vector_Mat src, Mat& dst, Mat times, Mat response)
//
- (void)process:(NSArray<Mat*>*)src dst:(Mat*)dst times:(Mat*)times response:(Mat*)response {
    OBJC2CV(cv::Mat, Mat, srcVector, src);
    self.nativePtrMergeExposures->process(srcVector, dst.nativeRef, times.nativeRef, response.nativeRef);
}



@end



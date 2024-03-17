//
// This file is auto-generated. Please don't modify it!
//

#import "AlignExposures.h"
#import "CVObjcUtil.h"

#import "Mat.h"

@implementation AlignExposures


- (instancetype)initWithNativePtr:(cv::Ptr<cv::AlignExposures>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrAlignExposures = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::AlignExposures>)nativePtr {
    return [[AlignExposures alloc] initWithNativePtr:nativePtr];
}



//
//  void cv::AlignExposures::process(vector_Mat src, vector_Mat dst, Mat times, Mat response)
//
- (void)process:(NSArray<Mat*>*)src dst:(NSArray<Mat*>*)dst times:(Mat*)times response:(Mat*)response {
    OBJC2CV(cv::Mat, Mat, srcVector, src);
    OBJC2CV(cv::Mat, Mat, dstVector, dst);
    self.nativePtrAlignExposures->process(srcVector, dstVector, times.nativeRef, response.nativeRef);
}



@end



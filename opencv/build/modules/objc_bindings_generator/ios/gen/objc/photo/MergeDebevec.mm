//
// This file is auto-generated. Please don't modify it!
//

#import "MergeDebevec.h"
#import "CVObjcUtil.h"

#import "Mat.h"

@implementation MergeDebevec


- (instancetype)initWithNativePtr:(cv::Ptr<cv::MergeDebevec>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrMergeDebevec = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::MergeDebevec>)nativePtr {
    return [[MergeDebevec alloc] initWithNativePtr:nativePtr];
}



//
//  void cv::MergeDebevec::process(vector_Mat src, Mat& dst, Mat times, Mat response)
//
- (void)process:(NSArray<Mat*>*)src dst:(Mat*)dst times:(Mat*)times response:(Mat*)response {
    OBJC2CV(cv::Mat, Mat, srcVector, src);
    self.nativePtrMergeDebevec->process(srcVector, dst.nativeRef, times.nativeRef, response.nativeRef);
}


//
//  void cv::MergeDebevec::process(vector_Mat src, Mat& dst, Mat times)
//
- (void)process:(NSArray<Mat*>*)src dst:(Mat*)dst times:(Mat*)times {
    OBJC2CV(cv::Mat, Mat, srcVector, src);
    self.nativePtrMergeDebevec->process(srcVector, dst.nativeRef, times.nativeRef);
}



@end



//
// This file is auto-generated. Please don't modify it!
//

#import "MergeRobertson.h"
#import "CVObjcUtil.h"

#import "Mat.h"

@implementation MergeRobertson


- (instancetype)initWithNativePtr:(cv::Ptr<cv::MergeRobertson>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrMergeRobertson = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::MergeRobertson>)nativePtr {
    return [[MergeRobertson alloc] initWithNativePtr:nativePtr];
}



//
//  void cv::MergeRobertson::process(vector_Mat src, Mat& dst, Mat times, Mat response)
//
- (void)process:(NSArray<Mat*>*)src dst:(Mat*)dst times:(Mat*)times response:(Mat*)response {
    OBJC2CV(cv::Mat, Mat, srcVector, src);
    self.nativePtrMergeRobertson->process(srcVector, dst.nativeRef, times.nativeRef, response.nativeRef);
}


//
//  void cv::MergeRobertson::process(vector_Mat src, Mat& dst, Mat times)
//
- (void)process:(NSArray<Mat*>*)src dst:(Mat*)dst times:(Mat*)times {
    OBJC2CV(cv::Mat, Mat, srcVector, src);
    self.nativePtrMergeRobertson->process(srcVector, dst.nativeRef, times.nativeRef);
}



@end



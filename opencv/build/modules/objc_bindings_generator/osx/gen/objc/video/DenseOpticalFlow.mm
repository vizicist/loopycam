//
// This file is auto-generated. Please don't modify it!
//

#import "DenseOpticalFlow.h"
#import "CVObjcUtil.h"

#import "Mat.h"

@implementation DenseOpticalFlow


- (instancetype)initWithNativePtr:(cv::Ptr<cv::DenseOpticalFlow>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrDenseOpticalFlow = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::DenseOpticalFlow>)nativePtr {
    return [[DenseOpticalFlow alloc] initWithNativePtr:nativePtr];
}



//
//  void cv::DenseOpticalFlow::calc(Mat I0, Mat I1, Mat& flow)
//
- (void)calc:(Mat*)I0 I1:(Mat*)I1 flow:(Mat*)flow {
    self.nativePtrDenseOpticalFlow->calc(I0.nativeRef, I1.nativeRef, flow.nativeRef);
}


//
//  void cv::DenseOpticalFlow::collectGarbage()
//
- (void)collectGarbage {
    self.nativePtrDenseOpticalFlow->collectGarbage();
}



@end



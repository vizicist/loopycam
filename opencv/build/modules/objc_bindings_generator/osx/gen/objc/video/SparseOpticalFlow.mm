//
// This file is auto-generated. Please don't modify it!
//

#import "SparseOpticalFlow.h"
#import "CVObjcUtil.h"

#import "Mat.h"

@implementation SparseOpticalFlow


- (instancetype)initWithNativePtr:(cv::Ptr<cv::SparseOpticalFlow>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrSparseOpticalFlow = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::SparseOpticalFlow>)nativePtr {
    return [[SparseOpticalFlow alloc] initWithNativePtr:nativePtr];
}



//
//  void cv::SparseOpticalFlow::calc(Mat prevImg, Mat nextImg, Mat prevPts, Mat& nextPts, Mat& status, Mat& err = cv::Mat())
//
- (void)calc:(Mat*)prevImg nextImg:(Mat*)nextImg prevPts:(Mat*)prevPts nextPts:(Mat*)nextPts status:(Mat*)status err:(Mat*)err {
    self.nativePtrSparseOpticalFlow->calc(prevImg.nativeRef, nextImg.nativeRef, prevPts.nativeRef, nextPts.nativeRef, status.nativeRef, err.nativeRef);
}

- (void)calc:(Mat*)prevImg nextImg:(Mat*)nextImg prevPts:(Mat*)prevPts nextPts:(Mat*)nextPts status:(Mat*)status {
    self.nativePtrSparseOpticalFlow->calc(prevImg.nativeRef, nextImg.nativeRef, prevPts.nativeRef, nextPts.nativeRef, status.nativeRef);
}



@end



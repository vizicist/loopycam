//
// This file is auto-generated. Please don't modify it!
//

#import "CalibrateCRF.h"
#import "CVObjcUtil.h"

#import "Mat.h"

@implementation CalibrateCRF


- (instancetype)initWithNativePtr:(cv::Ptr<cv::CalibrateCRF>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrCalibrateCRF = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::CalibrateCRF>)nativePtr {
    return [[CalibrateCRF alloc] initWithNativePtr:nativePtr];
}



//
//  void cv::CalibrateCRF::process(vector_Mat src, Mat& dst, Mat times)
//
- (void)process:(NSArray<Mat*>*)src dst:(Mat*)dst times:(Mat*)times {
    OBJC2CV(cv::Mat, Mat, srcVector, src);
    self.nativePtrCalibrateCRF->process(srcVector, dst.nativeRef, times.nativeRef);
}



@end



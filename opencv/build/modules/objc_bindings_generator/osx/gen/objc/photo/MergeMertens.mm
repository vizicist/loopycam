//
// This file is auto-generated. Please don't modify it!
//

#import "MergeMertens.h"
#import "CVObjcUtil.h"

#import "Mat.h"

@implementation MergeMertens


- (instancetype)initWithNativePtr:(cv::Ptr<cv::MergeMertens>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrMergeMertens = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::MergeMertens>)nativePtr {
    return [[MergeMertens alloc] initWithNativePtr:nativePtr];
}



//
//  void cv::MergeMertens::process(vector_Mat src, Mat& dst, Mat times, Mat response)
//
- (void)process:(NSArray<Mat*>*)src dst:(Mat*)dst times:(Mat*)times response:(Mat*)response {
    OBJC2CV(cv::Mat, Mat, srcVector, src);
    self.nativePtrMergeMertens->process(srcVector, dst.nativeRef, times.nativeRef, response.nativeRef);
}


//
//  void cv::MergeMertens::process(vector_Mat src, Mat& dst)
//
- (void)process:(NSArray<Mat*>*)src dst:(Mat*)dst {
    OBJC2CV(cv::Mat, Mat, srcVector, src);
    self.nativePtrMergeMertens->process(srcVector, dst.nativeRef);
}


//
//  float cv::MergeMertens::getContrastWeight()
//
- (float)getContrastWeight {
    float retVal = self.nativePtrMergeMertens->getContrastWeight();
    return retVal;
}


//
//  void cv::MergeMertens::setContrastWeight(float contrast_weiht)
//
- (void)setContrastWeight:(float)contrast_weiht {
    self.nativePtrMergeMertens->setContrastWeight(contrast_weiht);
}


//
//  float cv::MergeMertens::getSaturationWeight()
//
- (float)getSaturationWeight {
    float retVal = self.nativePtrMergeMertens->getSaturationWeight();
    return retVal;
}


//
//  void cv::MergeMertens::setSaturationWeight(float saturation_weight)
//
- (void)setSaturationWeight:(float)saturation_weight {
    self.nativePtrMergeMertens->setSaturationWeight(saturation_weight);
}


//
//  float cv::MergeMertens::getExposureWeight()
//
- (float)getExposureWeight {
    float retVal = self.nativePtrMergeMertens->getExposureWeight();
    return retVal;
}


//
//  void cv::MergeMertens::setExposureWeight(float exposure_weight)
//
- (void)setExposureWeight:(float)exposure_weight {
    self.nativePtrMergeMertens->setExposureWeight(exposure_weight);
}



@end



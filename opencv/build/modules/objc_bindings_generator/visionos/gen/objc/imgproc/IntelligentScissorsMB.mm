//
// This file is auto-generated. Please don't modify it!
//

#import "IntelligentScissorsMB.h"
#import "CVObjcUtil.h"

#import "Mat.h"
#import "Point2i.h"

@implementation IntelligentScissorsMB


- (instancetype)initWithNativePtr:(cv::Ptr<cv::segmentation::IntelligentScissorsMB>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::segmentation::IntelligentScissorsMB>)nativePtr {
    return [[IntelligentScissorsMB alloc] initWithNativePtr:nativePtr];
}



//
//   cv::segmentation::IntelligentScissorsMB::IntelligentScissorsMB()
//
- (instancetype)init {
    return [self initWithNativePtr:cv::Ptr<cv::segmentation::IntelligentScissorsMB>(new cv::segmentation::IntelligentScissorsMB())];
}


//
//  IntelligentScissorsMB cv::segmentation::IntelligentScissorsMB::setWeights(float weight_non_edge, float weight_gradient_direction, float weight_gradient_magnitude)
//
- (IntelligentScissorsMB*)setWeights:(float)weight_non_edge weight_gradient_direction:(float)weight_gradient_direction weight_gradient_magnitude:(float)weight_gradient_magnitude {
    cv::Ptr<cv::segmentation::IntelligentScissorsMB> retVal = new cv::segmentation::IntelligentScissorsMB(self.nativePtr->setWeights(weight_non_edge, weight_gradient_direction, weight_gradient_magnitude));
    return [IntelligentScissorsMB fromNative:retVal];
}


//
//  IntelligentScissorsMB cv::segmentation::IntelligentScissorsMB::setGradientMagnitudeMaxLimit(float gradient_magnitude_threshold_max = 0.0f)
//
- (IntelligentScissorsMB*)setGradientMagnitudeMaxLimit:(float)gradient_magnitude_threshold_max {
    cv::Ptr<cv::segmentation::IntelligentScissorsMB> retVal = new cv::segmentation::IntelligentScissorsMB(self.nativePtr->setGradientMagnitudeMaxLimit(gradient_magnitude_threshold_max));
    return [IntelligentScissorsMB fromNative:retVal];
}

- (IntelligentScissorsMB*)setGradientMagnitudeMaxLimit {
    cv::Ptr<cv::segmentation::IntelligentScissorsMB> retVal = new cv::segmentation::IntelligentScissorsMB(self.nativePtr->setGradientMagnitudeMaxLimit());
    return [IntelligentScissorsMB fromNative:retVal];
}


//
//  IntelligentScissorsMB cv::segmentation::IntelligentScissorsMB::setEdgeFeatureZeroCrossingParameters(float gradient_magnitude_min_value = 0.0f)
//
- (IntelligentScissorsMB*)setEdgeFeatureZeroCrossingParameters:(float)gradient_magnitude_min_value {
    cv::Ptr<cv::segmentation::IntelligentScissorsMB> retVal = new cv::segmentation::IntelligentScissorsMB(self.nativePtr->setEdgeFeatureZeroCrossingParameters(gradient_magnitude_min_value));
    return [IntelligentScissorsMB fromNative:retVal];
}

- (IntelligentScissorsMB*)setEdgeFeatureZeroCrossingParameters {
    cv::Ptr<cv::segmentation::IntelligentScissorsMB> retVal = new cv::segmentation::IntelligentScissorsMB(self.nativePtr->setEdgeFeatureZeroCrossingParameters());
    return [IntelligentScissorsMB fromNative:retVal];
}


//
//  IntelligentScissorsMB cv::segmentation::IntelligentScissorsMB::setEdgeFeatureCannyParameters(double threshold1, double threshold2, int apertureSize = 3, bool L2gradient = false)
//
- (IntelligentScissorsMB*)setEdgeFeatureCannyParameters:(double)threshold1 threshold2:(double)threshold2 apertureSize:(int)apertureSize L2gradient:(BOOL)L2gradient {
    cv::Ptr<cv::segmentation::IntelligentScissorsMB> retVal = new cv::segmentation::IntelligentScissorsMB(self.nativePtr->setEdgeFeatureCannyParameters(threshold1, threshold2, apertureSize, (bool)L2gradient));
    return [IntelligentScissorsMB fromNative:retVal];
}

- (IntelligentScissorsMB*)setEdgeFeatureCannyParameters:(double)threshold1 threshold2:(double)threshold2 apertureSize:(int)apertureSize {
    cv::Ptr<cv::segmentation::IntelligentScissorsMB> retVal = new cv::segmentation::IntelligentScissorsMB(self.nativePtr->setEdgeFeatureCannyParameters(threshold1, threshold2, apertureSize));
    return [IntelligentScissorsMB fromNative:retVal];
}

- (IntelligentScissorsMB*)setEdgeFeatureCannyParameters:(double)threshold1 threshold2:(double)threshold2 {
    cv::Ptr<cv::segmentation::IntelligentScissorsMB> retVal = new cv::segmentation::IntelligentScissorsMB(self.nativePtr->setEdgeFeatureCannyParameters(threshold1, threshold2));
    return [IntelligentScissorsMB fromNative:retVal];
}


//
//  IntelligentScissorsMB cv::segmentation::IntelligentScissorsMB::applyImage(Mat image)
//
- (IntelligentScissorsMB*)applyImage:(Mat*)image {
    cv::Ptr<cv::segmentation::IntelligentScissorsMB> retVal = new cv::segmentation::IntelligentScissorsMB(self.nativePtr->applyImage(image.nativeRef));
    return [IntelligentScissorsMB fromNative:retVal];
}


//
//  IntelligentScissorsMB cv::segmentation::IntelligentScissorsMB::applyImageFeatures(Mat non_edge, Mat gradient_direction, Mat gradient_magnitude, Mat image = Mat())
//
- (IntelligentScissorsMB*)applyImageFeatures:(Mat*)non_edge gradient_direction:(Mat*)gradient_direction gradient_magnitude:(Mat*)gradient_magnitude image:(Mat*)image {
    cv::Ptr<cv::segmentation::IntelligentScissorsMB> retVal = new cv::segmentation::IntelligentScissorsMB(self.nativePtr->applyImageFeatures(non_edge.nativeRef, gradient_direction.nativeRef, gradient_magnitude.nativeRef, image.nativeRef));
    return [IntelligentScissorsMB fromNative:retVal];
}

- (IntelligentScissorsMB*)applyImageFeatures:(Mat*)non_edge gradient_direction:(Mat*)gradient_direction gradient_magnitude:(Mat*)gradient_magnitude {
    cv::Ptr<cv::segmentation::IntelligentScissorsMB> retVal = new cv::segmentation::IntelligentScissorsMB(self.nativePtr->applyImageFeatures(non_edge.nativeRef, gradient_direction.nativeRef, gradient_magnitude.nativeRef));
    return [IntelligentScissorsMB fromNative:retVal];
}


//
//  void cv::segmentation::IntelligentScissorsMB::buildMap(Point sourcePt)
//
- (void)buildMap:(Point2i*)sourcePt {
    self.nativePtr->buildMap(sourcePt.nativeRef);
}


//
//  void cv::segmentation::IntelligentScissorsMB::getContour(Point targetPt, Mat& contour, bool backward = false)
//
- (void)getContour:(Point2i*)targetPt contour:(Mat*)contour backward:(BOOL)backward {
    self.nativePtr->getContour(targetPt.nativeRef, contour.nativeRef, (bool)backward);
}

- (void)getContour:(Point2i*)targetPt contour:(Mat*)contour {
    self.nativePtr->getContour(targetPt.nativeRef, contour.nativeRef);
}



@end



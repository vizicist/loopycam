//
// This file is auto-generated. Please don't modify it!
//

#import "BOWImgDescriptorExtractor.h"
#import "CVObjcUtil.h"

#import "DescriptorMatcher.h"
#import "Feature2D.h"
#import "KeyPoint.h"
#import "Mat.h"

@implementation BOWImgDescriptorExtractor


- (instancetype)initWithNativePtr:(cv::Ptr<cv::BOWImgDescriptorExtractor>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::BOWImgDescriptorExtractor>)nativePtr {
    return [[BOWImgDescriptorExtractor alloc] initWithNativePtr:nativePtr];
}



//
//   cv::BOWImgDescriptorExtractor::BOWImgDescriptorExtractor(Ptr_Feature2D dextractor, Ptr_DescriptorMatcher dmatcher)
//
- (instancetype)initWithDextractor:(Feature2D*)dextractor dmatcher:(DescriptorMatcher*)dmatcher {
    return [self initWithNativePtr:cv::Ptr<cv::BOWImgDescriptorExtractor>(new cv::BOWImgDescriptorExtractor(dextractor.nativePtrFeature2D, dmatcher.nativePtrDescriptorMatcher))];
}


//
//  void cv::BOWImgDescriptorExtractor::setVocabulary(Mat vocabulary)
//
- (void)setVocabulary:(Mat*)vocabulary {
    self.nativePtr->setVocabulary(vocabulary.nativeRef);
}


//
//  Mat cv::BOWImgDescriptorExtractor::getVocabulary()
//
- (Mat*)getVocabulary {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->getVocabulary());
    return [Mat fromNativePtr:retVal];
}


//
//  void cv::BOWImgDescriptorExtractor::compute2(Mat image, vector_KeyPoint keypoints, Mat& imgDescriptor)
//
- (void)compute:(Mat*)image keypoints:(NSArray<KeyPoint*>*)keypoints imgDescriptor:(Mat*)imgDescriptor {
    OBJC2CV(cv::KeyPoint, KeyPoint, keypointsVector, keypoints);
    self.nativePtr->compute2(image.nativeRef, keypointsVector, imgDescriptor.nativeRef);
}


//
//  int cv::BOWImgDescriptorExtractor::descriptorSize()
//
- (int)descriptorSize {
    int retVal = self.nativePtr->descriptorSize();
    return retVal;
}


//
//  int cv::BOWImgDescriptorExtractor::descriptorType()
//
- (int)descriptorType {
    int retVal = self.nativePtr->descriptorType();
    return retVal;
}



@end



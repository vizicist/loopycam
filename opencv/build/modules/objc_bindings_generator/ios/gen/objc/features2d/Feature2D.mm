//
// This file is auto-generated. Please don't modify it!
//

#import "Feature2D.h"
#import "CVObjcUtil.h"

#import "KeyPoint.h"
#import "Mat.h"

@implementation Feature2D


- (instancetype)initWithNativePtr:(cv::Ptr<cv::Feature2D>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrFeature2D = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::Feature2D>)nativePtr {
    return [[Feature2D alloc] initWithNativePtr:nativePtr];
}



//
//  void cv::Feature2D::detect(Mat image, vector_KeyPoint& keypoints, Mat mask = Mat())
//
- (void)detect:(Mat*)image keypoints:(NSMutableArray<KeyPoint*>*)keypoints mask:(Mat*)mask {
    OBJC2CV(cv::KeyPoint, KeyPoint, keypointsVector, keypoints);
    self.nativePtrFeature2D->detect(image.nativeRef, keypointsVector, mask.nativeRef);
    CV2OBJC(cv::KeyPoint, KeyPoint, keypointsVector, keypoints);
}

- (void)detect:(Mat*)image keypoints:(NSMutableArray<KeyPoint*>*)keypoints {
    OBJC2CV(cv::KeyPoint, KeyPoint, keypointsVector, keypoints);
    self.nativePtrFeature2D->detect(image.nativeRef, keypointsVector);
    CV2OBJC(cv::KeyPoint, KeyPoint, keypointsVector, keypoints);
}


//
//  void cv::Feature2D::detect(vector_Mat images, vector_vector_KeyPoint& keypoints, vector_Mat masks = vector_Mat())
//
- (void)detect2:(NSArray<Mat*>*)images keypoints:(NSMutableArray<NSMutableArray<KeyPoint*>*>*)keypoints masks:(NSArray<Mat*>*)masks {
    OBJC2CV(cv::Mat, Mat, imagesVector, images);
    OBJC2CV2(cv::KeyPoint, KeyPoint, keypointsVector2, keypoints);
    OBJC2CV(cv::Mat, Mat, masksVector, masks);
    self.nativePtrFeature2D->detect(imagesVector, keypointsVector2, masksVector);
    CV2OBJC2(cv::KeyPoint, KeyPoint, keypointsVector2, keypoints);
}

- (void)detect2:(NSArray<Mat*>*)images keypoints:(NSMutableArray<NSMutableArray<KeyPoint*>*>*)keypoints {
    OBJC2CV(cv::Mat, Mat, imagesVector, images);
    OBJC2CV2(cv::KeyPoint, KeyPoint, keypointsVector2, keypoints);
    self.nativePtrFeature2D->detect(imagesVector, keypointsVector2);
    CV2OBJC2(cv::KeyPoint, KeyPoint, keypointsVector2, keypoints);
}


//
//  void cv::Feature2D::compute(Mat image, vector_KeyPoint& keypoints, Mat& descriptors)
//
- (void)compute:(Mat*)image keypoints:(NSMutableArray<KeyPoint*>*)keypoints descriptors:(Mat*)descriptors {
    OBJC2CV(cv::KeyPoint, KeyPoint, keypointsVector, keypoints);
    self.nativePtrFeature2D->compute(image.nativeRef, keypointsVector, descriptors.nativeRef);
    CV2OBJC(cv::KeyPoint, KeyPoint, keypointsVector, keypoints);
}


//
//  void cv::Feature2D::compute(vector_Mat images, vector_vector_KeyPoint& keypoints, vector_Mat& descriptors)
//
- (void)compute2:(NSArray<Mat*>*)images keypoints:(NSMutableArray<NSMutableArray<KeyPoint*>*>*)keypoints descriptors:(NSMutableArray<Mat*>*)descriptors {
    OBJC2CV(cv::Mat, Mat, imagesVector, images);
    OBJC2CV2(cv::KeyPoint, KeyPoint, keypointsVector2, keypoints);
    OBJC2CV(cv::Mat, Mat, descriptorsVector, descriptors);
    self.nativePtrFeature2D->compute(imagesVector, keypointsVector2, descriptorsVector);
    CV2OBJC2(cv::KeyPoint, KeyPoint, keypointsVector2, keypoints);
    CV2OBJC(cv::Mat, Mat, descriptorsVector, descriptors);
}


//
//  void cv::Feature2D::detectAndCompute(Mat image, Mat mask, vector_KeyPoint& keypoints, Mat& descriptors, bool useProvidedKeypoints = false)
//
- (void)detectAndCompute:(Mat*)image mask:(Mat*)mask keypoints:(NSMutableArray<KeyPoint*>*)keypoints descriptors:(Mat*)descriptors useProvidedKeypoints:(BOOL)useProvidedKeypoints {
    OBJC2CV(cv::KeyPoint, KeyPoint, keypointsVector, keypoints);
    self.nativePtrFeature2D->detectAndCompute(image.nativeRef, mask.nativeRef, keypointsVector, descriptors.nativeRef, (bool)useProvidedKeypoints);
    CV2OBJC(cv::KeyPoint, KeyPoint, keypointsVector, keypoints);
}

- (void)detectAndCompute:(Mat*)image mask:(Mat*)mask keypoints:(NSMutableArray<KeyPoint*>*)keypoints descriptors:(Mat*)descriptors {
    OBJC2CV(cv::KeyPoint, KeyPoint, keypointsVector, keypoints);
    self.nativePtrFeature2D->detectAndCompute(image.nativeRef, mask.nativeRef, keypointsVector, descriptors.nativeRef);
    CV2OBJC(cv::KeyPoint, KeyPoint, keypointsVector, keypoints);
}


//
//  int cv::Feature2D::descriptorSize()
//
- (int)descriptorSize {
    int retVal = self.nativePtrFeature2D->descriptorSize();
    return retVal;
}


//
//  int cv::Feature2D::descriptorType()
//
- (int)descriptorType {
    int retVal = self.nativePtrFeature2D->descriptorType();
    return retVal;
}


//
//  int cv::Feature2D::defaultNorm()
//
- (int)defaultNorm {
    int retVal = self.nativePtrFeature2D->defaultNorm();
    return retVal;
}


//
//  void cv::Feature2D::write(String fileName)
//
- (void)write:(NSString*)fileName {
    self.nativePtrFeature2D->write(cv::String(fileName.UTF8String));
}


//
//  void cv::Feature2D::read(String fileName)
//
- (void)read:(NSString*)fileName {
    self.nativePtrFeature2D->read(cv::String(fileName.UTF8String));
}


//
//  void cv::Feature2D::read(FileNode arg1)
//

//
//  bool cv::Feature2D::empty()
//
- (BOOL)empty {
    bool retVal = self.nativePtrFeature2D->empty();
    return retVal;
}


//
//  String cv::Feature2D::getDefaultName()
//
- (NSString*)getDefaultName {
    cv::String retVal = self.nativePtrFeature2D->getDefaultName();
    return [NSString stringWithUTF8String:retVal.c_str()];
}


//
//  void cv::Feature2D::write(FileStorage fs, String name)
//


@end



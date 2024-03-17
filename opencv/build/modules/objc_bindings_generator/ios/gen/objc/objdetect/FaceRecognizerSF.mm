//
// This file is auto-generated. Please don't modify it!
//

#import "FaceRecognizerSF.h"
#import "CVObjcUtil.h"

#import "Mat.h"

@implementation FaceRecognizerSF


- (instancetype)initWithNativePtr:(cv::Ptr<cv::FaceRecognizerSF>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::FaceRecognizerSF>)nativePtr {
    return [[FaceRecognizerSF alloc] initWithNativePtr:nativePtr];
}



//
//  void cv::FaceRecognizerSF::alignCrop(Mat src_img, Mat face_box, Mat& aligned_img)
//
- (void)alignCrop:(Mat*)src_img face_box:(Mat*)face_box aligned_img:(Mat*)aligned_img {
    self.nativePtr->alignCrop(src_img.nativeRef, face_box.nativeRef, aligned_img.nativeRef);
}


//
//  void cv::FaceRecognizerSF::feature(Mat aligned_img, Mat& face_feature)
//
- (void)feature:(Mat*)aligned_img face_feature:(Mat*)face_feature {
    self.nativePtr->feature(aligned_img.nativeRef, face_feature.nativeRef);
}


//
//  double cv::FaceRecognizerSF::match(Mat face_feature1, Mat face_feature2, int dis_type = FaceRecognizerSF::FR_COSINE)
//
- (double)match:(Mat*)face_feature1 face_feature2:(Mat*)face_feature2 dis_type:(int)dis_type {
    double retVal = self.nativePtr->match(face_feature1.nativeRef, face_feature2.nativeRef, dis_type);
    return retVal;
}

- (double)match:(Mat*)face_feature1 face_feature2:(Mat*)face_feature2 {
    double retVal = self.nativePtr->match(face_feature1.nativeRef, face_feature2.nativeRef);
    return retVal;
}


//
// static Ptr_FaceRecognizerSF cv::FaceRecognizerSF::create(String model, String config, int backend_id = 0, int target_id = 0)
//
+ (FaceRecognizerSF*)create:(NSString*)model config:(NSString*)config backend_id:(int)backend_id target_id:(int)target_id {
    cv::Ptr<cv::FaceRecognizerSF> retVal = cv::FaceRecognizerSF::create(cv::String(model.UTF8String), cv::String(config.UTF8String), backend_id, target_id);
    return [FaceRecognizerSF fromNative:retVal];
}

+ (FaceRecognizerSF*)create:(NSString*)model config:(NSString*)config backend_id:(int)backend_id {
    cv::Ptr<cv::FaceRecognizerSF> retVal = cv::FaceRecognizerSF::create(cv::String(model.UTF8String), cv::String(config.UTF8String), backend_id);
    return [FaceRecognizerSF fromNative:retVal];
}

+ (FaceRecognizerSF*)create:(NSString*)model config:(NSString*)config {
    cv::Ptr<cv::FaceRecognizerSF> retVal = cv::FaceRecognizerSF::create(cv::String(model.UTF8String), cv::String(config.UTF8String));
    return [FaceRecognizerSF fromNative:retVal];
}



@end



//
// This file is auto-generated. Please don't modify it!
//

#import "FaceDetectorYN.h"
#import "CVObjcUtil.h"

#import "ByteVector.h"
#import "Mat.h"
#import "Size2i.h"

@implementation FaceDetectorYN


- (instancetype)initWithNativePtr:(cv::Ptr<cv::FaceDetectorYN>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::FaceDetectorYN>)nativePtr {
    return [[FaceDetectorYN alloc] initWithNativePtr:nativePtr];
}



//
//  void cv::FaceDetectorYN::setInputSize(Size input_size)
//
- (void)setInputSize:(Size2i*)input_size {
    self.nativePtr->setInputSize(input_size.nativeRef);
}


//
//  Size cv::FaceDetectorYN::getInputSize()
//
- (Size2i*)getInputSize {
    cv::Size retVal = self.nativePtr->getInputSize();
    return [Size2i fromNative:retVal];
}


//
//  void cv::FaceDetectorYN::setScoreThreshold(float score_threshold)
//
- (void)setScoreThreshold:(float)score_threshold {
    self.nativePtr->setScoreThreshold(score_threshold);
}


//
//  float cv::FaceDetectorYN::getScoreThreshold()
//
- (float)getScoreThreshold {
    float retVal = self.nativePtr->getScoreThreshold();
    return retVal;
}


//
//  void cv::FaceDetectorYN::setNMSThreshold(float nms_threshold)
//
- (void)setNMSThreshold:(float)nms_threshold {
    self.nativePtr->setNMSThreshold(nms_threshold);
}


//
//  float cv::FaceDetectorYN::getNMSThreshold()
//
- (float)getNMSThreshold {
    float retVal = self.nativePtr->getNMSThreshold();
    return retVal;
}


//
//  void cv::FaceDetectorYN::setTopK(int top_k)
//
- (void)setTopK:(int)top_k {
    self.nativePtr->setTopK(top_k);
}


//
//  int cv::FaceDetectorYN::getTopK()
//
- (int)getTopK {
    int retVal = self.nativePtr->getTopK();
    return retVal;
}


//
//  int cv::FaceDetectorYN::detect(Mat image, Mat& faces)
//
- (int)detect:(Mat*)image faces:(Mat*)faces {
    int retVal = self.nativePtr->detect(image.nativeRef, faces.nativeRef);
    return retVal;
}


//
// static Ptr_FaceDetectorYN cv::FaceDetectorYN::create(String model, String config, Size input_size, float score_threshold = 0.9f, float nms_threshold = 0.3f, int top_k = 5000, int backend_id = 0, int target_id = 0)
//
+ (FaceDetectorYN*)create:(NSString*)model config:(NSString*)config input_size:(Size2i*)input_size score_threshold:(float)score_threshold nms_threshold:(float)nms_threshold top_k:(int)top_k backend_id:(int)backend_id target_id:(int)target_id {
    cv::Ptr<cv::FaceDetectorYN> retVal = cv::FaceDetectorYN::create(cv::String(model.UTF8String), cv::String(config.UTF8String), input_size.nativeRef, score_threshold, nms_threshold, top_k, backend_id, target_id);
    return [FaceDetectorYN fromNative:retVal];
}

+ (FaceDetectorYN*)create:(NSString*)model config:(NSString*)config input_size:(Size2i*)input_size score_threshold:(float)score_threshold nms_threshold:(float)nms_threshold top_k:(int)top_k backend_id:(int)backend_id {
    cv::Ptr<cv::FaceDetectorYN> retVal = cv::FaceDetectorYN::create(cv::String(model.UTF8String), cv::String(config.UTF8String), input_size.nativeRef, score_threshold, nms_threshold, top_k, backend_id);
    return [FaceDetectorYN fromNative:retVal];
}

+ (FaceDetectorYN*)create:(NSString*)model config:(NSString*)config input_size:(Size2i*)input_size score_threshold:(float)score_threshold nms_threshold:(float)nms_threshold top_k:(int)top_k {
    cv::Ptr<cv::FaceDetectorYN> retVal = cv::FaceDetectorYN::create(cv::String(model.UTF8String), cv::String(config.UTF8String), input_size.nativeRef, score_threshold, nms_threshold, top_k);
    return [FaceDetectorYN fromNative:retVal];
}

+ (FaceDetectorYN*)create:(NSString*)model config:(NSString*)config input_size:(Size2i*)input_size score_threshold:(float)score_threshold nms_threshold:(float)nms_threshold {
    cv::Ptr<cv::FaceDetectorYN> retVal = cv::FaceDetectorYN::create(cv::String(model.UTF8String), cv::String(config.UTF8String), input_size.nativeRef, score_threshold, nms_threshold);
    return [FaceDetectorYN fromNative:retVal];
}

+ (FaceDetectorYN*)create:(NSString*)model config:(NSString*)config input_size:(Size2i*)input_size score_threshold:(float)score_threshold {
    cv::Ptr<cv::FaceDetectorYN> retVal = cv::FaceDetectorYN::create(cv::String(model.UTF8String), cv::String(config.UTF8String), input_size.nativeRef, score_threshold);
    return [FaceDetectorYN fromNative:retVal];
}

+ (FaceDetectorYN*)create:(NSString*)model config:(NSString*)config input_size:(Size2i*)input_size {
    cv::Ptr<cv::FaceDetectorYN> retVal = cv::FaceDetectorYN::create(cv::String(model.UTF8String), cv::String(config.UTF8String), input_size.nativeRef);
    return [FaceDetectorYN fromNative:retVal];
}


//
// static Ptr_FaceDetectorYN cv::FaceDetectorYN::create(String framework, vector_uchar bufferModel, vector_uchar bufferConfig, Size input_size, float score_threshold = 0.9f, float nms_threshold = 0.3f, int top_k = 5000, int backend_id = 0, int target_id = 0)
//
+ (FaceDetectorYN*)create:(NSString*)framework bufferModel:(ByteVector*)bufferModel bufferConfig:(ByteVector*)bufferConfig input_size:(Size2i*)input_size score_threshold:(float)score_threshold nms_threshold:(float)nms_threshold top_k:(int)top_k backend_id:(int)backend_id target_id:(int)target_id {
    cv::Ptr<cv::FaceDetectorYN> retVal = cv::FaceDetectorYN::create(cv::String(framework.UTF8String), (std::vector<uchar>&)bufferModel.nativeRef, (std::vector<uchar>&)bufferConfig.nativeRef, input_size.nativeRef, score_threshold, nms_threshold, top_k, backend_id, target_id);
    return [FaceDetectorYN fromNative:retVal];
}

+ (FaceDetectorYN*)create:(NSString*)framework bufferModel:(ByteVector*)bufferModel bufferConfig:(ByteVector*)bufferConfig input_size:(Size2i*)input_size score_threshold:(float)score_threshold nms_threshold:(float)nms_threshold top_k:(int)top_k backend_id:(int)backend_id {
    cv::Ptr<cv::FaceDetectorYN> retVal = cv::FaceDetectorYN::create(cv::String(framework.UTF8String), (std::vector<uchar>&)bufferModel.nativeRef, (std::vector<uchar>&)bufferConfig.nativeRef, input_size.nativeRef, score_threshold, nms_threshold, top_k, backend_id);
    return [FaceDetectorYN fromNative:retVal];
}

+ (FaceDetectorYN*)create:(NSString*)framework bufferModel:(ByteVector*)bufferModel bufferConfig:(ByteVector*)bufferConfig input_size:(Size2i*)input_size score_threshold:(float)score_threshold nms_threshold:(float)nms_threshold top_k:(int)top_k {
    cv::Ptr<cv::FaceDetectorYN> retVal = cv::FaceDetectorYN::create(cv::String(framework.UTF8String), (std::vector<uchar>&)bufferModel.nativeRef, (std::vector<uchar>&)bufferConfig.nativeRef, input_size.nativeRef, score_threshold, nms_threshold, top_k);
    return [FaceDetectorYN fromNative:retVal];
}

+ (FaceDetectorYN*)create:(NSString*)framework bufferModel:(ByteVector*)bufferModel bufferConfig:(ByteVector*)bufferConfig input_size:(Size2i*)input_size score_threshold:(float)score_threshold nms_threshold:(float)nms_threshold {
    cv::Ptr<cv::FaceDetectorYN> retVal = cv::FaceDetectorYN::create(cv::String(framework.UTF8String), (std::vector<uchar>&)bufferModel.nativeRef, (std::vector<uchar>&)bufferConfig.nativeRef, input_size.nativeRef, score_threshold, nms_threshold);
    return [FaceDetectorYN fromNative:retVal];
}

+ (FaceDetectorYN*)create:(NSString*)framework bufferModel:(ByteVector*)bufferModel bufferConfig:(ByteVector*)bufferConfig input_size:(Size2i*)input_size score_threshold:(float)score_threshold {
    cv::Ptr<cv::FaceDetectorYN> retVal = cv::FaceDetectorYN::create(cv::String(framework.UTF8String), (std::vector<uchar>&)bufferModel.nativeRef, (std::vector<uchar>&)bufferConfig.nativeRef, input_size.nativeRef, score_threshold);
    return [FaceDetectorYN fromNative:retVal];
}

+ (FaceDetectorYN*)create:(NSString*)framework bufferModel:(ByteVector*)bufferModel bufferConfig:(ByteVector*)bufferConfig input_size:(Size2i*)input_size {
    cv::Ptr<cv::FaceDetectorYN> retVal = cv::FaceDetectorYN::create(cv::String(framework.UTF8String), (std::vector<uchar>&)bufferModel.nativeRef, (std::vector<uchar>&)bufferConfig.nativeRef, input_size.nativeRef);
    return [FaceDetectorYN fromNative:retVal];
}



@end



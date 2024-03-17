//
// This file is auto-generated. Please don't modify it!
//

#import "TextDetectionModel_EAST.h"
#import "CVObjcUtil.h"

#import "Net.h"

@implementation TextDetectionModel_EAST


- (instancetype)initWithNativePtr:(cv::Ptr<cv::dnn::TextDetectionModel_EAST>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrTextDetectionModel_EAST = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::dnn::TextDetectionModel_EAST>)nativePtr {
    return [[TextDetectionModel_EAST alloc] initWithNativePtr:nativePtr];
}



//
//   cv::dnn::TextDetectionModel_EAST::TextDetectionModel_EAST(Net network)
//
- (instancetype)initWithNetwork:(Net*)network {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::TextDetectionModel_EAST>(new cv::dnn::TextDetectionModel_EAST(*(network.nativePtr)))];
}


//
//   cv::dnn::TextDetectionModel_EAST::TextDetectionModel_EAST(string model, string config = "")
//
- (instancetype)initWithModel:(NSString*)model config:(NSString*)config {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::TextDetectionModel_EAST>(new cv::dnn::TextDetectionModel_EAST(std::string(model.UTF8String), std::string(config.UTF8String)))];
}

- (instancetype)initWithModel:(NSString*)model {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::TextDetectionModel_EAST>(new cv::dnn::TextDetectionModel_EAST(std::string(model.UTF8String)))];
}


//
//  TextDetectionModel_EAST cv::dnn::TextDetectionModel_EAST::setConfidenceThreshold(float confThreshold)
//
- (TextDetectionModel_EAST*)setConfidenceThreshold:(float)confThreshold {
    cv::Ptr<cv::dnn::TextDetectionModel_EAST> retVal = new cv::dnn::TextDetectionModel_EAST(self.nativePtrTextDetectionModel_EAST->setConfidenceThreshold(confThreshold));
    return [TextDetectionModel_EAST fromNative:retVal];
}


//
//  float cv::dnn::TextDetectionModel_EAST::getConfidenceThreshold()
//
- (float)getConfidenceThreshold {
    float retVal = self.nativePtrTextDetectionModel_EAST->getConfidenceThreshold();
    return retVal;
}


//
//  TextDetectionModel_EAST cv::dnn::TextDetectionModel_EAST::setNMSThreshold(float nmsThreshold)
//
- (TextDetectionModel_EAST*)setNMSThreshold:(float)nmsThreshold {
    cv::Ptr<cv::dnn::TextDetectionModel_EAST> retVal = new cv::dnn::TextDetectionModel_EAST(self.nativePtrTextDetectionModel_EAST->setNMSThreshold(nmsThreshold));
    return [TextDetectionModel_EAST fromNative:retVal];
}


//
//  float cv::dnn::TextDetectionModel_EAST::getNMSThreshold()
//
- (float)getNMSThreshold {
    float retVal = self.nativePtrTextDetectionModel_EAST->getNMSThreshold();
    return retVal;
}



@end



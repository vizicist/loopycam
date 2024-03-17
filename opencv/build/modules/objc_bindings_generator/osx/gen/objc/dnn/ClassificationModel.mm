//
// This file is auto-generated. Please don't modify it!
//

#import "ClassificationModel.h"
#import "CVObjcUtil.h"

#import "Mat.h"
#import "Net.h"

@implementation ClassificationModel


- (instancetype)initWithNativePtr:(cv::Ptr<cv::dnn::ClassificationModel>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrClassificationModel = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::dnn::ClassificationModel>)nativePtr {
    return [[ClassificationModel alloc] initWithNativePtr:nativePtr];
}



//
//   cv::dnn::ClassificationModel::ClassificationModel(String model, String config = "")
//
- (instancetype)initWithModel:(NSString*)model config:(NSString*)config {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::ClassificationModel>(new cv::dnn::ClassificationModel(cv::String(model.UTF8String), cv::String(config.UTF8String)))];
}

- (instancetype)initWithModel:(NSString*)model {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::ClassificationModel>(new cv::dnn::ClassificationModel(cv::String(model.UTF8String)))];
}


//
//   cv::dnn::ClassificationModel::ClassificationModel(Net network)
//
- (instancetype)initWithNetwork:(Net*)network {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::ClassificationModel>(new cv::dnn::ClassificationModel(*(network.nativePtr)))];
}


//
//  ClassificationModel cv::dnn::ClassificationModel::setEnableSoftmaxPostProcessing(bool enable)
//
- (ClassificationModel*)setEnableSoftmaxPostProcessing:(BOOL)enable {
    cv::Ptr<cv::dnn::ClassificationModel> retVal = new cv::dnn::ClassificationModel(self.nativePtrClassificationModel->setEnableSoftmaxPostProcessing((bool)enable));
    return [ClassificationModel fromNative:retVal];
}


//
//  bool cv::dnn::ClassificationModel::getEnableSoftmaxPostProcessing()
//
- (BOOL)getEnableSoftmaxPostProcessing {
    bool retVal = self.nativePtrClassificationModel->getEnableSoftmaxPostProcessing();
    return retVal;
}


//
//  void cv::dnn::ClassificationModel::classify(Mat frame, int& classId, float& conf)
//
- (void)classify:(Mat*)frame classId:(int*)classId conf:(float*)conf {
    self.nativePtrClassificationModel->classify(frame.nativeRef, *(int*)(classId), *(float*)(conf));
}



@end



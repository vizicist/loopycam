//
// This file is auto-generated. Please don't modify it!
//

#import "DetectionModel.h"
#import "CVObjcUtil.h"

#import "FloatVector.h"
#import "IntVector.h"
#import "Mat.h"
#import "Net.h"
#import "Rect2i.h"

@implementation DetectionModel


- (instancetype)initWithNativePtr:(cv::Ptr<cv::dnn::DetectionModel>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrDetectionModel = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::dnn::DetectionModel>)nativePtr {
    return [[DetectionModel alloc] initWithNativePtr:nativePtr];
}



//
//   cv::dnn::DetectionModel::DetectionModel(String model, String config = "")
//
- (instancetype)initWithModel:(NSString*)model config:(NSString*)config {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::DetectionModel>(new cv::dnn::DetectionModel(cv::String(model.UTF8String), cv::String(config.UTF8String)))];
}

- (instancetype)initWithModel:(NSString*)model {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::DetectionModel>(new cv::dnn::DetectionModel(cv::String(model.UTF8String)))];
}


//
//   cv::dnn::DetectionModel::DetectionModel(Net network)
//
- (instancetype)initWithNetwork:(Net*)network {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::DetectionModel>(new cv::dnn::DetectionModel(*(network.nativePtr)))];
}


//
//  DetectionModel cv::dnn::DetectionModel::setNmsAcrossClasses(bool value)
//
- (DetectionModel*)setNmsAcrossClasses:(BOOL)value {
    cv::Ptr<cv::dnn::DetectionModel> retVal = new cv::dnn::DetectionModel(self.nativePtrDetectionModel->setNmsAcrossClasses((bool)value));
    return [DetectionModel fromNative:retVal];
}


//
//  bool cv::dnn::DetectionModel::getNmsAcrossClasses()
//
- (BOOL)getNmsAcrossClasses {
    bool retVal = self.nativePtrDetectionModel->getNmsAcrossClasses();
    return retVal;
}


//
//  void cv::dnn::DetectionModel::detect(Mat frame, vector_int& classIds, vector_float& confidences, vector_Rect& boxes, float confThreshold = 0.5f, float nmsThreshold = 0.0f)
//
- (void)detect:(Mat*)frame classIds:(IntVector*)classIds confidences:(FloatVector*)confidences boxes:(NSMutableArray<Rect2i*>*)boxes confThreshold:(float)confThreshold nmsThreshold:(float)nmsThreshold {
    OBJC2CV(cv::Rect2i, Rect2i, boxesVector, boxes);
    self.nativePtrDetectionModel->detect(frame.nativeRef, classIds.nativeRef, confidences.nativeRef, boxesVector, confThreshold, nmsThreshold);
    CV2OBJC(cv::Rect2i, Rect2i, boxesVector, boxes);
}

- (void)detect:(Mat*)frame classIds:(IntVector*)classIds confidences:(FloatVector*)confidences boxes:(NSMutableArray<Rect2i*>*)boxes confThreshold:(float)confThreshold {
    OBJC2CV(cv::Rect2i, Rect2i, boxesVector, boxes);
    self.nativePtrDetectionModel->detect(frame.nativeRef, classIds.nativeRef, confidences.nativeRef, boxesVector, confThreshold);
    CV2OBJC(cv::Rect2i, Rect2i, boxesVector, boxes);
}

- (void)detect:(Mat*)frame classIds:(IntVector*)classIds confidences:(FloatVector*)confidences boxes:(NSMutableArray<Rect2i*>*)boxes {
    OBJC2CV(cv::Rect2i, Rect2i, boxesVector, boxes);
    self.nativePtrDetectionModel->detect(frame.nativeRef, classIds.nativeRef, confidences.nativeRef, boxesVector);
    CV2OBJC(cv::Rect2i, Rect2i, boxesVector, boxes);
}



@end



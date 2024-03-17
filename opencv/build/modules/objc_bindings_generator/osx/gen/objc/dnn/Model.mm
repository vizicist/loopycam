//
// This file is auto-generated. Please don't modify it!
//

#import "Model.h"
#import "CVObjcUtil.h"

#import "Dnn.h"
#import "Dnn.h"
#import "Mat.h"
#import "Net.h"
#import "Scalar.h"
#import "Size2i.h"

@implementation Model


- (instancetype)initWithNativePtr:(cv::Ptr<cv::dnn::Model>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::dnn::Model>)nativePtr {
    return [[Model alloc] initWithNativePtr:nativePtr];
}



//
//   cv::dnn::Model::Model(String model, String config = "")
//
- (instancetype)initWithModel:(NSString*)model config:(NSString*)config {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::Model>(new cv::dnn::Model(cv::String(model.UTF8String), cv::String(config.UTF8String)))];
}

- (instancetype)initWithModel:(NSString*)model {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::Model>(new cv::dnn::Model(cv::String(model.UTF8String)))];
}


//
//   cv::dnn::Model::Model(Net network)
//
- (instancetype)initWithNetwork:(Net*)network {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::Model>(new cv::dnn::Model(*(network.nativePtr)))];
}


//
//  Model cv::dnn::Model::setInputSize(Size size)
//
- (Model*)setInputSize:(Size2i*)size {
    cv::Ptr<cv::dnn::Model> retVal = new cv::dnn::Model(self.nativePtr->setInputSize(size.nativeRef));
    return [Model fromNative:retVal];
}


//
//  Model cv::dnn::Model::setInputSize(int width, int height)
//
- (Model*)setInputSize:(int)width height:(int)height {
    cv::Ptr<cv::dnn::Model> retVal = new cv::dnn::Model(self.nativePtr->setInputSize(width, height));
    return [Model fromNative:retVal];
}


//
//  Model cv::dnn::Model::setInputMean(Scalar mean)
//
- (Model*)setInputMean:(Scalar*)mean {
    cv::Ptr<cv::dnn::Model> retVal = new cv::dnn::Model(self.nativePtr->setInputMean(mean.nativeRef));
    return [Model fromNative:retVal];
}


//
//  Model cv::dnn::Model::setInputScale(Scalar scale)
//
- (Model*)setInputScale:(Scalar*)scale {
    cv::Ptr<cv::dnn::Model> retVal = new cv::dnn::Model(self.nativePtr->setInputScale(scale.nativeRef));
    return [Model fromNative:retVal];
}


//
//  Model cv::dnn::Model::setInputCrop(bool crop)
//
- (Model*)setInputCrop:(BOOL)crop {
    cv::Ptr<cv::dnn::Model> retVal = new cv::dnn::Model(self.nativePtr->setInputCrop((bool)crop));
    return [Model fromNative:retVal];
}


//
//  Model cv::dnn::Model::setInputSwapRB(bool swapRB)
//
- (Model*)setInputSwapRB:(BOOL)swapRB {
    cv::Ptr<cv::dnn::Model> retVal = new cv::dnn::Model(self.nativePtr->setInputSwapRB((bool)swapRB));
    return [Model fromNative:retVal];
}


//
//  void cv::dnn::Model::setInputParams(double scale = 1.0, Size size = Size(), Scalar mean = Scalar(), bool swapRB = false, bool crop = false)
//
- (void)setInputParams:(double)scale size:(Size2i*)size mean:(Scalar*)mean swapRB:(BOOL)swapRB crop:(BOOL)crop {
    self.nativePtr->setInputParams(scale, size.nativeRef, mean.nativeRef, (bool)swapRB, (bool)crop);
}

- (void)setInputParams:(double)scale size:(Size2i*)size mean:(Scalar*)mean swapRB:(BOOL)swapRB {
    self.nativePtr->setInputParams(scale, size.nativeRef, mean.nativeRef, (bool)swapRB);
}

- (void)setInputParams:(double)scale size:(Size2i*)size mean:(Scalar*)mean {
    self.nativePtr->setInputParams(scale, size.nativeRef, mean.nativeRef);
}

- (void)setInputParams:(double)scale size:(Size2i*)size {
    self.nativePtr->setInputParams(scale, size.nativeRef);
}

- (void)setInputParams:(double)scale {
    self.nativePtr->setInputParams(scale);
}

- (void)setInputParams {
    self.nativePtr->setInputParams();
}


//
//  void cv::dnn::Model::predict(Mat frame, vector_Mat& outs)
//
- (void)predict:(Mat*)frame outs:(NSMutableArray<Mat*>*)outs {
    OBJC2CV(cv::Mat, Mat, outsVector, outs);
    self.nativePtr->predict(frame.nativeRef, outsVector);
    CV2OBJC(cv::Mat, Mat, outsVector, outs);
}


//
//  Model cv::dnn::Model::setPreferableBackend(dnn_Backend backendId)
//
- (Model*)setPreferableBackend:(Backend)backendId {
    cv::Ptr<cv::dnn::Model> retVal = new cv::dnn::Model(self.nativePtr->setPreferableBackend((cv::dnn::Backend)backendId));
    return [Model fromNative:retVal];
}


//
//  Model cv::dnn::Model::setPreferableTarget(dnn_Target targetId)
//
- (Model*)setPreferableTarget:(Target)targetId {
    cv::Ptr<cv::dnn::Model> retVal = new cv::dnn::Model(self.nativePtr->setPreferableTarget((cv::dnn::Target)targetId));
    return [Model fromNative:retVal];
}


//
//  Model cv::dnn::Model::enableWinograd(bool useWinograd)
//
- (Model*)enableWinograd:(BOOL)useWinograd {
    cv::Ptr<cv::dnn::Model> retVal = new cv::dnn::Model(self.nativePtr->enableWinograd((bool)useWinograd));
    return [Model fromNative:retVal];
}



@end



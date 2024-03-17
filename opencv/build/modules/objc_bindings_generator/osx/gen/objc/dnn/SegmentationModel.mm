//
// This file is auto-generated. Please don't modify it!
//

#import "SegmentationModel.h"
#import "CVObjcUtil.h"

#import "Mat.h"
#import "Net.h"

@implementation SegmentationModel


- (instancetype)initWithNativePtr:(cv::Ptr<cv::dnn::SegmentationModel>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrSegmentationModel = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::dnn::SegmentationModel>)nativePtr {
    return [[SegmentationModel alloc] initWithNativePtr:nativePtr];
}



//
//   cv::dnn::SegmentationModel::SegmentationModel(String model, String config = "")
//
- (instancetype)initWithModel:(NSString*)model config:(NSString*)config {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::SegmentationModel>(new cv::dnn::SegmentationModel(cv::String(model.UTF8String), cv::String(config.UTF8String)))];
}

- (instancetype)initWithModel:(NSString*)model {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::SegmentationModel>(new cv::dnn::SegmentationModel(cv::String(model.UTF8String)))];
}


//
//   cv::dnn::SegmentationModel::SegmentationModel(Net network)
//
- (instancetype)initWithNetwork:(Net*)network {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::SegmentationModel>(new cv::dnn::SegmentationModel(*(network.nativePtr)))];
}


//
//  void cv::dnn::SegmentationModel::segment(Mat frame, Mat& mask)
//
- (void)segment:(Mat*)frame mask:(Mat*)mask {
    self.nativePtrSegmentationModel->segment(frame.nativeRef, mask.nativeRef);
}



@end



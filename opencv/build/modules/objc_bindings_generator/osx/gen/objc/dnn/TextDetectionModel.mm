//
// This file is auto-generated. Please don't modify it!
//

#import "TextDetectionModel.h"
#import "CVObjcUtil.h"

#import "FloatVector.h"
#import "Mat.h"
#import "Point2i.h"
#import "RotatedRect.h"

@implementation TextDetectionModel


- (instancetype)initWithNativePtr:(cv::Ptr<cv::dnn::TextDetectionModel>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrTextDetectionModel = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::dnn::TextDetectionModel>)nativePtr {
    return [[TextDetectionModel alloc] initWithNativePtr:nativePtr];
}



//
//  void cv::dnn::TextDetectionModel::detect(Mat frame, vector_vector_Point& detections, vector_float& confidences)
//
- (void)detect:(Mat*)frame detections:(NSMutableArray<NSMutableArray<Point2i*>*>*)detections confidences:(FloatVector*)confidences {
    OBJC2CV2(cv::Point2i, Point2i, detectionsVector2, detections);
    self.nativePtrTextDetectionModel->detect(frame.nativeRef, detectionsVector2, confidences.nativeRef);
    CV2OBJC2(cv::Point2i, Point2i, detectionsVector2, detections);
}


//
//  void cv::dnn::TextDetectionModel::detect(Mat frame, vector_vector_Point& detections)
//
- (void)detect:(Mat*)frame detections:(NSMutableArray<NSMutableArray<Point2i*>*>*)detections {
    OBJC2CV2(cv::Point2i, Point2i, detectionsVector2, detections);
    self.nativePtrTextDetectionModel->detect(frame.nativeRef, detectionsVector2);
    CV2OBJC2(cv::Point2i, Point2i, detectionsVector2, detections);
}


//
//  void cv::dnn::TextDetectionModel::detectTextRectangles(Mat frame, vector_RotatedRect& detections, vector_float& confidences)
//
- (void)detectTextRectangles:(Mat*)frame detections:(NSMutableArray<RotatedRect*>*)detections confidences:(FloatVector*)confidences {
    OBJC2CV(cv::RotatedRect, RotatedRect, detectionsVector, detections);
    self.nativePtrTextDetectionModel->detectTextRectangles(frame.nativeRef, detectionsVector, confidences.nativeRef);
    CV2OBJC(cv::RotatedRect, RotatedRect, detectionsVector, detections);
}


//
//  void cv::dnn::TextDetectionModel::detectTextRectangles(Mat frame, vector_RotatedRect& detections)
//
- (void)detectTextRectangles:(Mat*)frame detections:(NSMutableArray<RotatedRect*>*)detections {
    OBJC2CV(cv::RotatedRect, RotatedRect, detectionsVector, detections);
    self.nativePtrTextDetectionModel->detectTextRectangles(frame.nativeRef, detectionsVector);
    CV2OBJC(cv::RotatedRect, RotatedRect, detectionsVector, detections);
}



@end



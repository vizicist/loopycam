//
// This file is auto-generated. Please don't modify it!
//

#import "KeypointsModel.h"
#import "CVObjcUtil.h"

#import "Mat.h"
#import "Net.h"
#import "Point2f.h"

@implementation KeypointsModel


- (instancetype)initWithNativePtr:(cv::Ptr<cv::dnn::KeypointsModel>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrKeypointsModel = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::dnn::KeypointsModel>)nativePtr {
    return [[KeypointsModel alloc] initWithNativePtr:nativePtr];
}



//
//   cv::dnn::KeypointsModel::KeypointsModel(String model, String config = "")
//
- (instancetype)initWithModel:(NSString*)model config:(NSString*)config {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::KeypointsModel>(new cv::dnn::KeypointsModel(cv::String(model.UTF8String), cv::String(config.UTF8String)))];
}

- (instancetype)initWithModel:(NSString*)model {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::KeypointsModel>(new cv::dnn::KeypointsModel(cv::String(model.UTF8String)))];
}


//
//   cv::dnn::KeypointsModel::KeypointsModel(Net network)
//
- (instancetype)initWithNetwork:(Net*)network {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::KeypointsModel>(new cv::dnn::KeypointsModel(*(network.nativePtr)))];
}


//
//  vector_Point2f cv::dnn::KeypointsModel::estimate(Mat frame, float thresh = 0.5)
//
- (NSArray<Point2f*>*)estimate:(Mat*)frame thresh:(float)thresh {
    NSMutableArray<Point2f*>* retVal = [NSMutableArray new];
    std::vector<cv::Point2f> retValVector = self.nativePtrKeypointsModel->estimate(frame.nativeRef, thresh);
    CV2OBJC(cv::Point2f, Point2f, retValVector, retVal);
    return retVal;
}

- (NSArray<Point2f*>*)estimate:(Mat*)frame {
    NSMutableArray<Point2f*>* retVal = [NSMutableArray new];
    std::vector<cv::Point2f> retValVector = self.nativePtrKeypointsModel->estimate(frame.nativeRef);
    CV2OBJC(cv::Point2f, Point2f, retValVector, retVal);
    return retVal;
}



@end



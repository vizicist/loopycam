//
// This file is auto-generated. Please don't modify it!
//

#import "RefineParameters.h"
#import "CVObjcUtil.h"



@implementation RefineParameters


- (instancetype)initWithNativePtr:(cv::Ptr<cv::aruco::RefineParameters>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::aruco::RefineParameters>)nativePtr {
    return [[RefineParameters alloc] initWithNativePtr:nativePtr];
}



//
//   cv::aruco::RefineParameters::RefineParameters(float minRepDistance = 10.f, float errorCorrectionRate = 3.f, bool checkAllOrders = true)
//
- (instancetype)initWithMinRepDistance:(float)minRepDistance errorCorrectionRate:(float)errorCorrectionRate checkAllOrders:(BOOL)checkAllOrders {
    return [self initWithNativePtr:cv::Ptr<cv::aruco::RefineParameters>(new cv::aruco::RefineParameters(minRepDistance, errorCorrectionRate, (bool)checkAllOrders))];
}

- (instancetype)initWithMinRepDistance:(float)minRepDistance errorCorrectionRate:(float)errorCorrectionRate {
    return [self initWithNativePtr:cv::Ptr<cv::aruco::RefineParameters>(new cv::aruco::RefineParameters(minRepDistance, errorCorrectionRate))];
}

- (instancetype)initWithMinRepDistance:(float)minRepDistance {
    return [self initWithNativePtr:cv::Ptr<cv::aruco::RefineParameters>(new cv::aruco::RefineParameters(minRepDistance))];
}

- (instancetype)init {
    return [self initWithNativePtr:cv::Ptr<cv::aruco::RefineParameters>(new cv::aruco::RefineParameters())];
}


//
//  bool cv::aruco::RefineParameters::readRefineParameters(FileNode fn)
//

//
//  bool cv::aruco::RefineParameters::writeRefineParameters(FileStorage fs, String name = String())
//
-(float)minRepDistance {
	return self.nativePtr->minRepDistance;
}

-(void)setMinRepDistance:(float)minRepDistance {
	self.nativePtr->minRepDistance = minRepDistance;
}

-(float)errorCorrectionRate {
	return self.nativePtr->errorCorrectionRate;
}

-(void)setErrorCorrectionRate:(float)errorCorrectionRate {
	self.nativePtr->errorCorrectionRate = errorCorrectionRate;
}

-(BOOL)checkAllOrders {
	return self.nativePtr->checkAllOrders;
}

-(void)setCheckAllOrders:(BOOL)checkAllOrders {
	self.nativePtr->checkAllOrders = (bool)checkAllOrders;
}



@end



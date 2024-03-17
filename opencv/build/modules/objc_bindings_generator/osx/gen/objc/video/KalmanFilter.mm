//
// This file is auto-generated. Please don't modify it!
//

#import "KalmanFilter.h"
#import "CVObjcUtil.h"

#import "Mat.h"

@implementation KalmanFilter


- (instancetype)initWithNativePtr:(cv::Ptr<cv::KalmanFilter>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::KalmanFilter>)nativePtr {
    return [[KalmanFilter alloc] initWithNativePtr:nativePtr];
}



//
//   cv::KalmanFilter::KalmanFilter()
//
- (instancetype)init {
    return [self initWithNativePtr:cv::Ptr<cv::KalmanFilter>(new cv::KalmanFilter())];
}


//
//   cv::KalmanFilter::KalmanFilter(int dynamParams, int measureParams, int controlParams = 0, int type = CV_32F)
//
- (instancetype)initWithDynamParams:(int)dynamParams measureParams:(int)measureParams controlParams:(int)controlParams type:(int)type {
    return [self initWithNativePtr:cv::Ptr<cv::KalmanFilter>(new cv::KalmanFilter(dynamParams, measureParams, controlParams, type))];
}

- (instancetype)initWithDynamParams:(int)dynamParams measureParams:(int)measureParams controlParams:(int)controlParams {
    return [self initWithNativePtr:cv::Ptr<cv::KalmanFilter>(new cv::KalmanFilter(dynamParams, measureParams, controlParams))];
}

- (instancetype)initWithDynamParams:(int)dynamParams measureParams:(int)measureParams {
    return [self initWithNativePtr:cv::Ptr<cv::KalmanFilter>(new cv::KalmanFilter(dynamParams, measureParams))];
}


//
//  Mat cv::KalmanFilter::predict(Mat control = Mat())
//
- (Mat*)predict:(Mat*)control {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->predict(control.nativeRef));
    return [Mat fromNativePtr:retVal];
}

- (Mat*)predict {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->predict());
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::KalmanFilter::correct(Mat measurement)
//
- (Mat*)correct:(Mat*)measurement {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->correct(measurement.nativeRef));
    return [Mat fromNativePtr:retVal];
}

-(Mat*)statePre {
	cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->statePre);
	return [Mat fromNativePtr:retVal];
}

-(void)setStatePre:(Mat*)statePre {
	self.nativePtr->statePre = statePre.nativeRef;
}

-(Mat*)statePost {
	cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->statePost);
	return [Mat fromNativePtr:retVal];
}

-(void)setStatePost:(Mat*)statePost {
	self.nativePtr->statePost = statePost.nativeRef;
}

-(Mat*)transitionMatrix {
	cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->transitionMatrix);
	return [Mat fromNativePtr:retVal];
}

-(void)setTransitionMatrix:(Mat*)transitionMatrix {
	self.nativePtr->transitionMatrix = transitionMatrix.nativeRef;
}

-(Mat*)controlMatrix {
	cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->controlMatrix);
	return [Mat fromNativePtr:retVal];
}

-(void)setControlMatrix:(Mat*)controlMatrix {
	self.nativePtr->controlMatrix = controlMatrix.nativeRef;
}

-(Mat*)measurementMatrix {
	cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->measurementMatrix);
	return [Mat fromNativePtr:retVal];
}

-(void)setMeasurementMatrix:(Mat*)measurementMatrix {
	self.nativePtr->measurementMatrix = measurementMatrix.nativeRef;
}

-(Mat*)processNoiseCov {
	cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->processNoiseCov);
	return [Mat fromNativePtr:retVal];
}

-(void)setProcessNoiseCov:(Mat*)processNoiseCov {
	self.nativePtr->processNoiseCov = processNoiseCov.nativeRef;
}

-(Mat*)measurementNoiseCov {
	cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->measurementNoiseCov);
	return [Mat fromNativePtr:retVal];
}

-(void)setMeasurementNoiseCov:(Mat*)measurementNoiseCov {
	self.nativePtr->measurementNoiseCov = measurementNoiseCov.nativeRef;
}

-(Mat*)errorCovPre {
	cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->errorCovPre);
	return [Mat fromNativePtr:retVal];
}

-(void)setErrorCovPre:(Mat*)errorCovPre {
	self.nativePtr->errorCovPre = errorCovPre.nativeRef;
}

-(Mat*)gain {
	cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->gain);
	return [Mat fromNativePtr:retVal];
}

-(void)setGain:(Mat*)gain {
	self.nativePtr->gain = gain.nativeRef;
}

-(Mat*)errorCovPost {
	cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->errorCovPost);
	return [Mat fromNativePtr:retVal];
}

-(void)setErrorCovPost:(Mat*)errorCovPost {
	self.nativePtr->errorCovPost = errorCovPost.nativeRef;
}



@end



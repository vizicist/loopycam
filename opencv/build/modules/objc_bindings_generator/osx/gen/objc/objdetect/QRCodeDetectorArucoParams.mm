//
// This file is auto-generated. Please don't modify it!
//

#import "QRCodeDetectorArucoParams.h"
#import "CVObjcUtil.h"



@implementation QRCodeDetectorArucoParams


- (instancetype)initWithNativePtr:(cv::Ptr<cv::QRCodeDetectorAruco::Params>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::QRCodeDetectorAruco::Params>)nativePtr {
    return [[QRCodeDetectorArucoParams alloc] initWithNativePtr:nativePtr];
}



//
//   cv::QRCodeDetectorAruco::Params::Params()
//
- (instancetype)init {
    return [self initWithNativePtr:cv::Ptr<cv::QRCodeDetectorAruco::Params>(new cv::QRCodeDetectorAruco::Params())];
}

-(float)minModuleSizeInPyramid {
	return self.nativePtr->minModuleSizeInPyramid;
}

-(void)setMinModuleSizeInPyramid:(float)minModuleSizeInPyramid {
	self.nativePtr->minModuleSizeInPyramid = minModuleSizeInPyramid;
}

-(float)maxRotation {
	return self.nativePtr->maxRotation;
}

-(void)setMaxRotation:(float)maxRotation {
	self.nativePtr->maxRotation = maxRotation;
}

-(float)maxModuleSizeMismatch {
	return self.nativePtr->maxModuleSizeMismatch;
}

-(void)setMaxModuleSizeMismatch:(float)maxModuleSizeMismatch {
	self.nativePtr->maxModuleSizeMismatch = maxModuleSizeMismatch;
}

-(float)maxTimingPatternMismatch {
	return self.nativePtr->maxTimingPatternMismatch;
}

-(void)setMaxTimingPatternMismatch:(float)maxTimingPatternMismatch {
	self.nativePtr->maxTimingPatternMismatch = maxTimingPatternMismatch;
}

-(float)maxPenalties {
	return self.nativePtr->maxPenalties;
}

-(void)setMaxPenalties:(float)maxPenalties {
	self.nativePtr->maxPenalties = maxPenalties;
}

-(float)maxColorsMismatch {
	return self.nativePtr->maxColorsMismatch;
}

-(void)setMaxColorsMismatch:(float)maxColorsMismatch {
	self.nativePtr->maxColorsMismatch = maxColorsMismatch;
}

-(float)scaleTimingPatternScore {
	return self.nativePtr->scaleTimingPatternScore;
}

-(void)setScaleTimingPatternScore:(float)scaleTimingPatternScore {
	self.nativePtr->scaleTimingPatternScore = scaleTimingPatternScore;
}



@end



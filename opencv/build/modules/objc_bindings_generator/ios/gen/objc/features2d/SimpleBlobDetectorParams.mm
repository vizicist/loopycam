//
// This file is auto-generated. Please don't modify it!
//

#import "SimpleBlobDetectorParams.h"
#import "CVObjcUtil.h"



@implementation SimpleBlobDetectorParams


- (instancetype)initWithNativePtr:(cv::Ptr<cv::SimpleBlobDetector::Params>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::SimpleBlobDetector::Params>)nativePtr {
    return [[SimpleBlobDetectorParams alloc] initWithNativePtr:nativePtr];
}



//
//   cv::SimpleBlobDetector::Params::Params()
//
- (instancetype)init {
    return [self initWithNativePtr:cv::Ptr<cv::SimpleBlobDetector::Params>(new cv::SimpleBlobDetector::Params())];
}

-(float)thresholdStep {
	return self.nativePtr->thresholdStep;
}

-(void)setThresholdStep:(float)thresholdStep {
	self.nativePtr->thresholdStep = thresholdStep;
}

-(float)minThreshold {
	return self.nativePtr->minThreshold;
}

-(void)setMinThreshold:(float)minThreshold {
	self.nativePtr->minThreshold = minThreshold;
}

-(float)maxThreshold {
	return self.nativePtr->maxThreshold;
}

-(void)setMaxThreshold:(float)maxThreshold {
	self.nativePtr->maxThreshold = maxThreshold;
}

-(size_t)minRepeatability {
	return self.nativePtr->minRepeatability;
}

-(void)setMinRepeatability:(size_t)minRepeatability {
	self.nativePtr->minRepeatability = minRepeatability;
}

-(float)minDistBetweenBlobs {
	return self.nativePtr->minDistBetweenBlobs;
}

-(void)setMinDistBetweenBlobs:(float)minDistBetweenBlobs {
	self.nativePtr->minDistBetweenBlobs = minDistBetweenBlobs;
}

-(BOOL)filterByColor {
	return self.nativePtr->filterByColor;
}

-(void)setFilterByColor:(BOOL)filterByColor {
	self.nativePtr->filterByColor = (bool)filterByColor;
}

-(unsigned char)blobColor {
	return self.nativePtr->blobColor;
}

-(void)setBlobColor:(unsigned char)blobColor {
	self.nativePtr->blobColor = blobColor;
}

-(BOOL)filterByArea {
	return self.nativePtr->filterByArea;
}

-(void)setFilterByArea:(BOOL)filterByArea {
	self.nativePtr->filterByArea = (bool)filterByArea;
}

-(float)minArea {
	return self.nativePtr->minArea;
}

-(void)setMinArea:(float)minArea {
	self.nativePtr->minArea = minArea;
}

-(float)maxArea {
	return self.nativePtr->maxArea;
}

-(void)setMaxArea:(float)maxArea {
	self.nativePtr->maxArea = maxArea;
}

-(BOOL)filterByCircularity {
	return self.nativePtr->filterByCircularity;
}

-(void)setFilterByCircularity:(BOOL)filterByCircularity {
	self.nativePtr->filterByCircularity = (bool)filterByCircularity;
}

-(float)minCircularity {
	return self.nativePtr->minCircularity;
}

-(void)setMinCircularity:(float)minCircularity {
	self.nativePtr->minCircularity = minCircularity;
}

-(float)maxCircularity {
	return self.nativePtr->maxCircularity;
}

-(void)setMaxCircularity:(float)maxCircularity {
	self.nativePtr->maxCircularity = maxCircularity;
}

-(BOOL)filterByInertia {
	return self.nativePtr->filterByInertia;
}

-(void)setFilterByInertia:(BOOL)filterByInertia {
	self.nativePtr->filterByInertia = (bool)filterByInertia;
}

-(float)minInertiaRatio {
	return self.nativePtr->minInertiaRatio;
}

-(void)setMinInertiaRatio:(float)minInertiaRatio {
	self.nativePtr->minInertiaRatio = minInertiaRatio;
}

-(float)maxInertiaRatio {
	return self.nativePtr->maxInertiaRatio;
}

-(void)setMaxInertiaRatio:(float)maxInertiaRatio {
	self.nativePtr->maxInertiaRatio = maxInertiaRatio;
}

-(BOOL)filterByConvexity {
	return self.nativePtr->filterByConvexity;
}

-(void)setFilterByConvexity:(BOOL)filterByConvexity {
	self.nativePtr->filterByConvexity = (bool)filterByConvexity;
}

-(float)minConvexity {
	return self.nativePtr->minConvexity;
}

-(void)setMinConvexity:(float)minConvexity {
	self.nativePtr->minConvexity = minConvexity;
}

-(float)maxConvexity {
	return self.nativePtr->maxConvexity;
}

-(void)setMaxConvexity:(float)maxConvexity {
	self.nativePtr->maxConvexity = maxConvexity;
}

-(BOOL)collectContours {
	return self.nativePtr->collectContours;
}

-(void)setCollectContours:(BOOL)collectContours {
	self.nativePtr->collectContours = (bool)collectContours;
}



@end



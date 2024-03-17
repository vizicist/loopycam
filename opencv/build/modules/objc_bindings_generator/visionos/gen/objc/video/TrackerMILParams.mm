//
// This file is auto-generated. Please don't modify it!
//

#import "TrackerMILParams.h"
#import "CVObjcUtil.h"



@implementation TrackerMILParams


- (instancetype)initWithNativePtr:(cv::Ptr<cv::TrackerMIL::Params>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::TrackerMIL::Params>)nativePtr {
    return [[TrackerMILParams alloc] initWithNativePtr:nativePtr];
}



//
//   cv::TrackerMIL::Params::Params()
//
- (instancetype)init {
    return [self initWithNativePtr:cv::Ptr<cv::TrackerMIL::Params>(new cv::TrackerMIL::Params())];
}

-(float)samplerInitInRadius {
	return self.nativePtr->samplerInitInRadius;
}

-(void)setSamplerInitInRadius:(float)samplerInitInRadius {
	self.nativePtr->samplerInitInRadius = samplerInitInRadius;
}

-(int)samplerInitMaxNegNum {
	return self.nativePtr->samplerInitMaxNegNum;
}

-(void)setSamplerInitMaxNegNum:(int)samplerInitMaxNegNum {
	self.nativePtr->samplerInitMaxNegNum = samplerInitMaxNegNum;
}

-(float)samplerSearchWinSize {
	return self.nativePtr->samplerSearchWinSize;
}

-(void)setSamplerSearchWinSize:(float)samplerSearchWinSize {
	self.nativePtr->samplerSearchWinSize = samplerSearchWinSize;
}

-(float)samplerTrackInRadius {
	return self.nativePtr->samplerTrackInRadius;
}

-(void)setSamplerTrackInRadius:(float)samplerTrackInRadius {
	self.nativePtr->samplerTrackInRadius = samplerTrackInRadius;
}

-(int)samplerTrackMaxPosNum {
	return self.nativePtr->samplerTrackMaxPosNum;
}

-(void)setSamplerTrackMaxPosNum:(int)samplerTrackMaxPosNum {
	self.nativePtr->samplerTrackMaxPosNum = samplerTrackMaxPosNum;
}

-(int)samplerTrackMaxNegNum {
	return self.nativePtr->samplerTrackMaxNegNum;
}

-(void)setSamplerTrackMaxNegNum:(int)samplerTrackMaxNegNum {
	self.nativePtr->samplerTrackMaxNegNum = samplerTrackMaxNegNum;
}

-(int)featureSetNumFeatures {
	return self.nativePtr->featureSetNumFeatures;
}

-(void)setFeatureSetNumFeatures:(int)featureSetNumFeatures {
	self.nativePtr->featureSetNumFeatures = featureSetNumFeatures;
}



@end



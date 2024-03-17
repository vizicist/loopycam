//
// This file is auto-generated. Please don't modify it!
//

#import "CirclesGridFinderParameters.h"
#import "CVObjcUtil.h"

#import "Size2f.h"

@implementation CirclesGridFinderParameters


- (instancetype)initWithNativePtr:(cv::Ptr<cv::CirclesGridFinderParameters>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::CirclesGridFinderParameters>)nativePtr {
    return [[CirclesGridFinderParameters alloc] initWithNativePtr:nativePtr];
}



//
//   cv::CirclesGridFinderParameters::CirclesGridFinderParameters()
//
- (instancetype)init {
    return [self initWithNativePtr:cv::Ptr<cv::CirclesGridFinderParameters>(new cv::CirclesGridFinderParameters())];
}

-(Size2f*)densityNeighborhoodSize {
	return [Size2f fromNative:self.nativePtr->densityNeighborhoodSize];
}

-(void)setDensityNeighborhoodSize:(Size2f*)densityNeighborhoodSize {
	self.nativePtr->densityNeighborhoodSize = densityNeighborhoodSize.nativeRef;
}

-(float)minDensity {
	return self.nativePtr->minDensity;
}

-(void)setMinDensity:(float)minDensity {
	self.nativePtr->minDensity = minDensity;
}

-(int)kmeansAttempts {
	return self.nativePtr->kmeansAttempts;
}

-(void)setKmeansAttempts:(int)kmeansAttempts {
	self.nativePtr->kmeansAttempts = kmeansAttempts;
}

-(int)minDistanceToAddKeypoint {
	return self.nativePtr->minDistanceToAddKeypoint;
}

-(void)setMinDistanceToAddKeypoint:(int)minDistanceToAddKeypoint {
	self.nativePtr->minDistanceToAddKeypoint = minDistanceToAddKeypoint;
}

-(int)keypointScale {
	return self.nativePtr->keypointScale;
}

-(void)setKeypointScale:(int)keypointScale {
	self.nativePtr->keypointScale = keypointScale;
}

-(float)minGraphConfidence {
	return self.nativePtr->minGraphConfidence;
}

-(void)setMinGraphConfidence:(float)minGraphConfidence {
	self.nativePtr->minGraphConfidence = minGraphConfidence;
}

-(float)vertexGain {
	return self.nativePtr->vertexGain;
}

-(void)setVertexGain:(float)vertexGain {
	self.nativePtr->vertexGain = vertexGain;
}

-(float)vertexPenalty {
	return self.nativePtr->vertexPenalty;
}

-(void)setVertexPenalty:(float)vertexPenalty {
	self.nativePtr->vertexPenalty = vertexPenalty;
}

-(float)existingVertexGain {
	return self.nativePtr->existingVertexGain;
}

-(void)setExistingVertexGain:(float)existingVertexGain {
	self.nativePtr->existingVertexGain = existingVertexGain;
}

-(float)edgeGain {
	return self.nativePtr->edgeGain;
}

-(void)setEdgeGain:(float)edgeGain {
	self.nativePtr->edgeGain = edgeGain;
}

-(float)edgePenalty {
	return self.nativePtr->edgePenalty;
}

-(void)setEdgePenalty:(float)edgePenalty {
	self.nativePtr->edgePenalty = edgePenalty;
}

-(float)convexHullFactor {
	return self.nativePtr->convexHullFactor;
}

-(void)setConvexHullFactor:(float)convexHullFactor {
	self.nativePtr->convexHullFactor = convexHullFactor;
}

-(float)minRNGEdgeSwitchDist {
	return self.nativePtr->minRNGEdgeSwitchDist;
}

-(void)setMinRNGEdgeSwitchDist:(float)minRNGEdgeSwitchDist {
	self.nativePtr->minRNGEdgeSwitchDist = minRNGEdgeSwitchDist;
}

-(float)squareSize {
	return self.nativePtr->squareSize;
}

-(void)setSquareSize:(float)squareSize {
	self.nativePtr->squareSize = squareSize;
}

-(float)maxRectifiedDistance {
	return self.nativePtr->maxRectifiedDistance;
}

-(void)setMaxRectifiedDistance:(float)maxRectifiedDistance {
	self.nativePtr->maxRectifiedDistance = maxRectifiedDistance;
}



@end



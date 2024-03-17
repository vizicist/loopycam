//
// This file is auto-generated. Please don't modify it!
//

#import "UsacParams.h"
#import "CVObjcUtil.h"

#import "Calib3d.h"
#import "Calib3d.h"
#import "Calib3d.h"
#import "Calib3d.h"
#import "Calib3d.h"

@implementation UsacParams


- (instancetype)initWithNativePtr:(cv::Ptr<cv::UsacParams>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::UsacParams>)nativePtr {
    return [[UsacParams alloc] initWithNativePtr:nativePtr];
}



//
//   cv::UsacParams::UsacParams()
//
- (instancetype)init {
    return [self initWithNativePtr:cv::Ptr<cv::UsacParams>(new cv::UsacParams())];
}

-(double)confidence {
	return self.nativePtr->confidence;
}

-(void)setConfidence:(double)confidence {
	self.nativePtr->confidence = confidence;
}

-(BOOL)isParallel {
	return self.nativePtr->isParallel;
}

-(void)setIsParallel:(BOOL)isParallel {
	self.nativePtr->isParallel = (bool)isParallel;
}

-(int)loIterations {
	return self.nativePtr->loIterations;
}

-(void)setLoIterations:(int)loIterations {
	self.nativePtr->loIterations = loIterations;
}

-(LocalOptimMethod)loMethod {
	return (LocalOptimMethod)self.nativePtr->loMethod;
}

-(void)setLoMethod:(LocalOptimMethod)loMethod {
	self.nativePtr->loMethod = (cv::LocalOptimMethod)loMethod;
}

-(int)loSampleSize {
	return self.nativePtr->loSampleSize;
}

-(void)setLoSampleSize:(int)loSampleSize {
	self.nativePtr->loSampleSize = loSampleSize;
}

-(int)maxIterations {
	return self.nativePtr->maxIterations;
}

-(void)setMaxIterations:(int)maxIterations {
	self.nativePtr->maxIterations = maxIterations;
}

-(NeighborSearchMethod)neighborsSearch {
	return (NeighborSearchMethod)self.nativePtr->neighborsSearch;
}

-(void)setNeighborsSearch:(NeighborSearchMethod)neighborsSearch {
	self.nativePtr->neighborsSearch = (cv::NeighborSearchMethod)neighborsSearch;
}

-(int)randomGeneratorState {
	return self.nativePtr->randomGeneratorState;
}

-(void)setRandomGeneratorState:(int)randomGeneratorState {
	self.nativePtr->randomGeneratorState = randomGeneratorState;
}

-(SamplingMethod)sampler {
	return (SamplingMethod)self.nativePtr->sampler;
}

-(void)setSampler:(SamplingMethod)sampler {
	self.nativePtr->sampler = (cv::SamplingMethod)sampler;
}

-(ScoreMethod)score {
	return (ScoreMethod)self.nativePtr->score;
}

-(void)setScore:(ScoreMethod)score {
	self.nativePtr->score = (cv::ScoreMethod)score;
}

-(double)threshold {
	return self.nativePtr->threshold;
}

-(void)setThreshold:(double)threshold {
	self.nativePtr->threshold = threshold;
}

-(PolishingMethod)final_polisher {
	return (PolishingMethod)self.nativePtr->final_polisher;
}

-(void)setFinal_polisher:(PolishingMethod)final_polisher {
	self.nativePtr->final_polisher = (cv::PolishingMethod)final_polisher;
}

-(int)final_polisher_iterations {
	return self.nativePtr->final_polisher_iterations;
}

-(void)setFinal_polisher_iterations:(int)final_polisher_iterations {
	self.nativePtr->final_polisher_iterations = final_polisher_iterations;
}



@end



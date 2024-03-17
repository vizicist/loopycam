//
// This file is auto-generated. Please don't modify it!
//

#import "ParamGrid.h"
#import "CVObjcUtil.h"



@implementation ParamGrid


- (instancetype)initWithNativePtr:(cv::Ptr<cv::ml::ParamGrid>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::ml::ParamGrid>)nativePtr {
    return [[ParamGrid alloc] initWithNativePtr:nativePtr];
}



//
// static Ptr_ParamGrid cv::ml::ParamGrid::create(double minVal = 0., double maxVal = 0., double logstep = 1.)
//
+ (ParamGrid*)create:(double)minVal maxVal:(double)maxVal logstep:(double)logstep {
    cv::Ptr<cv::ml::ParamGrid> retVal = cv::ml::ParamGrid::create(minVal, maxVal, logstep);
    return [ParamGrid fromNative:retVal];
}

+ (ParamGrid*)create:(double)minVal maxVal:(double)maxVal {
    cv::Ptr<cv::ml::ParamGrid> retVal = cv::ml::ParamGrid::create(minVal, maxVal);
    return [ParamGrid fromNative:retVal];
}

+ (ParamGrid*)create:(double)minVal {
    cv::Ptr<cv::ml::ParamGrid> retVal = cv::ml::ParamGrid::create(minVal);
    return [ParamGrid fromNative:retVal];
}

+ (ParamGrid*)create {
    cv::Ptr<cv::ml::ParamGrid> retVal = cv::ml::ParamGrid::create();
    return [ParamGrid fromNative:retVal];
}

-(double)minVal {
	return self.nativePtr->minVal;
}

-(void)setMinVal:(double)minVal {
	self.nativePtr->minVal = minVal;
}

-(double)maxVal {
	return self.nativePtr->maxVal;
}

-(void)setMaxVal:(double)maxVal {
	self.nativePtr->maxVal = maxVal;
}

-(double)logStep {
	return self.nativePtr->logStep;
}

-(void)setLogStep:(double)logStep {
	self.nativePtr->logStep = logStep;
}



@end



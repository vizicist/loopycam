//
// This file is auto-generated. Please don't modify it!
//

#import "DISOpticalFlow.h"
#import "CVObjcUtil.h"



@implementation DISOpticalFlow


- (instancetype)initWithNativePtr:(cv::Ptr<cv::DISOpticalFlow>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrDISOpticalFlow = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::DISOpticalFlow>)nativePtr {
    return [[DISOpticalFlow alloc] initWithNativePtr:nativePtr];
}


+ (int)PRESET_ULTRAFAST {
    return 0;
}

+ (int)PRESET_FAST {
    return 1;
}

+ (int)PRESET_MEDIUM {
    return 2;
}


//
//  int cv::DISOpticalFlow::getFinestScale()
//
- (int)getFinestScale {
    int retVal = self.nativePtrDISOpticalFlow->getFinestScale();
    return retVal;
}


//
//  void cv::DISOpticalFlow::setFinestScale(int val)
//
- (void)setFinestScale:(int)val {
    self.nativePtrDISOpticalFlow->setFinestScale(val);
}


//
//  int cv::DISOpticalFlow::getPatchSize()
//
- (int)getPatchSize {
    int retVal = self.nativePtrDISOpticalFlow->getPatchSize();
    return retVal;
}


//
//  void cv::DISOpticalFlow::setPatchSize(int val)
//
- (void)setPatchSize:(int)val {
    self.nativePtrDISOpticalFlow->setPatchSize(val);
}


//
//  int cv::DISOpticalFlow::getPatchStride()
//
- (int)getPatchStride {
    int retVal = self.nativePtrDISOpticalFlow->getPatchStride();
    return retVal;
}


//
//  void cv::DISOpticalFlow::setPatchStride(int val)
//
- (void)setPatchStride:(int)val {
    self.nativePtrDISOpticalFlow->setPatchStride(val);
}


//
//  int cv::DISOpticalFlow::getGradientDescentIterations()
//
- (int)getGradientDescentIterations {
    int retVal = self.nativePtrDISOpticalFlow->getGradientDescentIterations();
    return retVal;
}


//
//  void cv::DISOpticalFlow::setGradientDescentIterations(int val)
//
- (void)setGradientDescentIterations:(int)val {
    self.nativePtrDISOpticalFlow->setGradientDescentIterations(val);
}


//
//  int cv::DISOpticalFlow::getVariationalRefinementIterations()
//
- (int)getVariationalRefinementIterations {
    int retVal = self.nativePtrDISOpticalFlow->getVariationalRefinementIterations();
    return retVal;
}


//
//  void cv::DISOpticalFlow::setVariationalRefinementIterations(int val)
//
- (void)setVariationalRefinementIterations:(int)val {
    self.nativePtrDISOpticalFlow->setVariationalRefinementIterations(val);
}


//
//  float cv::DISOpticalFlow::getVariationalRefinementAlpha()
//
- (float)getVariationalRefinementAlpha {
    float retVal = self.nativePtrDISOpticalFlow->getVariationalRefinementAlpha();
    return retVal;
}


//
//  void cv::DISOpticalFlow::setVariationalRefinementAlpha(float val)
//
- (void)setVariationalRefinementAlpha:(float)val {
    self.nativePtrDISOpticalFlow->setVariationalRefinementAlpha(val);
}


//
//  float cv::DISOpticalFlow::getVariationalRefinementDelta()
//
- (float)getVariationalRefinementDelta {
    float retVal = self.nativePtrDISOpticalFlow->getVariationalRefinementDelta();
    return retVal;
}


//
//  void cv::DISOpticalFlow::setVariationalRefinementDelta(float val)
//
- (void)setVariationalRefinementDelta:(float)val {
    self.nativePtrDISOpticalFlow->setVariationalRefinementDelta(val);
}


//
//  float cv::DISOpticalFlow::getVariationalRefinementGamma()
//
- (float)getVariationalRefinementGamma {
    float retVal = self.nativePtrDISOpticalFlow->getVariationalRefinementGamma();
    return retVal;
}


//
//  void cv::DISOpticalFlow::setVariationalRefinementGamma(float val)
//
- (void)setVariationalRefinementGamma:(float)val {
    self.nativePtrDISOpticalFlow->setVariationalRefinementGamma(val);
}


//
//  float cv::DISOpticalFlow::getVariationalRefinementEpsilon()
//
- (float)getVariationalRefinementEpsilon {
    float retVal = self.nativePtrDISOpticalFlow->getVariationalRefinementEpsilon();
    return retVal;
}


//
//  void cv::DISOpticalFlow::setVariationalRefinementEpsilon(float val)
//
- (void)setVariationalRefinementEpsilon:(float)val {
    self.nativePtrDISOpticalFlow->setVariationalRefinementEpsilon(val);
}


//
//  bool cv::DISOpticalFlow::getUseMeanNormalization()
//
- (BOOL)getUseMeanNormalization {
    bool retVal = self.nativePtrDISOpticalFlow->getUseMeanNormalization();
    return retVal;
}


//
//  void cv::DISOpticalFlow::setUseMeanNormalization(bool val)
//
- (void)setUseMeanNormalization:(BOOL)val {
    self.nativePtrDISOpticalFlow->setUseMeanNormalization((bool)val);
}


//
//  bool cv::DISOpticalFlow::getUseSpatialPropagation()
//
- (BOOL)getUseSpatialPropagation {
    bool retVal = self.nativePtrDISOpticalFlow->getUseSpatialPropagation();
    return retVal;
}


//
//  void cv::DISOpticalFlow::setUseSpatialPropagation(bool val)
//
- (void)setUseSpatialPropagation:(BOOL)val {
    self.nativePtrDISOpticalFlow->setUseSpatialPropagation((bool)val);
}


//
// static Ptr_DISOpticalFlow cv::DISOpticalFlow::create(int preset = DISOpticalFlow::PRESET_FAST)
//
+ (DISOpticalFlow*)create:(int)preset {
    cv::Ptr<cv::DISOpticalFlow> retVal = cv::DISOpticalFlow::create(preset);
    return [DISOpticalFlow fromNative:retVal];
}

+ (DISOpticalFlow*)create {
    cv::Ptr<cv::DISOpticalFlow> retVal = cv::DISOpticalFlow::create();
    return [DISOpticalFlow fromNative:retVal];
}



@end



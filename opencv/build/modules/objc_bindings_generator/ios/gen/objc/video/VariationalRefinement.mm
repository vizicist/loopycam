//
// This file is auto-generated. Please don't modify it!
//

#import "VariationalRefinement.h"
#import "CVObjcUtil.h"

#import "Mat.h"

@implementation VariationalRefinement


- (instancetype)initWithNativePtr:(cv::Ptr<cv::VariationalRefinement>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrVariationalRefinement = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::VariationalRefinement>)nativePtr {
    return [[VariationalRefinement alloc] initWithNativePtr:nativePtr];
}



//
//  void cv::VariationalRefinement::calcUV(Mat I0, Mat I1, Mat& flow_u, Mat& flow_v)
//
- (void)calcUV:(Mat*)I0 I1:(Mat*)I1 flow_u:(Mat*)flow_u flow_v:(Mat*)flow_v {
    self.nativePtrVariationalRefinement->calcUV(I0.nativeRef, I1.nativeRef, flow_u.nativeRef, flow_v.nativeRef);
}


//
//  int cv::VariationalRefinement::getFixedPointIterations()
//
- (int)getFixedPointIterations {
    int retVal = self.nativePtrVariationalRefinement->getFixedPointIterations();
    return retVal;
}


//
//  void cv::VariationalRefinement::setFixedPointIterations(int val)
//
- (void)setFixedPointIterations:(int)val {
    self.nativePtrVariationalRefinement->setFixedPointIterations(val);
}


//
//  int cv::VariationalRefinement::getSorIterations()
//
- (int)getSorIterations {
    int retVal = self.nativePtrVariationalRefinement->getSorIterations();
    return retVal;
}


//
//  void cv::VariationalRefinement::setSorIterations(int val)
//
- (void)setSorIterations:(int)val {
    self.nativePtrVariationalRefinement->setSorIterations(val);
}


//
//  float cv::VariationalRefinement::getOmega()
//
- (float)getOmega {
    float retVal = self.nativePtrVariationalRefinement->getOmega();
    return retVal;
}


//
//  void cv::VariationalRefinement::setOmega(float val)
//
- (void)setOmega:(float)val {
    self.nativePtrVariationalRefinement->setOmega(val);
}


//
//  float cv::VariationalRefinement::getAlpha()
//
- (float)getAlpha {
    float retVal = self.nativePtrVariationalRefinement->getAlpha();
    return retVal;
}


//
//  void cv::VariationalRefinement::setAlpha(float val)
//
- (void)setAlpha:(float)val {
    self.nativePtrVariationalRefinement->setAlpha(val);
}


//
//  float cv::VariationalRefinement::getDelta()
//
- (float)getDelta {
    float retVal = self.nativePtrVariationalRefinement->getDelta();
    return retVal;
}


//
//  void cv::VariationalRefinement::setDelta(float val)
//
- (void)setDelta:(float)val {
    self.nativePtrVariationalRefinement->setDelta(val);
}


//
//  float cv::VariationalRefinement::getGamma()
//
- (float)getGamma {
    float retVal = self.nativePtrVariationalRefinement->getGamma();
    return retVal;
}


//
//  void cv::VariationalRefinement::setGamma(float val)
//
- (void)setGamma:(float)val {
    self.nativePtrVariationalRefinement->setGamma(val);
}


//
//  float cv::VariationalRefinement::getEpsilon()
//
- (float)getEpsilon {
    float retVal = self.nativePtrVariationalRefinement->getEpsilon();
    return retVal;
}


//
//  void cv::VariationalRefinement::setEpsilon(float val)
//
- (void)setEpsilon:(float)val {
    self.nativePtrVariationalRefinement->setEpsilon(val);
}


//
// static Ptr_VariationalRefinement cv::VariationalRefinement::create()
//
+ (VariationalRefinement*)create {
    cv::Ptr<cv::VariationalRefinement> retVal = cv::VariationalRefinement::create();
    return [VariationalRefinement fromNative:retVal];
}



@end



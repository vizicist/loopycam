//
// This file is auto-generated. Please don't modify it!
//

#import "ANN_MLP.h"
#import "CVObjcUtil.h"

#import "Mat.h"
#import "TermCriteria.h"

@implementation ANN_MLP


- (instancetype)initWithNativePtr:(cv::Ptr<cv::ml::ANN_MLP>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrANN_MLP = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::ml::ANN_MLP>)nativePtr {
    return [[ANN_MLP alloc] initWithNativePtr:nativePtr];
}



//
//  void cv::ml::ANN_MLP::setTrainMethod(int method, double param1 = 0, double param2 = 0)
//
- (void)setTrainMethod:(int)method param1:(double)param1 param2:(double)param2 {
    self.nativePtrANN_MLP->setTrainMethod(method, param1, param2);
}

- (void)setTrainMethod:(int)method param1:(double)param1 {
    self.nativePtrANN_MLP->setTrainMethod(method, param1);
}

- (void)setTrainMethod:(int)method {
    self.nativePtrANN_MLP->setTrainMethod(method);
}


//
//  int cv::ml::ANN_MLP::getTrainMethod()
//
- (int)getTrainMethod {
    int retVal = self.nativePtrANN_MLP->getTrainMethod();
    return retVal;
}


//
//  void cv::ml::ANN_MLP::setActivationFunction(int type, double param1 = 0, double param2 = 0)
//
- (void)setActivationFunction:(int)type param1:(double)param1 param2:(double)param2 {
    self.nativePtrANN_MLP->setActivationFunction(type, param1, param2);
}

- (void)setActivationFunction:(int)type param1:(double)param1 {
    self.nativePtrANN_MLP->setActivationFunction(type, param1);
}

- (void)setActivationFunction:(int)type {
    self.nativePtrANN_MLP->setActivationFunction(type);
}


//
//  void cv::ml::ANN_MLP::setLayerSizes(Mat _layer_sizes)
//
- (void)setLayerSizes:(Mat*)_layer_sizes {
    self.nativePtrANN_MLP->setLayerSizes(_layer_sizes.nativeRef);
}


//
//  Mat cv::ml::ANN_MLP::getLayerSizes()
//
- (Mat*)getLayerSizes {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtrANN_MLP->getLayerSizes());
    return [Mat fromNativePtr:retVal];
}


//
//  TermCriteria cv::ml::ANN_MLP::getTermCriteria()
//
- (TermCriteria*)getTermCriteria {
    cv::TermCriteria retVal = self.nativePtrANN_MLP->getTermCriteria();
    return [TermCriteria fromNative:retVal];
}


//
//  void cv::ml::ANN_MLP::setTermCriteria(TermCriteria val)
//
- (void)setTermCriteria:(TermCriteria*)val {
    self.nativePtrANN_MLP->setTermCriteria(val.nativeRef);
}


//
//  double cv::ml::ANN_MLP::getBackpropWeightScale()
//
- (double)getBackpropWeightScale {
    double retVal = self.nativePtrANN_MLP->getBackpropWeightScale();
    return retVal;
}


//
//  void cv::ml::ANN_MLP::setBackpropWeightScale(double val)
//
- (void)setBackpropWeightScale:(double)val {
    self.nativePtrANN_MLP->setBackpropWeightScale(val);
}


//
//  double cv::ml::ANN_MLP::getBackpropMomentumScale()
//
- (double)getBackpropMomentumScale {
    double retVal = self.nativePtrANN_MLP->getBackpropMomentumScale();
    return retVal;
}


//
//  void cv::ml::ANN_MLP::setBackpropMomentumScale(double val)
//
- (void)setBackpropMomentumScale:(double)val {
    self.nativePtrANN_MLP->setBackpropMomentumScale(val);
}


//
//  double cv::ml::ANN_MLP::getRpropDW0()
//
- (double)getRpropDW0 {
    double retVal = self.nativePtrANN_MLP->getRpropDW0();
    return retVal;
}


//
//  void cv::ml::ANN_MLP::setRpropDW0(double val)
//
- (void)setRpropDW0:(double)val {
    self.nativePtrANN_MLP->setRpropDW0(val);
}


//
//  double cv::ml::ANN_MLP::getRpropDWPlus()
//
- (double)getRpropDWPlus {
    double retVal = self.nativePtrANN_MLP->getRpropDWPlus();
    return retVal;
}


//
//  void cv::ml::ANN_MLP::setRpropDWPlus(double val)
//
- (void)setRpropDWPlus:(double)val {
    self.nativePtrANN_MLP->setRpropDWPlus(val);
}


//
//  double cv::ml::ANN_MLP::getRpropDWMinus()
//
- (double)getRpropDWMinus {
    double retVal = self.nativePtrANN_MLP->getRpropDWMinus();
    return retVal;
}


//
//  void cv::ml::ANN_MLP::setRpropDWMinus(double val)
//
- (void)setRpropDWMinus:(double)val {
    self.nativePtrANN_MLP->setRpropDWMinus(val);
}


//
//  double cv::ml::ANN_MLP::getRpropDWMin()
//
- (double)getRpropDWMin {
    double retVal = self.nativePtrANN_MLP->getRpropDWMin();
    return retVal;
}


//
//  void cv::ml::ANN_MLP::setRpropDWMin(double val)
//
- (void)setRpropDWMin:(double)val {
    self.nativePtrANN_MLP->setRpropDWMin(val);
}


//
//  double cv::ml::ANN_MLP::getRpropDWMax()
//
- (double)getRpropDWMax {
    double retVal = self.nativePtrANN_MLP->getRpropDWMax();
    return retVal;
}


//
//  void cv::ml::ANN_MLP::setRpropDWMax(double val)
//
- (void)setRpropDWMax:(double)val {
    self.nativePtrANN_MLP->setRpropDWMax(val);
}


//
//  double cv::ml::ANN_MLP::getAnnealInitialT()
//
- (double)getAnnealInitialT {
    double retVal = self.nativePtrANN_MLP->getAnnealInitialT();
    return retVal;
}


//
//  void cv::ml::ANN_MLP::setAnnealInitialT(double val)
//
- (void)setAnnealInitialT:(double)val {
    self.nativePtrANN_MLP->setAnnealInitialT(val);
}


//
//  double cv::ml::ANN_MLP::getAnnealFinalT()
//
- (double)getAnnealFinalT {
    double retVal = self.nativePtrANN_MLP->getAnnealFinalT();
    return retVal;
}


//
//  void cv::ml::ANN_MLP::setAnnealFinalT(double val)
//
- (void)setAnnealFinalT:(double)val {
    self.nativePtrANN_MLP->setAnnealFinalT(val);
}


//
//  double cv::ml::ANN_MLP::getAnnealCoolingRatio()
//
- (double)getAnnealCoolingRatio {
    double retVal = self.nativePtrANN_MLP->getAnnealCoolingRatio();
    return retVal;
}


//
//  void cv::ml::ANN_MLP::setAnnealCoolingRatio(double val)
//
- (void)setAnnealCoolingRatio:(double)val {
    self.nativePtrANN_MLP->setAnnealCoolingRatio(val);
}


//
//  int cv::ml::ANN_MLP::getAnnealItePerStep()
//
- (int)getAnnealItePerStep {
    int retVal = self.nativePtrANN_MLP->getAnnealItePerStep();
    return retVal;
}


//
//  void cv::ml::ANN_MLP::setAnnealItePerStep(int val)
//
- (void)setAnnealItePerStep:(int)val {
    self.nativePtrANN_MLP->setAnnealItePerStep(val);
}


//
//  Mat cv::ml::ANN_MLP::getWeights(int layerIdx)
//
- (Mat*)getWeights:(int)layerIdx {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtrANN_MLP->getWeights(layerIdx));
    return [Mat fromNativePtr:retVal];
}


//
// static Ptr_ANN_MLP cv::ml::ANN_MLP::create()
//
+ (ANN_MLP*)create {
    cv::Ptr<cv::ml::ANN_MLP> retVal = cv::ml::ANN_MLP::create();
    return [ANN_MLP fromNative:retVal];
}


//
// static Ptr_ANN_MLP cv::ml::ANN_MLP::load(String filepath)
//
+ (ANN_MLP*)load:(NSString*)filepath {
    cv::Ptr<cv::ml::ANN_MLP> retVal = cv::ml::ANN_MLP::load(cv::String(filepath.UTF8String));
    return [ANN_MLP fromNative:retVal];
}



@end



//
// This file is auto-generated. Please don't modify it!
//

#import "SVMSGD.h"
#import "CVObjcUtil.h"

#import "Mat.h"
#import "TermCriteria.h"

@implementation SVMSGD


- (instancetype)initWithNativePtr:(cv::Ptr<cv::ml::SVMSGD>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrSVMSGD = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::ml::SVMSGD>)nativePtr {
    return [[SVMSGD alloc] initWithNativePtr:nativePtr];
}



//
//  Mat cv::ml::SVMSGD::getWeights()
//
- (Mat*)getWeights {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtrSVMSGD->getWeights());
    return [Mat fromNativePtr:retVal];
}


//
//  float cv::ml::SVMSGD::getShift()
//
- (float)getShift {
    float retVal = self.nativePtrSVMSGD->getShift();
    return retVal;
}


//
// static Ptr_SVMSGD cv::ml::SVMSGD::create()
//
+ (SVMSGD*)create {
    cv::Ptr<cv::ml::SVMSGD> retVal = cv::ml::SVMSGD::create();
    return [SVMSGD fromNative:retVal];
}


//
// static Ptr_SVMSGD cv::ml::SVMSGD::load(String filepath, String nodeName = String())
//
+ (SVMSGD*)load:(NSString*)filepath nodeName:(NSString*)nodeName {
    cv::Ptr<cv::ml::SVMSGD> retVal = cv::ml::SVMSGD::load(cv::String(filepath.UTF8String), cv::String(nodeName.UTF8String));
    return [SVMSGD fromNative:retVal];
}

+ (SVMSGD*)load:(NSString*)filepath {
    cv::Ptr<cv::ml::SVMSGD> retVal = cv::ml::SVMSGD::load(cv::String(filepath.UTF8String));
    return [SVMSGD fromNative:retVal];
}


//
//  void cv::ml::SVMSGD::setOptimalParameters(int svmsgdType = SVMSGD::ASGD, int marginType = SVMSGD::SOFT_MARGIN)
//
- (void)setOptimalParameters:(int)svmsgdType marginType:(int)marginType {
    self.nativePtrSVMSGD->setOptimalParameters(svmsgdType, marginType);
}

- (void)setOptimalParameters:(int)svmsgdType {
    self.nativePtrSVMSGD->setOptimalParameters(svmsgdType);
}

- (void)setOptimalParameters {
    self.nativePtrSVMSGD->setOptimalParameters();
}


//
//  int cv::ml::SVMSGD::getSvmsgdType()
//
- (int)getSvmsgdType {
    int retVal = self.nativePtrSVMSGD->getSvmsgdType();
    return retVal;
}


//
//  void cv::ml::SVMSGD::setSvmsgdType(int svmsgdType)
//
- (void)setSvmsgdType:(int)svmsgdType {
    self.nativePtrSVMSGD->setSvmsgdType(svmsgdType);
}


//
//  int cv::ml::SVMSGD::getMarginType()
//
- (int)getMarginType {
    int retVal = self.nativePtrSVMSGD->getMarginType();
    return retVal;
}


//
//  void cv::ml::SVMSGD::setMarginType(int marginType)
//
- (void)setMarginType:(int)marginType {
    self.nativePtrSVMSGD->setMarginType(marginType);
}


//
//  float cv::ml::SVMSGD::getMarginRegularization()
//
- (float)getMarginRegularization {
    float retVal = self.nativePtrSVMSGD->getMarginRegularization();
    return retVal;
}


//
//  void cv::ml::SVMSGD::setMarginRegularization(float marginRegularization)
//
- (void)setMarginRegularization:(float)marginRegularization {
    self.nativePtrSVMSGD->setMarginRegularization(marginRegularization);
}


//
//  float cv::ml::SVMSGD::getInitialStepSize()
//
- (float)getInitialStepSize {
    float retVal = self.nativePtrSVMSGD->getInitialStepSize();
    return retVal;
}


//
//  void cv::ml::SVMSGD::setInitialStepSize(float InitialStepSize)
//
- (void)setInitialStepSize:(float)InitialStepSize {
    self.nativePtrSVMSGD->setInitialStepSize(InitialStepSize);
}


//
//  float cv::ml::SVMSGD::getStepDecreasingPower()
//
- (float)getStepDecreasingPower {
    float retVal = self.nativePtrSVMSGD->getStepDecreasingPower();
    return retVal;
}


//
//  void cv::ml::SVMSGD::setStepDecreasingPower(float stepDecreasingPower)
//
- (void)setStepDecreasingPower:(float)stepDecreasingPower {
    self.nativePtrSVMSGD->setStepDecreasingPower(stepDecreasingPower);
}


//
//  TermCriteria cv::ml::SVMSGD::getTermCriteria()
//
- (TermCriteria*)getTermCriteria {
    cv::TermCriteria retVal = self.nativePtrSVMSGD->getTermCriteria();
    return [TermCriteria fromNative:retVal];
}


//
//  void cv::ml::SVMSGD::setTermCriteria(TermCriteria val)
//
- (void)setTermCriteria:(TermCriteria*)val {
    self.nativePtrSVMSGD->setTermCriteria(val.nativeRef);
}



@end



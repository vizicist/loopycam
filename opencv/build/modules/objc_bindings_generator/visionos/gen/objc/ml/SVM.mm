//
// This file is auto-generated. Please don't modify it!
//

#import "SVM.h"
#import "CVObjcUtil.h"

#import "Mat.h"
#import "ParamGrid.h"
#import "TermCriteria.h"

@implementation SVM


- (instancetype)initWithNativePtr:(cv::Ptr<cv::ml::SVM>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrSVM = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::ml::SVM>)nativePtr {
    return [[SVM alloc] initWithNativePtr:nativePtr];
}



//
//  int cv::ml::SVM::getType()
//
- (int)getType {
    int retVal = self.nativePtrSVM->getType();
    return retVal;
}


//
//  void cv::ml::SVM::setType(int val)
//
- (void)setType:(int)val {
    self.nativePtrSVM->setType(val);
}


//
//  double cv::ml::SVM::getGamma()
//
- (double)getGamma {
    double retVal = self.nativePtrSVM->getGamma();
    return retVal;
}


//
//  void cv::ml::SVM::setGamma(double val)
//
- (void)setGamma:(double)val {
    self.nativePtrSVM->setGamma(val);
}


//
//  double cv::ml::SVM::getCoef0()
//
- (double)getCoef0 {
    double retVal = self.nativePtrSVM->getCoef0();
    return retVal;
}


//
//  void cv::ml::SVM::setCoef0(double val)
//
- (void)setCoef0:(double)val {
    self.nativePtrSVM->setCoef0(val);
}


//
//  double cv::ml::SVM::getDegree()
//
- (double)getDegree {
    double retVal = self.nativePtrSVM->getDegree();
    return retVal;
}


//
//  void cv::ml::SVM::setDegree(double val)
//
- (void)setDegree:(double)val {
    self.nativePtrSVM->setDegree(val);
}


//
//  double cv::ml::SVM::getC()
//
- (double)getC {
    double retVal = self.nativePtrSVM->getC();
    return retVal;
}


//
//  void cv::ml::SVM::setC(double val)
//
- (void)setC:(double)val {
    self.nativePtrSVM->setC(val);
}


//
//  double cv::ml::SVM::getNu()
//
- (double)getNu {
    double retVal = self.nativePtrSVM->getNu();
    return retVal;
}


//
//  void cv::ml::SVM::setNu(double val)
//
- (void)setNu:(double)val {
    self.nativePtrSVM->setNu(val);
}


//
//  double cv::ml::SVM::getP()
//
- (double)getP {
    double retVal = self.nativePtrSVM->getP();
    return retVal;
}


//
//  void cv::ml::SVM::setP(double val)
//
- (void)setP:(double)val {
    self.nativePtrSVM->setP(val);
}


//
//  Mat cv::ml::SVM::getClassWeights()
//
- (Mat*)getClassWeights {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtrSVM->getClassWeights());
    return [Mat fromNativePtr:retVal];
}


//
//  void cv::ml::SVM::setClassWeights(Mat val)
//
- (void)setClassWeights:(Mat*)val {
    self.nativePtrSVM->setClassWeights(val.nativeRef);
}


//
//  TermCriteria cv::ml::SVM::getTermCriteria()
//
- (TermCriteria*)getTermCriteria {
    cv::TermCriteria retVal = self.nativePtrSVM->getTermCriteria();
    return [TermCriteria fromNative:retVal];
}


//
//  void cv::ml::SVM::setTermCriteria(TermCriteria val)
//
- (void)setTermCriteria:(TermCriteria*)val {
    self.nativePtrSVM->setTermCriteria(val.nativeRef);
}


//
//  int cv::ml::SVM::getKernelType()
//
- (int)getKernelType {
    int retVal = self.nativePtrSVM->getKernelType();
    return retVal;
}


//
//  void cv::ml::SVM::setKernel(int kernelType)
//
- (void)setKernel:(int)kernelType {
    self.nativePtrSVM->setKernel(kernelType);
}


//
//  bool cv::ml::SVM::trainAuto(Mat samples, int layout, Mat responses, int kFold = 10, Ptr_ParamGrid Cgrid = SVM::getDefaultGridPtr(SVM::C), Ptr_ParamGrid gammaGrid = SVM::getDefaultGridPtr(SVM::GAMMA), Ptr_ParamGrid pGrid = SVM::getDefaultGridPtr(SVM::P), Ptr_ParamGrid nuGrid = SVM::getDefaultGridPtr(SVM::NU), Ptr_ParamGrid coeffGrid = SVM::getDefaultGridPtr(SVM::COEF), Ptr_ParamGrid degreeGrid = SVM::getDefaultGridPtr(SVM::DEGREE), bool balanced = false)
//
- (BOOL)trainAuto:(Mat*)samples layout:(int)layout responses:(Mat*)responses kFold:(int)kFold Cgrid:(ParamGrid*)Cgrid gammaGrid:(ParamGrid*)gammaGrid pGrid:(ParamGrid*)pGrid nuGrid:(ParamGrid*)nuGrid coeffGrid:(ParamGrid*)coeffGrid degreeGrid:(ParamGrid*)degreeGrid balanced:(BOOL)balanced {
    bool retVal = self.nativePtrSVM->trainAuto(samples.nativeRef, layout, responses.nativeRef, kFold, Cgrid.nativePtr, gammaGrid.nativePtr, pGrid.nativePtr, nuGrid.nativePtr, coeffGrid.nativePtr, degreeGrid.nativePtr, (bool)balanced);
    return retVal;
}

- (BOOL)trainAuto:(Mat*)samples layout:(int)layout responses:(Mat*)responses kFold:(int)kFold Cgrid:(ParamGrid*)Cgrid gammaGrid:(ParamGrid*)gammaGrid pGrid:(ParamGrid*)pGrid nuGrid:(ParamGrid*)nuGrid coeffGrid:(ParamGrid*)coeffGrid degreeGrid:(ParamGrid*)degreeGrid {
    bool retVal = self.nativePtrSVM->trainAuto(samples.nativeRef, layout, responses.nativeRef, kFold, Cgrid.nativePtr, gammaGrid.nativePtr, pGrid.nativePtr, nuGrid.nativePtr, coeffGrid.nativePtr, degreeGrid.nativePtr);
    return retVal;
}

- (BOOL)trainAuto:(Mat*)samples layout:(int)layout responses:(Mat*)responses kFold:(int)kFold Cgrid:(ParamGrid*)Cgrid gammaGrid:(ParamGrid*)gammaGrid pGrid:(ParamGrid*)pGrid nuGrid:(ParamGrid*)nuGrid coeffGrid:(ParamGrid*)coeffGrid {
    bool retVal = self.nativePtrSVM->trainAuto(samples.nativeRef, layout, responses.nativeRef, kFold, Cgrid.nativePtr, gammaGrid.nativePtr, pGrid.nativePtr, nuGrid.nativePtr, coeffGrid.nativePtr);
    return retVal;
}

- (BOOL)trainAuto:(Mat*)samples layout:(int)layout responses:(Mat*)responses kFold:(int)kFold Cgrid:(ParamGrid*)Cgrid gammaGrid:(ParamGrid*)gammaGrid pGrid:(ParamGrid*)pGrid nuGrid:(ParamGrid*)nuGrid {
    bool retVal = self.nativePtrSVM->trainAuto(samples.nativeRef, layout, responses.nativeRef, kFold, Cgrid.nativePtr, gammaGrid.nativePtr, pGrid.nativePtr, nuGrid.nativePtr);
    return retVal;
}

- (BOOL)trainAuto:(Mat*)samples layout:(int)layout responses:(Mat*)responses kFold:(int)kFold Cgrid:(ParamGrid*)Cgrid gammaGrid:(ParamGrid*)gammaGrid pGrid:(ParamGrid*)pGrid {
    bool retVal = self.nativePtrSVM->trainAuto(samples.nativeRef, layout, responses.nativeRef, kFold, Cgrid.nativePtr, gammaGrid.nativePtr, pGrid.nativePtr);
    return retVal;
}

- (BOOL)trainAuto:(Mat*)samples layout:(int)layout responses:(Mat*)responses kFold:(int)kFold Cgrid:(ParamGrid*)Cgrid gammaGrid:(ParamGrid*)gammaGrid {
    bool retVal = self.nativePtrSVM->trainAuto(samples.nativeRef, layout, responses.nativeRef, kFold, Cgrid.nativePtr, gammaGrid.nativePtr);
    return retVal;
}

- (BOOL)trainAuto:(Mat*)samples layout:(int)layout responses:(Mat*)responses kFold:(int)kFold Cgrid:(ParamGrid*)Cgrid {
    bool retVal = self.nativePtrSVM->trainAuto(samples.nativeRef, layout, responses.nativeRef, kFold, Cgrid.nativePtr);
    return retVal;
}

- (BOOL)trainAuto:(Mat*)samples layout:(int)layout responses:(Mat*)responses kFold:(int)kFold {
    bool retVal = self.nativePtrSVM->trainAuto(samples.nativeRef, layout, responses.nativeRef, kFold);
    return retVal;
}

- (BOOL)trainAuto:(Mat*)samples layout:(int)layout responses:(Mat*)responses {
    bool retVal = self.nativePtrSVM->trainAuto(samples.nativeRef, layout, responses.nativeRef);
    return retVal;
}


//
//  Mat cv::ml::SVM::getSupportVectors()
//
- (Mat*)getSupportVectors {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtrSVM->getSupportVectors());
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::ml::SVM::getUncompressedSupportVectors()
//
- (Mat*)getUncompressedSupportVectors {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtrSVM->getUncompressedSupportVectors());
    return [Mat fromNativePtr:retVal];
}


//
//  double cv::ml::SVM::getDecisionFunction(int i, Mat& alpha, Mat& svidx)
//
- (double)getDecisionFunction:(int)i alpha:(Mat*)alpha svidx:(Mat*)svidx {
    double retVal = self.nativePtrSVM->getDecisionFunction(i, alpha.nativeRef, svidx.nativeRef);
    return retVal;
}


//
// static Ptr_ParamGrid cv::ml::SVM::getDefaultGridPtr(int param_id)
//
+ (ParamGrid*)getDefaultGridPtr:(int)param_id {
    cv::Ptr<cv::ml::ParamGrid> retVal = cv::ml::SVM::getDefaultGridPtr(param_id);
    return [ParamGrid fromNative:retVal];
}


//
// static Ptr_SVM cv::ml::SVM::create()
//
+ (SVM*)create {
    cv::Ptr<cv::ml::SVM> retVal = cv::ml::SVM::create();
    return [SVM fromNative:retVal];
}


//
// static Ptr_SVM cv::ml::SVM::load(String filepath)
//
+ (SVM*)load:(NSString*)filepath {
    cv::Ptr<cv::ml::SVM> retVal = cv::ml::SVM::load(cv::String(filepath.UTF8String));
    return [SVM fromNative:retVal];
}



@end



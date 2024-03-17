//
// This file is auto-generated. Please don't modify it!
//

#import "FarnebackOpticalFlow.h"
#import "CVObjcUtil.h"



@implementation FarnebackOpticalFlow


- (instancetype)initWithNativePtr:(cv::Ptr<cv::FarnebackOpticalFlow>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrFarnebackOpticalFlow = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::FarnebackOpticalFlow>)nativePtr {
    return [[FarnebackOpticalFlow alloc] initWithNativePtr:nativePtr];
}



//
//  int cv::FarnebackOpticalFlow::getNumLevels()
//
- (int)getNumLevels {
    int retVal = self.nativePtrFarnebackOpticalFlow->getNumLevels();
    return retVal;
}


//
//  void cv::FarnebackOpticalFlow::setNumLevels(int numLevels)
//
- (void)setNumLevels:(int)numLevels {
    self.nativePtrFarnebackOpticalFlow->setNumLevels(numLevels);
}


//
//  double cv::FarnebackOpticalFlow::getPyrScale()
//
- (double)getPyrScale {
    double retVal = self.nativePtrFarnebackOpticalFlow->getPyrScale();
    return retVal;
}


//
//  void cv::FarnebackOpticalFlow::setPyrScale(double pyrScale)
//
- (void)setPyrScale:(double)pyrScale {
    self.nativePtrFarnebackOpticalFlow->setPyrScale(pyrScale);
}


//
//  bool cv::FarnebackOpticalFlow::getFastPyramids()
//
- (BOOL)getFastPyramids {
    bool retVal = self.nativePtrFarnebackOpticalFlow->getFastPyramids();
    return retVal;
}


//
//  void cv::FarnebackOpticalFlow::setFastPyramids(bool fastPyramids)
//
- (void)setFastPyramids:(BOOL)fastPyramids {
    self.nativePtrFarnebackOpticalFlow->setFastPyramids((bool)fastPyramids);
}


//
//  int cv::FarnebackOpticalFlow::getWinSize()
//
- (int)getWinSize {
    int retVal = self.nativePtrFarnebackOpticalFlow->getWinSize();
    return retVal;
}


//
//  void cv::FarnebackOpticalFlow::setWinSize(int winSize)
//
- (void)setWinSize:(int)winSize {
    self.nativePtrFarnebackOpticalFlow->setWinSize(winSize);
}


//
//  int cv::FarnebackOpticalFlow::getNumIters()
//
- (int)getNumIters {
    int retVal = self.nativePtrFarnebackOpticalFlow->getNumIters();
    return retVal;
}


//
//  void cv::FarnebackOpticalFlow::setNumIters(int numIters)
//
- (void)setNumIters:(int)numIters {
    self.nativePtrFarnebackOpticalFlow->setNumIters(numIters);
}


//
//  int cv::FarnebackOpticalFlow::getPolyN()
//
- (int)getPolyN {
    int retVal = self.nativePtrFarnebackOpticalFlow->getPolyN();
    return retVal;
}


//
//  void cv::FarnebackOpticalFlow::setPolyN(int polyN)
//
- (void)setPolyN:(int)polyN {
    self.nativePtrFarnebackOpticalFlow->setPolyN(polyN);
}


//
//  double cv::FarnebackOpticalFlow::getPolySigma()
//
- (double)getPolySigma {
    double retVal = self.nativePtrFarnebackOpticalFlow->getPolySigma();
    return retVal;
}


//
//  void cv::FarnebackOpticalFlow::setPolySigma(double polySigma)
//
- (void)setPolySigma:(double)polySigma {
    self.nativePtrFarnebackOpticalFlow->setPolySigma(polySigma);
}


//
//  int cv::FarnebackOpticalFlow::getFlags()
//
- (int)getFlags {
    int retVal = self.nativePtrFarnebackOpticalFlow->getFlags();
    return retVal;
}


//
//  void cv::FarnebackOpticalFlow::setFlags(int flags)
//
- (void)setFlags:(int)flags {
    self.nativePtrFarnebackOpticalFlow->setFlags(flags);
}


//
// static Ptr_FarnebackOpticalFlow cv::FarnebackOpticalFlow::create(int numLevels = 5, double pyrScale = 0.5, bool fastPyramids = false, int winSize = 13, int numIters = 10, int polyN = 5, double polySigma = 1.1, int flags = 0)
//
+ (FarnebackOpticalFlow*)create:(int)numLevels pyrScale:(double)pyrScale fastPyramids:(BOOL)fastPyramids winSize:(int)winSize numIters:(int)numIters polyN:(int)polyN polySigma:(double)polySigma flags:(int)flags {
    cv::Ptr<cv::FarnebackOpticalFlow> retVal = cv::FarnebackOpticalFlow::create(numLevels, pyrScale, (bool)fastPyramids, winSize, numIters, polyN, polySigma, flags);
    return [FarnebackOpticalFlow fromNative:retVal];
}

+ (FarnebackOpticalFlow*)create:(int)numLevels pyrScale:(double)pyrScale fastPyramids:(BOOL)fastPyramids winSize:(int)winSize numIters:(int)numIters polyN:(int)polyN polySigma:(double)polySigma {
    cv::Ptr<cv::FarnebackOpticalFlow> retVal = cv::FarnebackOpticalFlow::create(numLevels, pyrScale, (bool)fastPyramids, winSize, numIters, polyN, polySigma);
    return [FarnebackOpticalFlow fromNative:retVal];
}

+ (FarnebackOpticalFlow*)create:(int)numLevels pyrScale:(double)pyrScale fastPyramids:(BOOL)fastPyramids winSize:(int)winSize numIters:(int)numIters polyN:(int)polyN {
    cv::Ptr<cv::FarnebackOpticalFlow> retVal = cv::FarnebackOpticalFlow::create(numLevels, pyrScale, (bool)fastPyramids, winSize, numIters, polyN);
    return [FarnebackOpticalFlow fromNative:retVal];
}

+ (FarnebackOpticalFlow*)create:(int)numLevels pyrScale:(double)pyrScale fastPyramids:(BOOL)fastPyramids winSize:(int)winSize numIters:(int)numIters {
    cv::Ptr<cv::FarnebackOpticalFlow> retVal = cv::FarnebackOpticalFlow::create(numLevels, pyrScale, (bool)fastPyramids, winSize, numIters);
    return [FarnebackOpticalFlow fromNative:retVal];
}

+ (FarnebackOpticalFlow*)create:(int)numLevels pyrScale:(double)pyrScale fastPyramids:(BOOL)fastPyramids winSize:(int)winSize {
    cv::Ptr<cv::FarnebackOpticalFlow> retVal = cv::FarnebackOpticalFlow::create(numLevels, pyrScale, (bool)fastPyramids, winSize);
    return [FarnebackOpticalFlow fromNative:retVal];
}

+ (FarnebackOpticalFlow*)create:(int)numLevels pyrScale:(double)pyrScale fastPyramids:(BOOL)fastPyramids {
    cv::Ptr<cv::FarnebackOpticalFlow> retVal = cv::FarnebackOpticalFlow::create(numLevels, pyrScale, (bool)fastPyramids);
    return [FarnebackOpticalFlow fromNative:retVal];
}

+ (FarnebackOpticalFlow*)create:(int)numLevels pyrScale:(double)pyrScale {
    cv::Ptr<cv::FarnebackOpticalFlow> retVal = cv::FarnebackOpticalFlow::create(numLevels, pyrScale);
    return [FarnebackOpticalFlow fromNative:retVal];
}

+ (FarnebackOpticalFlow*)create:(int)numLevels {
    cv::Ptr<cv::FarnebackOpticalFlow> retVal = cv::FarnebackOpticalFlow::create(numLevels);
    return [FarnebackOpticalFlow fromNative:retVal];
}

+ (FarnebackOpticalFlow*)create {
    cv::Ptr<cv::FarnebackOpticalFlow> retVal = cv::FarnebackOpticalFlow::create();
    return [FarnebackOpticalFlow fromNative:retVal];
}



@end



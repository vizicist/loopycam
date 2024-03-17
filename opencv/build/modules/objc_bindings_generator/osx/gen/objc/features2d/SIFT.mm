//
// This file is auto-generated. Please don't modify it!
//

#import "SIFT.h"
#import "CVObjcUtil.h"



@implementation SIFT


- (instancetype)initWithNativePtr:(cv::Ptr<cv::SIFT>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrSIFT = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::SIFT>)nativePtr {
    return [[SIFT alloc] initWithNativePtr:nativePtr];
}



//
// static Ptr_SIFT cv::SIFT::create(int nfeatures = 0, int nOctaveLayers = 3, double contrastThreshold = 0.04, double edgeThreshold = 10, double sigma = 1.6, bool enable_precise_upscale = false)
//
+ (SIFT*)create:(int)nfeatures nOctaveLayers:(int)nOctaveLayers contrastThreshold:(double)contrastThreshold edgeThreshold:(double)edgeThreshold sigma:(double)sigma enable_precise_upscale:(BOOL)enable_precise_upscale {
    cv::Ptr<cv::SIFT> retVal = cv::SIFT::create(nfeatures, nOctaveLayers, contrastThreshold, edgeThreshold, sigma, (bool)enable_precise_upscale);
    return [SIFT fromNative:retVal];
}

+ (SIFT*)create:(int)nfeatures nOctaveLayers:(int)nOctaveLayers contrastThreshold:(double)contrastThreshold edgeThreshold:(double)edgeThreshold sigma:(double)sigma {
    cv::Ptr<cv::SIFT> retVal = cv::SIFT::create(nfeatures, nOctaveLayers, contrastThreshold, edgeThreshold, sigma);
    return [SIFT fromNative:retVal];
}

+ (SIFT*)create:(int)nfeatures nOctaveLayers:(int)nOctaveLayers contrastThreshold:(double)contrastThreshold edgeThreshold:(double)edgeThreshold {
    cv::Ptr<cv::SIFT> retVal = cv::SIFT::create(nfeatures, nOctaveLayers, contrastThreshold, edgeThreshold);
    return [SIFT fromNative:retVal];
}

+ (SIFT*)create:(int)nfeatures nOctaveLayers:(int)nOctaveLayers contrastThreshold:(double)contrastThreshold {
    cv::Ptr<cv::SIFT> retVal = cv::SIFT::create(nfeatures, nOctaveLayers, contrastThreshold);
    return [SIFT fromNative:retVal];
}

+ (SIFT*)create:(int)nfeatures nOctaveLayers:(int)nOctaveLayers {
    cv::Ptr<cv::SIFT> retVal = cv::SIFT::create(nfeatures, nOctaveLayers);
    return [SIFT fromNative:retVal];
}

+ (SIFT*)create:(int)nfeatures {
    cv::Ptr<cv::SIFT> retVal = cv::SIFT::create(nfeatures);
    return [SIFT fromNative:retVal];
}

+ (SIFT*)create {
    cv::Ptr<cv::SIFT> retVal = cv::SIFT::create();
    return [SIFT fromNative:retVal];
}


//
// static Ptr_SIFT cv::SIFT::create(int nfeatures, int nOctaveLayers, double contrastThreshold, double edgeThreshold, double sigma, int descriptorType, bool enable_precise_upscale = false)
//
+ (SIFT*)create:(int)nfeatures nOctaveLayers:(int)nOctaveLayers contrastThreshold:(double)contrastThreshold edgeThreshold:(double)edgeThreshold sigma:(double)sigma descriptorType:(int)descriptorType enable_precise_upscale:(BOOL)enable_precise_upscale {
    cv::Ptr<cv::SIFT> retVal = cv::SIFT::create(nfeatures, nOctaveLayers, contrastThreshold, edgeThreshold, sigma, descriptorType, (bool)enable_precise_upscale);
    return [SIFT fromNative:retVal];
}

+ (SIFT*)create:(int)nfeatures nOctaveLayers:(int)nOctaveLayers contrastThreshold:(double)contrastThreshold edgeThreshold:(double)edgeThreshold sigma:(double)sigma descriptorType:(int)descriptorType {
    cv::Ptr<cv::SIFT> retVal = cv::SIFT::create(nfeatures, nOctaveLayers, contrastThreshold, edgeThreshold, sigma, descriptorType);
    return [SIFT fromNative:retVal];
}


//
//  String cv::SIFT::getDefaultName()
//
- (NSString*)getDefaultName {
    cv::String retVal = self.nativePtrSIFT->getDefaultName();
    return [NSString stringWithUTF8String:retVal.c_str()];
}


//
//  void cv::SIFT::setNFeatures(int maxFeatures)
//
- (void)setNFeatures:(int)maxFeatures {
    self.nativePtrSIFT->setNFeatures(maxFeatures);
}


//
//  int cv::SIFT::getNFeatures()
//
- (int)getNFeatures {
    int retVal = self.nativePtrSIFT->getNFeatures();
    return retVal;
}


//
//  void cv::SIFT::setNOctaveLayers(int nOctaveLayers)
//
- (void)setNOctaveLayers:(int)nOctaveLayers {
    self.nativePtrSIFT->setNOctaveLayers(nOctaveLayers);
}


//
//  int cv::SIFT::getNOctaveLayers()
//
- (int)getNOctaveLayers {
    int retVal = self.nativePtrSIFT->getNOctaveLayers();
    return retVal;
}


//
//  void cv::SIFT::setContrastThreshold(double contrastThreshold)
//
- (void)setContrastThreshold:(double)contrastThreshold {
    self.nativePtrSIFT->setContrastThreshold(contrastThreshold);
}


//
//  double cv::SIFT::getContrastThreshold()
//
- (double)getContrastThreshold {
    double retVal = self.nativePtrSIFT->getContrastThreshold();
    return retVal;
}


//
//  void cv::SIFT::setEdgeThreshold(double edgeThreshold)
//
- (void)setEdgeThreshold:(double)edgeThreshold {
    self.nativePtrSIFT->setEdgeThreshold(edgeThreshold);
}


//
//  double cv::SIFT::getEdgeThreshold()
//
- (double)getEdgeThreshold {
    double retVal = self.nativePtrSIFT->getEdgeThreshold();
    return retVal;
}


//
//  void cv::SIFT::setSigma(double sigma)
//
- (void)setSigma:(double)sigma {
    self.nativePtrSIFT->setSigma(sigma);
}


//
//  double cv::SIFT::getSigma()
//
- (double)getSigma {
    double retVal = self.nativePtrSIFT->getSigma();
    return retVal;
}



@end



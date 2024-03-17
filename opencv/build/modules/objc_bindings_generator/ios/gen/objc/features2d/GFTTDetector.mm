//
// This file is auto-generated. Please don't modify it!
//

#import "GFTTDetector.h"
#import "CVObjcUtil.h"



@implementation GFTTDetector


- (instancetype)initWithNativePtr:(cv::Ptr<cv::GFTTDetector>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrGFTTDetector = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::GFTTDetector>)nativePtr {
    return [[GFTTDetector alloc] initWithNativePtr:nativePtr];
}



//
// static Ptr_GFTTDetector cv::GFTTDetector::create(int maxCorners = 1000, double qualityLevel = 0.01, double minDistance = 1, int blockSize = 3, bool useHarrisDetector = false, double k = 0.04)
//
+ (GFTTDetector*)create:(int)maxCorners qualityLevel:(double)qualityLevel minDistance:(double)minDistance blockSize:(int)blockSize useHarrisDetector:(BOOL)useHarrisDetector k:(double)k {
    cv::Ptr<cv::GFTTDetector> retVal = cv::GFTTDetector::create(maxCorners, qualityLevel, minDistance, blockSize, (bool)useHarrisDetector, k);
    return [GFTTDetector fromNative:retVal];
}

+ (GFTTDetector*)create:(int)maxCorners qualityLevel:(double)qualityLevel minDistance:(double)minDistance blockSize:(int)blockSize useHarrisDetector:(BOOL)useHarrisDetector {
    cv::Ptr<cv::GFTTDetector> retVal = cv::GFTTDetector::create(maxCorners, qualityLevel, minDistance, blockSize, (bool)useHarrisDetector);
    return [GFTTDetector fromNative:retVal];
}

+ (GFTTDetector*)create:(int)maxCorners qualityLevel:(double)qualityLevel minDistance:(double)minDistance blockSize:(int)blockSize {
    cv::Ptr<cv::GFTTDetector> retVal = cv::GFTTDetector::create(maxCorners, qualityLevel, minDistance, blockSize);
    return [GFTTDetector fromNative:retVal];
}

+ (GFTTDetector*)create:(int)maxCorners qualityLevel:(double)qualityLevel minDistance:(double)minDistance {
    cv::Ptr<cv::GFTTDetector> retVal = cv::GFTTDetector::create(maxCorners, qualityLevel, minDistance);
    return [GFTTDetector fromNative:retVal];
}

+ (GFTTDetector*)create:(int)maxCorners qualityLevel:(double)qualityLevel {
    cv::Ptr<cv::GFTTDetector> retVal = cv::GFTTDetector::create(maxCorners, qualityLevel);
    return [GFTTDetector fromNative:retVal];
}

+ (GFTTDetector*)create:(int)maxCorners {
    cv::Ptr<cv::GFTTDetector> retVal = cv::GFTTDetector::create(maxCorners);
    return [GFTTDetector fromNative:retVal];
}

+ (GFTTDetector*)create {
    cv::Ptr<cv::GFTTDetector> retVal = cv::GFTTDetector::create();
    return [GFTTDetector fromNative:retVal];
}


//
// static Ptr_GFTTDetector cv::GFTTDetector::create(int maxCorners, double qualityLevel, double minDistance, int blockSize, int gradiantSize, bool useHarrisDetector = false, double k = 0.04)
//
+ (GFTTDetector*)create:(int)maxCorners qualityLevel:(double)qualityLevel minDistance:(double)minDistance blockSize:(int)blockSize gradiantSize:(int)gradiantSize useHarrisDetector:(BOOL)useHarrisDetector k:(double)k {
    cv::Ptr<cv::GFTTDetector> retVal = cv::GFTTDetector::create(maxCorners, qualityLevel, minDistance, blockSize, gradiantSize, (bool)useHarrisDetector, k);
    return [GFTTDetector fromNative:retVal];
}

+ (GFTTDetector*)create:(int)maxCorners qualityLevel:(double)qualityLevel minDistance:(double)minDistance blockSize:(int)blockSize gradiantSize:(int)gradiantSize useHarrisDetector:(BOOL)useHarrisDetector {
    cv::Ptr<cv::GFTTDetector> retVal = cv::GFTTDetector::create(maxCorners, qualityLevel, minDistance, blockSize, gradiantSize, (bool)useHarrisDetector);
    return [GFTTDetector fromNative:retVal];
}

+ (GFTTDetector*)create:(int)maxCorners qualityLevel:(double)qualityLevel minDistance:(double)minDistance blockSize:(int)blockSize gradiantSize:(int)gradiantSize {
    cv::Ptr<cv::GFTTDetector> retVal = cv::GFTTDetector::create(maxCorners, qualityLevel, minDistance, blockSize, gradiantSize);
    return [GFTTDetector fromNative:retVal];
}


//
//  void cv::GFTTDetector::setMaxFeatures(int maxFeatures)
//
- (void)setMaxFeatures:(int)maxFeatures {
    self.nativePtrGFTTDetector->setMaxFeatures(maxFeatures);
}


//
//  int cv::GFTTDetector::getMaxFeatures()
//
- (int)getMaxFeatures {
    int retVal = self.nativePtrGFTTDetector->getMaxFeatures();
    return retVal;
}


//
//  void cv::GFTTDetector::setQualityLevel(double qlevel)
//
- (void)setQualityLevel:(double)qlevel {
    self.nativePtrGFTTDetector->setQualityLevel(qlevel);
}


//
//  double cv::GFTTDetector::getQualityLevel()
//
- (double)getQualityLevel {
    double retVal = self.nativePtrGFTTDetector->getQualityLevel();
    return retVal;
}


//
//  void cv::GFTTDetector::setMinDistance(double minDistance)
//
- (void)setMinDistance:(double)minDistance {
    self.nativePtrGFTTDetector->setMinDistance(minDistance);
}


//
//  double cv::GFTTDetector::getMinDistance()
//
- (double)getMinDistance {
    double retVal = self.nativePtrGFTTDetector->getMinDistance();
    return retVal;
}


//
//  void cv::GFTTDetector::setBlockSize(int blockSize)
//
- (void)setBlockSize:(int)blockSize {
    self.nativePtrGFTTDetector->setBlockSize(blockSize);
}


//
//  int cv::GFTTDetector::getBlockSize()
//
- (int)getBlockSize {
    int retVal = self.nativePtrGFTTDetector->getBlockSize();
    return retVal;
}


//
//  void cv::GFTTDetector::setGradientSize(int gradientSize_)
//
- (void)setGradientSize:(int)gradientSize_ {
    self.nativePtrGFTTDetector->setGradientSize(gradientSize_);
}


//
//  int cv::GFTTDetector::getGradientSize()
//
- (int)getGradientSize {
    int retVal = self.nativePtrGFTTDetector->getGradientSize();
    return retVal;
}


//
//  void cv::GFTTDetector::setHarrisDetector(bool val)
//
- (void)setHarrisDetector:(BOOL)val {
    self.nativePtrGFTTDetector->setHarrisDetector((bool)val);
}


//
//  bool cv::GFTTDetector::getHarrisDetector()
//
- (BOOL)getHarrisDetector {
    bool retVal = self.nativePtrGFTTDetector->getHarrisDetector();
    return retVal;
}


//
//  void cv::GFTTDetector::setK(double k)
//
- (void)setK:(double)k {
    self.nativePtrGFTTDetector->setK(k);
}


//
//  double cv::GFTTDetector::getK()
//
- (double)getK {
    double retVal = self.nativePtrGFTTDetector->getK();
    return retVal;
}


//
//  String cv::GFTTDetector::getDefaultName()
//
- (NSString*)getDefaultName {
    cv::String retVal = self.nativePtrGFTTDetector->getDefaultName();
    return [NSString stringWithUTF8String:retVal.c_str()];
}



@end



//
// This file is auto-generated. Please don't modify it!
//

#import "ORB.h"
#import "CVObjcUtil.h"



@implementation ORB


- (instancetype)initWithNativePtr:(cv::Ptr<cv::ORB>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrORB = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::ORB>)nativePtr {
    return [[ORB alloc] initWithNativePtr:nativePtr];
}



//
// static Ptr_ORB cv::ORB::create(int nfeatures = 500, float scaleFactor = 1.2f, int nlevels = 8, int edgeThreshold = 31, int firstLevel = 0, int WTA_K = 2, ORB_ScoreType scoreType = ORB::HARRIS_SCORE, int patchSize = 31, int fastThreshold = 20)
//
+ (ORB*)create:(int)nfeatures scaleFactor:(float)scaleFactor nlevels:(int)nlevels edgeThreshold:(int)edgeThreshold firstLevel:(int)firstLevel WTA_K:(int)WTA_K scoreType:(ScoreType)scoreType patchSize:(int)patchSize fastThreshold:(int)fastThreshold {
    cv::Ptr<cv::ORB> retVal = cv::ORB::create(nfeatures, scaleFactor, nlevels, edgeThreshold, firstLevel, WTA_K, (cv::ORB::ScoreType)scoreType, patchSize, fastThreshold);
    return [ORB fromNative:retVal];
}

+ (ORB*)create:(int)nfeatures scaleFactor:(float)scaleFactor nlevels:(int)nlevels edgeThreshold:(int)edgeThreshold firstLevel:(int)firstLevel WTA_K:(int)WTA_K scoreType:(ScoreType)scoreType patchSize:(int)patchSize {
    cv::Ptr<cv::ORB> retVal = cv::ORB::create(nfeatures, scaleFactor, nlevels, edgeThreshold, firstLevel, WTA_K, (cv::ORB::ScoreType)scoreType, patchSize);
    return [ORB fromNative:retVal];
}

+ (ORB*)create:(int)nfeatures scaleFactor:(float)scaleFactor nlevels:(int)nlevels edgeThreshold:(int)edgeThreshold firstLevel:(int)firstLevel WTA_K:(int)WTA_K scoreType:(ScoreType)scoreType {
    cv::Ptr<cv::ORB> retVal = cv::ORB::create(nfeatures, scaleFactor, nlevels, edgeThreshold, firstLevel, WTA_K, (cv::ORB::ScoreType)scoreType);
    return [ORB fromNative:retVal];
}

+ (ORB*)create:(int)nfeatures scaleFactor:(float)scaleFactor nlevels:(int)nlevels edgeThreshold:(int)edgeThreshold firstLevel:(int)firstLevel WTA_K:(int)WTA_K {
    cv::Ptr<cv::ORB> retVal = cv::ORB::create(nfeatures, scaleFactor, nlevels, edgeThreshold, firstLevel, WTA_K);
    return [ORB fromNative:retVal];
}

+ (ORB*)create:(int)nfeatures scaleFactor:(float)scaleFactor nlevels:(int)nlevels edgeThreshold:(int)edgeThreshold firstLevel:(int)firstLevel {
    cv::Ptr<cv::ORB> retVal = cv::ORB::create(nfeatures, scaleFactor, nlevels, edgeThreshold, firstLevel);
    return [ORB fromNative:retVal];
}

+ (ORB*)create:(int)nfeatures scaleFactor:(float)scaleFactor nlevels:(int)nlevels edgeThreshold:(int)edgeThreshold {
    cv::Ptr<cv::ORB> retVal = cv::ORB::create(nfeatures, scaleFactor, nlevels, edgeThreshold);
    return [ORB fromNative:retVal];
}

+ (ORB*)create:(int)nfeatures scaleFactor:(float)scaleFactor nlevels:(int)nlevels {
    cv::Ptr<cv::ORB> retVal = cv::ORB::create(nfeatures, scaleFactor, nlevels);
    return [ORB fromNative:retVal];
}

+ (ORB*)create:(int)nfeatures scaleFactor:(float)scaleFactor {
    cv::Ptr<cv::ORB> retVal = cv::ORB::create(nfeatures, scaleFactor);
    return [ORB fromNative:retVal];
}

+ (ORB*)create:(int)nfeatures {
    cv::Ptr<cv::ORB> retVal = cv::ORB::create(nfeatures);
    return [ORB fromNative:retVal];
}

+ (ORB*)create {
    cv::Ptr<cv::ORB> retVal = cv::ORB::create();
    return [ORB fromNative:retVal];
}


//
//  void cv::ORB::setMaxFeatures(int maxFeatures)
//
- (void)setMaxFeatures:(int)maxFeatures {
    self.nativePtrORB->setMaxFeatures(maxFeatures);
}


//
//  int cv::ORB::getMaxFeatures()
//
- (int)getMaxFeatures {
    int retVal = self.nativePtrORB->getMaxFeatures();
    return retVal;
}


//
//  void cv::ORB::setScaleFactor(double scaleFactor)
//
- (void)setScaleFactor:(double)scaleFactor {
    self.nativePtrORB->setScaleFactor(scaleFactor);
}


//
//  double cv::ORB::getScaleFactor()
//
- (double)getScaleFactor {
    double retVal = self.nativePtrORB->getScaleFactor();
    return retVal;
}


//
//  void cv::ORB::setNLevels(int nlevels)
//
- (void)setNLevels:(int)nlevels {
    self.nativePtrORB->setNLevels(nlevels);
}


//
//  int cv::ORB::getNLevels()
//
- (int)getNLevels {
    int retVal = self.nativePtrORB->getNLevels();
    return retVal;
}


//
//  void cv::ORB::setEdgeThreshold(int edgeThreshold)
//
- (void)setEdgeThreshold:(int)edgeThreshold {
    self.nativePtrORB->setEdgeThreshold(edgeThreshold);
}


//
//  int cv::ORB::getEdgeThreshold()
//
- (int)getEdgeThreshold {
    int retVal = self.nativePtrORB->getEdgeThreshold();
    return retVal;
}


//
//  void cv::ORB::setFirstLevel(int firstLevel)
//
- (void)setFirstLevel:(int)firstLevel {
    self.nativePtrORB->setFirstLevel(firstLevel);
}


//
//  int cv::ORB::getFirstLevel()
//
- (int)getFirstLevel {
    int retVal = self.nativePtrORB->getFirstLevel();
    return retVal;
}


//
//  void cv::ORB::setWTA_K(int wta_k)
//
- (void)setWTA_K:(int)wta_k {
    self.nativePtrORB->setWTA_K(wta_k);
}


//
//  int cv::ORB::getWTA_K()
//
- (int)getWTA_K {
    int retVal = self.nativePtrORB->getWTA_K();
    return retVal;
}


//
//  void cv::ORB::setScoreType(ORB_ScoreType scoreType)
//
- (void)setScoreType:(ScoreType)scoreType {
    self.nativePtrORB->setScoreType((cv::ORB::ScoreType)scoreType);
}


//
//  ORB_ScoreType cv::ORB::getScoreType()
//
- (ScoreType)getScoreType {
    cv::ORB::ScoreType retVal = self.nativePtrORB->getScoreType();
    return (ScoreType)retVal;
}


//
//  void cv::ORB::setPatchSize(int patchSize)
//
- (void)setPatchSize:(int)patchSize {
    self.nativePtrORB->setPatchSize(patchSize);
}


//
//  int cv::ORB::getPatchSize()
//
- (int)getPatchSize {
    int retVal = self.nativePtrORB->getPatchSize();
    return retVal;
}


//
//  void cv::ORB::setFastThreshold(int fastThreshold)
//
- (void)setFastThreshold:(int)fastThreshold {
    self.nativePtrORB->setFastThreshold(fastThreshold);
}


//
//  int cv::ORB::getFastThreshold()
//
- (int)getFastThreshold {
    int retVal = self.nativePtrORB->getFastThreshold();
    return retVal;
}


//
//  String cv::ORB::getDefaultName()
//
- (NSString*)getDefaultName {
    cv::String retVal = self.nativePtrORB->getDefaultName();
    return [NSString stringWithUTF8String:retVal.c_str()];
}



@end



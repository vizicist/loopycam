//
// This file is auto-generated. Please don't modify it!
//

#import "KAZE.h"
#import "CVObjcUtil.h"



@implementation KAZE


- (instancetype)initWithNativePtr:(cv::Ptr<cv::KAZE>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrKAZE = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::KAZE>)nativePtr {
    return [[KAZE alloc] initWithNativePtr:nativePtr];
}



//
// static Ptr_KAZE cv::KAZE::create(bool extended = false, bool upright = false, float threshold = 0.001f, int nOctaves = 4, int nOctaveLayers = 4, KAZE_DiffusivityType diffusivity = KAZE::DIFF_PM_G2)
//
+ (KAZE*)create:(BOOL)extended upright:(BOOL)upright threshold:(float)threshold nOctaves:(int)nOctaves nOctaveLayers:(int)nOctaveLayers diffusivity:(DiffusivityType)diffusivity {
    cv::Ptr<cv::KAZE> retVal = cv::KAZE::create((bool)extended, (bool)upright, threshold, nOctaves, nOctaveLayers, (cv::KAZE::DiffusivityType)diffusivity);
    return [KAZE fromNative:retVal];
}

+ (KAZE*)create:(BOOL)extended upright:(BOOL)upright threshold:(float)threshold nOctaves:(int)nOctaves nOctaveLayers:(int)nOctaveLayers {
    cv::Ptr<cv::KAZE> retVal = cv::KAZE::create((bool)extended, (bool)upright, threshold, nOctaves, nOctaveLayers);
    return [KAZE fromNative:retVal];
}

+ (KAZE*)create:(BOOL)extended upright:(BOOL)upright threshold:(float)threshold nOctaves:(int)nOctaves {
    cv::Ptr<cv::KAZE> retVal = cv::KAZE::create((bool)extended, (bool)upright, threshold, nOctaves);
    return [KAZE fromNative:retVal];
}

+ (KAZE*)create:(BOOL)extended upright:(BOOL)upright threshold:(float)threshold {
    cv::Ptr<cv::KAZE> retVal = cv::KAZE::create((bool)extended, (bool)upright, threshold);
    return [KAZE fromNative:retVal];
}

+ (KAZE*)create:(BOOL)extended upright:(BOOL)upright {
    cv::Ptr<cv::KAZE> retVal = cv::KAZE::create((bool)extended, (bool)upright);
    return [KAZE fromNative:retVal];
}

+ (KAZE*)create:(BOOL)extended {
    cv::Ptr<cv::KAZE> retVal = cv::KAZE::create((bool)extended);
    return [KAZE fromNative:retVal];
}

+ (KAZE*)create {
    cv::Ptr<cv::KAZE> retVal = cv::KAZE::create();
    return [KAZE fromNative:retVal];
}


//
//  void cv::KAZE::setExtended(bool extended)
//
- (void)setExtended:(BOOL)extended {
    self.nativePtrKAZE->setExtended((bool)extended);
}


//
//  bool cv::KAZE::getExtended()
//
- (BOOL)getExtended {
    bool retVal = self.nativePtrKAZE->getExtended();
    return retVal;
}


//
//  void cv::KAZE::setUpright(bool upright)
//
- (void)setUpright:(BOOL)upright {
    self.nativePtrKAZE->setUpright((bool)upright);
}


//
//  bool cv::KAZE::getUpright()
//
- (BOOL)getUpright {
    bool retVal = self.nativePtrKAZE->getUpright();
    return retVal;
}


//
//  void cv::KAZE::setThreshold(double threshold)
//
- (void)setThreshold:(double)threshold {
    self.nativePtrKAZE->setThreshold(threshold);
}


//
//  double cv::KAZE::getThreshold()
//
- (double)getThreshold {
    double retVal = self.nativePtrKAZE->getThreshold();
    return retVal;
}


//
//  void cv::KAZE::setNOctaves(int octaves)
//
- (void)setNOctaves:(int)octaves {
    self.nativePtrKAZE->setNOctaves(octaves);
}


//
//  int cv::KAZE::getNOctaves()
//
- (int)getNOctaves {
    int retVal = self.nativePtrKAZE->getNOctaves();
    return retVal;
}


//
//  void cv::KAZE::setNOctaveLayers(int octaveLayers)
//
- (void)setNOctaveLayers:(int)octaveLayers {
    self.nativePtrKAZE->setNOctaveLayers(octaveLayers);
}


//
//  int cv::KAZE::getNOctaveLayers()
//
- (int)getNOctaveLayers {
    int retVal = self.nativePtrKAZE->getNOctaveLayers();
    return retVal;
}


//
//  void cv::KAZE::setDiffusivity(KAZE_DiffusivityType diff)
//
- (void)setDiffusivity:(DiffusivityType)diff {
    self.nativePtrKAZE->setDiffusivity((cv::KAZE::DiffusivityType)diff);
}


//
//  KAZE_DiffusivityType cv::KAZE::getDiffusivity()
//
- (DiffusivityType)getDiffusivity {
    cv::KAZE::DiffusivityType retVal = self.nativePtrKAZE->getDiffusivity();
    return (DiffusivityType)retVal;
}


//
//  String cv::KAZE::getDefaultName()
//
- (NSString*)getDefaultName {
    cv::String retVal = self.nativePtrKAZE->getDefaultName();
    return [NSString stringWithUTF8String:retVal.c_str()];
}



@end



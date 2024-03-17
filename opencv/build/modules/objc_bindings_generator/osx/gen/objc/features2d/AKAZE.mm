//
// This file is auto-generated. Please don't modify it!
//

#import "AKAZE.h"
#import "CVObjcUtil.h"

#import "KAZE.h"

@implementation AKAZE


- (instancetype)initWithNativePtr:(cv::Ptr<cv::AKAZE>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrAKAZE = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::AKAZE>)nativePtr {
    return [[AKAZE alloc] initWithNativePtr:nativePtr];
}



//
// static Ptr_AKAZE cv::AKAZE::create(AKAZE_DescriptorType descriptor_type = AKAZE::DESCRIPTOR_MLDB, int descriptor_size = 0, int descriptor_channels = 3, float threshold = 0.001f, int nOctaves = 4, int nOctaveLayers = 4, KAZE_DiffusivityType diffusivity = KAZE::DIFF_PM_G2, int max_points = -1)
//
+ (AKAZE*)create:(DescriptorType)descriptor_type descriptor_size:(int)descriptor_size descriptor_channels:(int)descriptor_channels threshold:(float)threshold nOctaves:(int)nOctaves nOctaveLayers:(int)nOctaveLayers diffusivity:(DiffusivityType)diffusivity max_points:(int)max_points {
    cv::Ptr<cv::AKAZE> retVal = cv::AKAZE::create((cv::AKAZE::DescriptorType)descriptor_type, descriptor_size, descriptor_channels, threshold, nOctaves, nOctaveLayers, (cv::KAZE::DiffusivityType)diffusivity, max_points);
    return [AKAZE fromNative:retVal];
}

+ (AKAZE*)create:(DescriptorType)descriptor_type descriptor_size:(int)descriptor_size descriptor_channels:(int)descriptor_channels threshold:(float)threshold nOctaves:(int)nOctaves nOctaveLayers:(int)nOctaveLayers diffusivity:(DiffusivityType)diffusivity {
    cv::Ptr<cv::AKAZE> retVal = cv::AKAZE::create((cv::AKAZE::DescriptorType)descriptor_type, descriptor_size, descriptor_channels, threshold, nOctaves, nOctaveLayers, (cv::KAZE::DiffusivityType)diffusivity);
    return [AKAZE fromNative:retVal];
}

+ (AKAZE*)create:(DescriptorType)descriptor_type descriptor_size:(int)descriptor_size descriptor_channels:(int)descriptor_channels threshold:(float)threshold nOctaves:(int)nOctaves nOctaveLayers:(int)nOctaveLayers {
    cv::Ptr<cv::AKAZE> retVal = cv::AKAZE::create((cv::AKAZE::DescriptorType)descriptor_type, descriptor_size, descriptor_channels, threshold, nOctaves, nOctaveLayers);
    return [AKAZE fromNative:retVal];
}

+ (AKAZE*)create:(DescriptorType)descriptor_type descriptor_size:(int)descriptor_size descriptor_channels:(int)descriptor_channels threshold:(float)threshold nOctaves:(int)nOctaves {
    cv::Ptr<cv::AKAZE> retVal = cv::AKAZE::create((cv::AKAZE::DescriptorType)descriptor_type, descriptor_size, descriptor_channels, threshold, nOctaves);
    return [AKAZE fromNative:retVal];
}

+ (AKAZE*)create:(DescriptorType)descriptor_type descriptor_size:(int)descriptor_size descriptor_channels:(int)descriptor_channels threshold:(float)threshold {
    cv::Ptr<cv::AKAZE> retVal = cv::AKAZE::create((cv::AKAZE::DescriptorType)descriptor_type, descriptor_size, descriptor_channels, threshold);
    return [AKAZE fromNative:retVal];
}

+ (AKAZE*)create:(DescriptorType)descriptor_type descriptor_size:(int)descriptor_size descriptor_channels:(int)descriptor_channels {
    cv::Ptr<cv::AKAZE> retVal = cv::AKAZE::create((cv::AKAZE::DescriptorType)descriptor_type, descriptor_size, descriptor_channels);
    return [AKAZE fromNative:retVal];
}

+ (AKAZE*)create:(DescriptorType)descriptor_type descriptor_size:(int)descriptor_size {
    cv::Ptr<cv::AKAZE> retVal = cv::AKAZE::create((cv::AKAZE::DescriptorType)descriptor_type, descriptor_size);
    return [AKAZE fromNative:retVal];
}

+ (AKAZE*)create:(DescriptorType)descriptor_type {
    cv::Ptr<cv::AKAZE> retVal = cv::AKAZE::create((cv::AKAZE::DescriptorType)descriptor_type);
    return [AKAZE fromNative:retVal];
}

+ (AKAZE*)create {
    cv::Ptr<cv::AKAZE> retVal = cv::AKAZE::create();
    return [AKAZE fromNative:retVal];
}


//
//  void cv::AKAZE::setDescriptorType(AKAZE_DescriptorType dtype)
//
- (void)setDescriptorType:(DescriptorType)dtype {
    self.nativePtrAKAZE->setDescriptorType((cv::AKAZE::DescriptorType)dtype);
}


//
//  AKAZE_DescriptorType cv::AKAZE::getDescriptorType()
//
- (DescriptorType)getDescriptorType {
    cv::AKAZE::DescriptorType retVal = self.nativePtrAKAZE->getDescriptorType();
    return (DescriptorType)retVal;
}


//
//  void cv::AKAZE::setDescriptorSize(int dsize)
//
- (void)setDescriptorSize:(int)dsize {
    self.nativePtrAKAZE->setDescriptorSize(dsize);
}


//
//  int cv::AKAZE::getDescriptorSize()
//
- (int)getDescriptorSize {
    int retVal = self.nativePtrAKAZE->getDescriptorSize();
    return retVal;
}


//
//  void cv::AKAZE::setDescriptorChannels(int dch)
//
- (void)setDescriptorChannels:(int)dch {
    self.nativePtrAKAZE->setDescriptorChannels(dch);
}


//
//  int cv::AKAZE::getDescriptorChannels()
//
- (int)getDescriptorChannels {
    int retVal = self.nativePtrAKAZE->getDescriptorChannels();
    return retVal;
}


//
//  void cv::AKAZE::setThreshold(double threshold)
//
- (void)setThreshold:(double)threshold {
    self.nativePtrAKAZE->setThreshold(threshold);
}


//
//  double cv::AKAZE::getThreshold()
//
- (double)getThreshold {
    double retVal = self.nativePtrAKAZE->getThreshold();
    return retVal;
}


//
//  void cv::AKAZE::setNOctaves(int octaves)
//
- (void)setNOctaves:(int)octaves {
    self.nativePtrAKAZE->setNOctaves(octaves);
}


//
//  int cv::AKAZE::getNOctaves()
//
- (int)getNOctaves {
    int retVal = self.nativePtrAKAZE->getNOctaves();
    return retVal;
}


//
//  void cv::AKAZE::setNOctaveLayers(int octaveLayers)
//
- (void)setNOctaveLayers:(int)octaveLayers {
    self.nativePtrAKAZE->setNOctaveLayers(octaveLayers);
}


//
//  int cv::AKAZE::getNOctaveLayers()
//
- (int)getNOctaveLayers {
    int retVal = self.nativePtrAKAZE->getNOctaveLayers();
    return retVal;
}


//
//  void cv::AKAZE::setDiffusivity(KAZE_DiffusivityType diff)
//
- (void)setDiffusivity:(DiffusivityType)diff {
    self.nativePtrAKAZE->setDiffusivity((cv::KAZE::DiffusivityType)diff);
}


//
//  KAZE_DiffusivityType cv::AKAZE::getDiffusivity()
//
- (DiffusivityType)getDiffusivity {
    cv::KAZE::DiffusivityType retVal = self.nativePtrAKAZE->getDiffusivity();
    return (DiffusivityType)retVal;
}


//
//  String cv::AKAZE::getDefaultName()
//
- (NSString*)getDefaultName {
    cv::String retVal = self.nativePtrAKAZE->getDefaultName();
    return [NSString stringWithUTF8String:retVal.c_str()];
}


//
//  void cv::AKAZE::setMaxPoints(int max_points)
//
- (void)setMaxPoints:(int)max_points {
    self.nativePtrAKAZE->setMaxPoints(max_points);
}


//
//  int cv::AKAZE::getMaxPoints()
//
- (int)getMaxPoints {
    int retVal = self.nativePtrAKAZE->getMaxPoints();
    return retVal;
}



@end



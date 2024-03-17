//
// This file is auto-generated. Please don't modify it!
//

#import "BRISK.h"
#import "CVObjcUtil.h"

#import "FloatVector.h"
#import "IntVector.h"

@implementation BRISK


- (instancetype)initWithNativePtr:(cv::Ptr<cv::BRISK>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrBRISK = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::BRISK>)nativePtr {
    return [[BRISK alloc] initWithNativePtr:nativePtr];
}



//
// static Ptr_BRISK cv::BRISK::create(int thresh = 30, int octaves = 3, float patternScale = 1.0f)
//
+ (BRISK*)create:(int)thresh octaves:(int)octaves patternScale:(float)patternScale {
    cv::Ptr<cv::BRISK> retVal = cv::BRISK::create(thresh, octaves, patternScale);
    return [BRISK fromNative:retVal];
}

+ (BRISK*)create:(int)thresh octaves:(int)octaves {
    cv::Ptr<cv::BRISK> retVal = cv::BRISK::create(thresh, octaves);
    return [BRISK fromNative:retVal];
}

+ (BRISK*)create:(int)thresh {
    cv::Ptr<cv::BRISK> retVal = cv::BRISK::create(thresh);
    return [BRISK fromNative:retVal];
}

+ (BRISK*)create {
    cv::Ptr<cv::BRISK> retVal = cv::BRISK::create();
    return [BRISK fromNative:retVal];
}


//
// static Ptr_BRISK cv::BRISK::create(vector_float radiusList, vector_int numberList, float dMax = 5.85f, float dMin = 8.2f, vector_int indexChange = std::vector<int>())
//
+ (BRISK*)create:(FloatVector*)radiusList numberList:(IntVector*)numberList dMax:(float)dMax dMin:(float)dMin indexChange:(IntVector*)indexChange {
    cv::Ptr<cv::BRISK> retVal = cv::BRISK::create(radiusList.nativeRef, numberList.nativeRef, dMax, dMin, indexChange.nativeRef);
    return [BRISK fromNative:retVal];
}

+ (BRISK*)create:(FloatVector*)radiusList numberList:(IntVector*)numberList dMax:(float)dMax dMin:(float)dMin {
    cv::Ptr<cv::BRISK> retVal = cv::BRISK::create(radiusList.nativeRef, numberList.nativeRef, dMax, dMin);
    return [BRISK fromNative:retVal];
}

+ (BRISK*)create:(FloatVector*)radiusList numberList:(IntVector*)numberList dMax:(float)dMax {
    cv::Ptr<cv::BRISK> retVal = cv::BRISK::create(radiusList.nativeRef, numberList.nativeRef, dMax);
    return [BRISK fromNative:retVal];
}

+ (BRISK*)create:(FloatVector*)radiusList numberList:(IntVector*)numberList {
    cv::Ptr<cv::BRISK> retVal = cv::BRISK::create(radiusList.nativeRef, numberList.nativeRef);
    return [BRISK fromNative:retVal];
}


//
// static Ptr_BRISK cv::BRISK::create(int thresh, int octaves, vector_float radiusList, vector_int numberList, float dMax = 5.85f, float dMin = 8.2f, vector_int indexChange = std::vector<int>())
//
+ (BRISK*)create:(int)thresh octaves:(int)octaves radiusList:(FloatVector*)radiusList numberList:(IntVector*)numberList dMax:(float)dMax dMin:(float)dMin indexChange:(IntVector*)indexChange {
    cv::Ptr<cv::BRISK> retVal = cv::BRISK::create(thresh, octaves, radiusList.nativeRef, numberList.nativeRef, dMax, dMin, indexChange.nativeRef);
    return [BRISK fromNative:retVal];
}

+ (BRISK*)create:(int)thresh octaves:(int)octaves radiusList:(FloatVector*)radiusList numberList:(IntVector*)numberList dMax:(float)dMax dMin:(float)dMin {
    cv::Ptr<cv::BRISK> retVal = cv::BRISK::create(thresh, octaves, radiusList.nativeRef, numberList.nativeRef, dMax, dMin);
    return [BRISK fromNative:retVal];
}

+ (BRISK*)create:(int)thresh octaves:(int)octaves radiusList:(FloatVector*)radiusList numberList:(IntVector*)numberList dMax:(float)dMax {
    cv::Ptr<cv::BRISK> retVal = cv::BRISK::create(thresh, octaves, radiusList.nativeRef, numberList.nativeRef, dMax);
    return [BRISK fromNative:retVal];
}

+ (BRISK*)create:(int)thresh octaves:(int)octaves radiusList:(FloatVector*)radiusList numberList:(IntVector*)numberList {
    cv::Ptr<cv::BRISK> retVal = cv::BRISK::create(thresh, octaves, radiusList.nativeRef, numberList.nativeRef);
    return [BRISK fromNative:retVal];
}


//
//  String cv::BRISK::getDefaultName()
//
- (NSString*)getDefaultName {
    cv::String retVal = self.nativePtrBRISK->getDefaultName();
    return [NSString stringWithUTF8String:retVal.c_str()];
}


//
//  void cv::BRISK::setThreshold(int threshold)
//
- (void)setThreshold:(int)threshold {
    self.nativePtrBRISK->setThreshold(threshold);
}


//
//  int cv::BRISK::getThreshold()
//
- (int)getThreshold {
    int retVal = self.nativePtrBRISK->getThreshold();
    return retVal;
}


//
//  void cv::BRISK::setOctaves(int octaves)
//
- (void)setOctaves:(int)octaves {
    self.nativePtrBRISK->setOctaves(octaves);
}


//
//  int cv::BRISK::getOctaves()
//
- (int)getOctaves {
    int retVal = self.nativePtrBRISK->getOctaves();
    return retVal;
}


//
//  void cv::BRISK::setPatternScale(float patternScale)
//
- (void)setPatternScale:(float)patternScale {
    self.nativePtrBRISK->setPatternScale(patternScale);
}


//
//  float cv::BRISK::getPatternScale()
//
- (float)getPatternScale {
    float retVal = self.nativePtrBRISK->getPatternScale();
    return retVal;
}



@end



//
// This file is auto-generated. Please don't modify it!
//

#import "TonemapReinhard.h"
#import "CVObjcUtil.h"



@implementation TonemapReinhard


- (instancetype)initWithNativePtr:(cv::Ptr<cv::TonemapReinhard>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrTonemapReinhard = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::TonemapReinhard>)nativePtr {
    return [[TonemapReinhard alloc] initWithNativePtr:nativePtr];
}



//
//  float cv::TonemapReinhard::getIntensity()
//
- (float)getIntensity {
    float retVal = self.nativePtrTonemapReinhard->getIntensity();
    return retVal;
}


//
//  void cv::TonemapReinhard::setIntensity(float intensity)
//
- (void)setIntensity:(float)intensity {
    self.nativePtrTonemapReinhard->setIntensity(intensity);
}


//
//  float cv::TonemapReinhard::getLightAdaptation()
//
- (float)getLightAdaptation {
    float retVal = self.nativePtrTonemapReinhard->getLightAdaptation();
    return retVal;
}


//
//  void cv::TonemapReinhard::setLightAdaptation(float light_adapt)
//
- (void)setLightAdaptation:(float)light_adapt {
    self.nativePtrTonemapReinhard->setLightAdaptation(light_adapt);
}


//
//  float cv::TonemapReinhard::getColorAdaptation()
//
- (float)getColorAdaptation {
    float retVal = self.nativePtrTonemapReinhard->getColorAdaptation();
    return retVal;
}


//
//  void cv::TonemapReinhard::setColorAdaptation(float color_adapt)
//
- (void)setColorAdaptation:(float)color_adapt {
    self.nativePtrTonemapReinhard->setColorAdaptation(color_adapt);
}



@end



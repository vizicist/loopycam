//
// This file is auto-generated. Please don't modify it!
//

#import "TonemapDrago.h"
#import "CVObjcUtil.h"



@implementation TonemapDrago


- (instancetype)initWithNativePtr:(cv::Ptr<cv::TonemapDrago>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrTonemapDrago = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::TonemapDrago>)nativePtr {
    return [[TonemapDrago alloc] initWithNativePtr:nativePtr];
}



//
//  float cv::TonemapDrago::getSaturation()
//
- (float)getSaturation {
    float retVal = self.nativePtrTonemapDrago->getSaturation();
    return retVal;
}


//
//  void cv::TonemapDrago::setSaturation(float saturation)
//
- (void)setSaturation:(float)saturation {
    self.nativePtrTonemapDrago->setSaturation(saturation);
}


//
//  float cv::TonemapDrago::getBias()
//
- (float)getBias {
    float retVal = self.nativePtrTonemapDrago->getBias();
    return retVal;
}


//
//  void cv::TonemapDrago::setBias(float bias)
//
- (void)setBias:(float)bias {
    self.nativePtrTonemapDrago->setBias(bias);
}



@end



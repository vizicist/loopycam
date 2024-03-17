//
// This file is auto-generated. Please don't modify it!
//

#import "AffineFeature.h"
#import "CVObjcUtil.h"

#import "Feature2D.h"
#import "FloatVector.h"

@implementation AffineFeature


- (instancetype)initWithNativePtr:(cv::Ptr<cv::AffineFeature>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrAffineFeature = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::AffineFeature>)nativePtr {
    return [[AffineFeature alloc] initWithNativePtr:nativePtr];
}



//
// static Ptr_AffineFeature cv::AffineFeature::create(Ptr_Feature2D backend, int maxTilt = 5, int minTilt = 0, float tiltStep = 1.4142135623730951f, float rotateStepBase = 72)
//
+ (AffineFeature*)create:(Feature2D*)backend maxTilt:(int)maxTilt minTilt:(int)minTilt tiltStep:(float)tiltStep rotateStepBase:(float)rotateStepBase {
    cv::Ptr<cv::AffineFeature> retVal = cv::AffineFeature::create(backend.nativePtrFeature2D, maxTilt, minTilt, tiltStep, rotateStepBase);
    return [AffineFeature fromNative:retVal];
}

+ (AffineFeature*)create:(Feature2D*)backend maxTilt:(int)maxTilt minTilt:(int)minTilt tiltStep:(float)tiltStep {
    cv::Ptr<cv::AffineFeature> retVal = cv::AffineFeature::create(backend.nativePtrFeature2D, maxTilt, minTilt, tiltStep);
    return [AffineFeature fromNative:retVal];
}

+ (AffineFeature*)create:(Feature2D*)backend maxTilt:(int)maxTilt minTilt:(int)minTilt {
    cv::Ptr<cv::AffineFeature> retVal = cv::AffineFeature::create(backend.nativePtrFeature2D, maxTilt, minTilt);
    return [AffineFeature fromNative:retVal];
}

+ (AffineFeature*)create:(Feature2D*)backend maxTilt:(int)maxTilt {
    cv::Ptr<cv::AffineFeature> retVal = cv::AffineFeature::create(backend.nativePtrFeature2D, maxTilt);
    return [AffineFeature fromNative:retVal];
}

+ (AffineFeature*)create:(Feature2D*)backend {
    cv::Ptr<cv::AffineFeature> retVal = cv::AffineFeature::create(backend.nativePtrFeature2D);
    return [AffineFeature fromNative:retVal];
}


//
//  void cv::AffineFeature::setViewParams(vector_float tilts, vector_float rolls)
//
- (void)setViewParams:(FloatVector*)tilts rolls:(FloatVector*)rolls {
    self.nativePtrAffineFeature->setViewParams(tilts.nativeRef, rolls.nativeRef);
}


//
//  void cv::AffineFeature::getViewParams(vector_float tilts, vector_float rolls)
//
- (void)getViewParams:(FloatVector*)tilts rolls:(FloatVector*)rolls {
    self.nativePtrAffineFeature->getViewParams(tilts.nativeRef, rolls.nativeRef);
}


//
//  String cv::AffineFeature::getDefaultName()
//
- (NSString*)getDefaultName {
    cv::String retVal = self.nativePtrAffineFeature->getDefaultName();
    return [NSString stringWithUTF8String:retVal.c_str()];
}



@end



//
// This file is auto-generated. Please don't modify it!
//

#import "CalibrateDebevec.h"
#import "CVObjcUtil.h"



@implementation CalibrateDebevec


- (instancetype)initWithNativePtr:(cv::Ptr<cv::CalibrateDebevec>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrCalibrateDebevec = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::CalibrateDebevec>)nativePtr {
    return [[CalibrateDebevec alloc] initWithNativePtr:nativePtr];
}



//
//  float cv::CalibrateDebevec::getLambda()
//
- (float)getLambda {
    float retVal = self.nativePtrCalibrateDebevec->getLambda();
    return retVal;
}


//
//  void cv::CalibrateDebevec::setLambda(float lambda)
//
- (void)setLambda:(float)lambda {
    self.nativePtrCalibrateDebevec->setLambda(lambda);
}


//
//  int cv::CalibrateDebevec::getSamples()
//
- (int)getSamples {
    int retVal = self.nativePtrCalibrateDebevec->getSamples();
    return retVal;
}


//
//  void cv::CalibrateDebevec::setSamples(int samples)
//
- (void)setSamples:(int)samples {
    self.nativePtrCalibrateDebevec->setSamples(samples);
}


//
//  bool cv::CalibrateDebevec::getRandom()
//
- (BOOL)getRandom {
    bool retVal = self.nativePtrCalibrateDebevec->getRandom();
    return retVal;
}


//
//  void cv::CalibrateDebevec::setRandom(bool random)
//
- (void)setRandom:(BOOL)random {
    self.nativePtrCalibrateDebevec->setRandom((bool)random);
}



@end



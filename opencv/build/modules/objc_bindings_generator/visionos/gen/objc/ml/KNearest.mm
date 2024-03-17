//
// This file is auto-generated. Please don't modify it!
//

#import "KNearest.h"
#import "CVObjcUtil.h"

#import "Mat.h"

@implementation KNearest


- (instancetype)initWithNativePtr:(cv::Ptr<cv::ml::KNearest>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrKNearest = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::ml::KNearest>)nativePtr {
    return [[KNearest alloc] initWithNativePtr:nativePtr];
}



//
//  int cv::ml::KNearest::getDefaultK()
//
- (int)getDefaultK {
    int retVal = self.nativePtrKNearest->getDefaultK();
    return retVal;
}


//
//  void cv::ml::KNearest::setDefaultK(int val)
//
- (void)setDefaultK:(int)val {
    self.nativePtrKNearest->setDefaultK(val);
}


//
//  bool cv::ml::KNearest::getIsClassifier()
//
- (BOOL)getIsClassifier {
    bool retVal = self.nativePtrKNearest->getIsClassifier();
    return retVal;
}


//
//  void cv::ml::KNearest::setIsClassifier(bool val)
//
- (void)setIsClassifier:(BOOL)val {
    self.nativePtrKNearest->setIsClassifier((bool)val);
}


//
//  int cv::ml::KNearest::getEmax()
//
- (int)getEmax {
    int retVal = self.nativePtrKNearest->getEmax();
    return retVal;
}


//
//  void cv::ml::KNearest::setEmax(int val)
//
- (void)setEmax:(int)val {
    self.nativePtrKNearest->setEmax(val);
}


//
//  int cv::ml::KNearest::getAlgorithmType()
//
- (int)getAlgorithmType {
    int retVal = self.nativePtrKNearest->getAlgorithmType();
    return retVal;
}


//
//  void cv::ml::KNearest::setAlgorithmType(int val)
//
- (void)setAlgorithmType:(int)val {
    self.nativePtrKNearest->setAlgorithmType(val);
}


//
//  float cv::ml::KNearest::findNearest(Mat samples, int k, Mat& results, Mat& neighborResponses = Mat(), Mat& dist = Mat())
//
- (float)findNearest:(Mat*)samples k:(int)k results:(Mat*)results neighborResponses:(Mat*)neighborResponses dist:(Mat*)dist {
    float retVal = self.nativePtrKNearest->findNearest(samples.nativeRef, k, results.nativeRef, neighborResponses.nativeRef, dist.nativeRef);
    return retVal;
}

- (float)findNearest:(Mat*)samples k:(int)k results:(Mat*)results neighborResponses:(Mat*)neighborResponses {
    float retVal = self.nativePtrKNearest->findNearest(samples.nativeRef, k, results.nativeRef, neighborResponses.nativeRef);
    return retVal;
}

- (float)findNearest:(Mat*)samples k:(int)k results:(Mat*)results {
    float retVal = self.nativePtrKNearest->findNearest(samples.nativeRef, k, results.nativeRef);
    return retVal;
}


//
// static Ptr_KNearest cv::ml::KNearest::create()
//
+ (KNearest*)create {
    cv::Ptr<cv::ml::KNearest> retVal = cv::ml::KNearest::create();
    return [KNearest fromNative:retVal];
}


//
// static Ptr_KNearest cv::ml::KNearest::load(String filepath)
//
+ (KNearest*)load:(NSString*)filepath {
    cv::Ptr<cv::ml::KNearest> retVal = cv::ml::KNearest::load(cv::String(filepath.UTF8String));
    return [KNearest fromNative:retVal];
}



@end



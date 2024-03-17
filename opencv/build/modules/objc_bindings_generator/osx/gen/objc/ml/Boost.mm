//
// This file is auto-generated. Please don't modify it!
//

#import "Boost.h"
#import "CVObjcUtil.h"



@implementation Boost


- (instancetype)initWithNativePtr:(cv::Ptr<cv::ml::Boost>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrBoost = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::ml::Boost>)nativePtr {
    return [[Boost alloc] initWithNativePtr:nativePtr];
}



//
//  int cv::ml::Boost::getBoostType()
//
- (int)getBoostType {
    int retVal = self.nativePtrBoost->getBoostType();
    return retVal;
}


//
//  void cv::ml::Boost::setBoostType(int val)
//
- (void)setBoostType:(int)val {
    self.nativePtrBoost->setBoostType(val);
}


//
//  int cv::ml::Boost::getWeakCount()
//
- (int)getWeakCount {
    int retVal = self.nativePtrBoost->getWeakCount();
    return retVal;
}


//
//  void cv::ml::Boost::setWeakCount(int val)
//
- (void)setWeakCount:(int)val {
    self.nativePtrBoost->setWeakCount(val);
}


//
//  double cv::ml::Boost::getWeightTrimRate()
//
- (double)getWeightTrimRate {
    double retVal = self.nativePtrBoost->getWeightTrimRate();
    return retVal;
}


//
//  void cv::ml::Boost::setWeightTrimRate(double val)
//
- (void)setWeightTrimRate:(double)val {
    self.nativePtrBoost->setWeightTrimRate(val);
}


//
// static Ptr_Boost cv::ml::Boost::create()
//
+ (Boost*)create {
    cv::Ptr<cv::ml::Boost> retVal = cv::ml::Boost::create();
    return [Boost fromNative:retVal];
}


//
// static Ptr_Boost cv::ml::Boost::load(String filepath, String nodeName = String())
//
+ (Boost*)load:(NSString*)filepath nodeName:(NSString*)nodeName {
    cv::Ptr<cv::ml::Boost> retVal = cv::ml::Boost::load(cv::String(filepath.UTF8String), cv::String(nodeName.UTF8String));
    return [Boost fromNative:retVal];
}

+ (Boost*)load:(NSString*)filepath {
    cv::Ptr<cv::ml::Boost> retVal = cv::ml::Boost::load(cv::String(filepath.UTF8String));
    return [Boost fromNative:retVal];
}



@end



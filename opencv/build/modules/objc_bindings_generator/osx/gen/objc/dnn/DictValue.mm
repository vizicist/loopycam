//
// This file is auto-generated. Please don't modify it!
//

#import "DictValue.h"
#import "CVObjcUtil.h"



@implementation DictValue


- (instancetype)initWithNativePtr:(cv::Ptr<cv::dnn::DictValue>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::dnn::DictValue>)nativePtr {
    return [[DictValue alloc] initWithNativePtr:nativePtr];
}



//
//   cv::dnn::DictValue::DictValue(int i)
//
- (instancetype)initWithI:(int)i {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::DictValue>(new cv::dnn::DictValue(i))];
}


//
//   cv::dnn::DictValue::DictValue(double p)
//
- (instancetype)initWithP:(double)p {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::DictValue>(new cv::dnn::DictValue(p))];
}


//
//   cv::dnn::DictValue::DictValue(String s)
//
- (instancetype)initWithS:(NSString*)s {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::DictValue>(new cv::dnn::DictValue(cv::String(s.UTF8String)))];
}


//
//  bool cv::dnn::DictValue::isInt()
//
- (BOOL)isInt {
    bool retVal = self.nativePtr->isInt();
    return retVal;
}


//
//  bool cv::dnn::DictValue::isString()
//
- (BOOL)isString {
    bool retVal = self.nativePtr->isString();
    return retVal;
}


//
//  bool cv::dnn::DictValue::isReal()
//
- (BOOL)isReal {
    bool retVal = self.nativePtr->isReal();
    return retVal;
}


//
//  int cv::dnn::DictValue::getIntValue(int idx = -1)
//
- (int)getIntValue:(int)idx {
    int retVal = self.nativePtr->getIntValue(idx);
    return retVal;
}

- (int)getIntValue {
    int retVal = self.nativePtr->getIntValue();
    return retVal;
}


//
//  double cv::dnn::DictValue::getRealValue(int idx = -1)
//
- (double)getRealValue:(int)idx {
    double retVal = self.nativePtr->getRealValue(idx);
    return retVal;
}

- (double)getRealValue {
    double retVal = self.nativePtr->getRealValue();
    return retVal;
}


//
//  String cv::dnn::DictValue::getStringValue(int idx = -1)
//
- (NSString*)getStringValue:(int)idx {
    cv::String retVal = self.nativePtr->getStringValue(idx);
    return [NSString stringWithUTF8String:retVal.c_str()];
}

- (NSString*)getStringValue {
    cv::String retVal = self.nativePtr->getStringValue();
    return [NSString stringWithUTF8String:retVal.c_str()];
}



@end



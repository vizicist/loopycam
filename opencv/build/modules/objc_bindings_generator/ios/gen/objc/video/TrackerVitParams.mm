//
// This file is auto-generated. Please don't modify it!
//

#import "TrackerVitParams.h"
#import "CVObjcUtil.h"

#import "Scalar.h"

@implementation TrackerVitParams


- (instancetype)initWithNativePtr:(cv::Ptr<cv::TrackerVit::Params>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::TrackerVit::Params>)nativePtr {
    return [[TrackerVitParams alloc] initWithNativePtr:nativePtr];
}



//
//   cv::TrackerVit::Params::Params()
//
- (instancetype)init {
    return [self initWithNativePtr:cv::Ptr<cv::TrackerVit::Params>(new cv::TrackerVit::Params())];
}

-(NSString*)net {
	return [NSString stringWithUTF8String:self.nativePtr->net.c_str()];
}

-(void)setNet:(NSString*)net {
	self.nativePtr->net = std::string(net.UTF8String);
}

-(int)backend {
	return self.nativePtr->backend;
}

-(void)setBackend:(int)backend {
	self.nativePtr->backend = backend;
}

-(int)target {
	return self.nativePtr->target;
}

-(void)setTarget:(int)target {
	self.nativePtr->target = target;
}

-(Scalar*)meanvalue {
	return [Scalar fromNative:self.nativePtr->meanvalue];
}

-(void)setMeanvalue:(Scalar*)meanvalue {
	self.nativePtr->meanvalue = meanvalue.nativeRef;
}

-(Scalar*)stdvalue {
	return [Scalar fromNative:self.nativePtr->stdvalue];
}

-(void)setStdvalue:(Scalar*)stdvalue {
	self.nativePtr->stdvalue = stdvalue.nativeRef;
}



@end



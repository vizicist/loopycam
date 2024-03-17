//
// This file is auto-generated. Please don't modify it!
//

#import "TrackerDaSiamRPNParams.h"
#import "CVObjcUtil.h"



@implementation TrackerDaSiamRPNParams


- (instancetype)initWithNativePtr:(cv::Ptr<cv::TrackerDaSiamRPN::Params>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::TrackerDaSiamRPN::Params>)nativePtr {
    return [[TrackerDaSiamRPNParams alloc] initWithNativePtr:nativePtr];
}



//
//   cv::TrackerDaSiamRPN::Params::Params()
//
- (instancetype)init {
    return [self initWithNativePtr:cv::Ptr<cv::TrackerDaSiamRPN::Params>(new cv::TrackerDaSiamRPN::Params())];
}

-(NSString*)model {
	return [NSString stringWithUTF8String:self.nativePtr->model.c_str()];
}

-(void)setModel:(NSString*)model {
	self.nativePtr->model = std::string(model.UTF8String);
}

-(NSString*)kernel_cls1 {
	return [NSString stringWithUTF8String:self.nativePtr->kernel_cls1.c_str()];
}

-(void)setKernel_cls1:(NSString*)kernel_cls1 {
	self.nativePtr->kernel_cls1 = std::string(kernel_cls1.UTF8String);
}

-(NSString*)kernel_r1 {
	return [NSString stringWithUTF8String:self.nativePtr->kernel_r1.c_str()];
}

-(void)setKernel_r1:(NSString*)kernel_r1 {
	self.nativePtr->kernel_r1 = std::string(kernel_r1.UTF8String);
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



@end



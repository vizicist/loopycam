//
// This file is auto-generated. Please don't modify it!
//

#import "TrackerNanoParams.h"
#import "CVObjcUtil.h"



@implementation TrackerNanoParams


- (instancetype)initWithNativePtr:(cv::Ptr<cv::TrackerNano::Params>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::TrackerNano::Params>)nativePtr {
    return [[TrackerNanoParams alloc] initWithNativePtr:nativePtr];
}



//
//   cv::TrackerNano::Params::Params()
//
- (instancetype)init {
    return [self initWithNativePtr:cv::Ptr<cv::TrackerNano::Params>(new cv::TrackerNano::Params())];
}

-(NSString*)backbone {
	return [NSString stringWithUTF8String:self.nativePtr->backbone.c_str()];
}

-(void)setBackbone:(NSString*)backbone {
	self.nativePtr->backbone = std::string(backbone.UTF8String);
}

-(NSString*)neckhead {
	return [NSString stringWithUTF8String:self.nativePtr->neckhead.c_str()];
}

-(void)setNeckhead:(NSString*)neckhead {
	self.nativePtr->neckhead = std::string(neckhead.UTF8String);
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



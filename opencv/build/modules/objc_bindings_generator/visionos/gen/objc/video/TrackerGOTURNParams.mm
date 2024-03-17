//
// This file is auto-generated. Please don't modify it!
//

#import "TrackerGOTURNParams.h"
#import "CVObjcUtil.h"



@implementation TrackerGOTURNParams


- (instancetype)initWithNativePtr:(cv::Ptr<cv::TrackerGOTURN::Params>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::TrackerGOTURN::Params>)nativePtr {
    return [[TrackerGOTURNParams alloc] initWithNativePtr:nativePtr];
}



//
//   cv::TrackerGOTURN::Params::Params()
//
- (instancetype)init {
    return [self initWithNativePtr:cv::Ptr<cv::TrackerGOTURN::Params>(new cv::TrackerGOTURN::Params())];
}

-(NSString*)modelTxt {
	return [NSString stringWithUTF8String:self.nativePtr->modelTxt.c_str()];
}

-(void)setModelTxt:(NSString*)modelTxt {
	self.nativePtr->modelTxt = std::string(modelTxt.UTF8String);
}

-(NSString*)modelBin {
	return [NSString stringWithUTF8String:self.nativePtr->modelBin.c_str()];
}

-(void)setModelBin:(NSString*)modelBin {
	self.nativePtr->modelBin = std::string(modelBin.UTF8String);
}



@end



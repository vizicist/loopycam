//
// This file is auto-generated. Please don't modify it!
//

#import "QRCodeEncoderParams.h"
#import "CVObjcUtil.h"

#import "QRCodeEncoder.h"
#import "QRCodeEncoder.h"

@implementation QRCodeEncoderParams


- (instancetype)initWithNativePtr:(cv::Ptr<cv::QRCodeEncoder::Params>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::QRCodeEncoder::Params>)nativePtr {
    return [[QRCodeEncoderParams alloc] initWithNativePtr:nativePtr];
}



//
//   cv::QRCodeEncoder::Params::Params()
//
- (instancetype)init {
    return [self initWithNativePtr:cv::Ptr<cv::QRCodeEncoder::Params>(new cv::QRCodeEncoder::Params())];
}

-(int)version {
	return self.nativePtr->version;
}

-(void)setVersion:(int)version {
	self.nativePtr->version = version;
}

-(CorrectionLevel)correction_level {
	return (CorrectionLevel)self.nativePtr->correction_level;
}

-(void)setCorrection_level:(CorrectionLevel)correction_level {
	self.nativePtr->correction_level = (cv::QRCodeEncoder::CorrectionLevel)correction_level;
}

-(EncodeMode)mode {
	return (EncodeMode)self.nativePtr->mode;
}

-(void)setMode:(EncodeMode)mode {
	self.nativePtr->mode = (cv::QRCodeEncoder::EncodeMode)mode;
}

-(int)structure_number {
	return self.nativePtr->structure_number;
}

-(void)setStructure_number:(int)structure_number {
	self.nativePtr->structure_number = structure_number;
}



@end



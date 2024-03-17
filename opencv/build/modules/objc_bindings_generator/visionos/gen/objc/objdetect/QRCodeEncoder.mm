//
// This file is auto-generated. Please don't modify it!
//

#import "QRCodeEncoder.h"
#import "CVObjcUtil.h"

#import "Mat.h"
#import "QRCodeEncoderParams.h"

@implementation QRCodeEncoder


- (instancetype)initWithNativePtr:(cv::Ptr<cv::QRCodeEncoder>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::QRCodeEncoder>)nativePtr {
    return [[QRCodeEncoder alloc] initWithNativePtr:nativePtr];
}



//
// static Ptr_QRCodeEncoder cv::QRCodeEncoder::create(QRCodeEncoder_Params parameters = QRCodeEncoder::Params())
//
+ (QRCodeEncoder*)create:(QRCodeEncoderParams*)parameters {
    cv::Ptr<cv::QRCodeEncoder> retVal = cv::QRCodeEncoder::create(*(parameters.nativePtr));
    return [QRCodeEncoder fromNative:retVal];
}

+ (QRCodeEncoder*)create {
    cv::Ptr<cv::QRCodeEncoder> retVal = cv::QRCodeEncoder::create();
    return [QRCodeEncoder fromNative:retVal];
}


//
//  void cv::QRCodeEncoder::encode(String encoded_info, Mat& qrcode)
//
- (void)encode:(NSString*)encoded_info qrcode:(Mat*)qrcode {
    self.nativePtr->encode(cv::String(encoded_info.UTF8String), qrcode.nativeRef);
}


//
//  void cv::QRCodeEncoder::encodeStructuredAppend(String encoded_info, vector_Mat& qrcodes)
//
- (void)encodeStructuredAppend:(NSString*)encoded_info qrcodes:(NSMutableArray<Mat*>*)qrcodes {
    OBJC2CV(cv::Mat, Mat, qrcodesVector, qrcodes);
    self.nativePtr->encodeStructuredAppend(cv::String(encoded_info.UTF8String), qrcodesVector);
    CV2OBJC(cv::Mat, Mat, qrcodesVector, qrcodes);
}



@end



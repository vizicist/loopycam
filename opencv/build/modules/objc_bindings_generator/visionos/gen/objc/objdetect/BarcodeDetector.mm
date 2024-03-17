//
// This file is auto-generated. Please don't modify it!
//

#import "BarcodeDetector.h"
#import "CVObjcUtil.h"

#import "Mat.h"

@implementation BarcodeDetector


- (instancetype)initWithNativePtr:(cv::Ptr<cv::barcode::BarcodeDetector>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrBarcodeDetector = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::barcode::BarcodeDetector>)nativePtr {
    return [[BarcodeDetector alloc] initWithNativePtr:nativePtr];
}



//
//   cv::barcode::BarcodeDetector::BarcodeDetector()
//
- (instancetype)init {
    return [self initWithNativePtr:cv::Ptr<cv::barcode::BarcodeDetector>(new cv::barcode::BarcodeDetector())];
}


//
//   cv::barcode::BarcodeDetector::BarcodeDetector(string prototxt_path, string model_path)
//
- (instancetype)initWithPrototxt_path:(NSString*)prototxt_path model_path:(NSString*)model_path {
    return [self initWithNativePtr:cv::Ptr<cv::barcode::BarcodeDetector>(new cv::barcode::BarcodeDetector(std::string(prototxt_path.UTF8String), std::string(model_path.UTF8String)))];
}


//
//  bool cv::barcode::BarcodeDetector::decodeWithType(Mat img, Mat points, vector_string& decoded_info, vector_string& decoded_type)
//
- (BOOL)decodeWithType:(Mat*)img points:(Mat*)points decoded_info:(NSMutableArray<NSString*>*)decoded_info decoded_type:(NSMutableArray<NSString*>*)decoded_type {
    #define CONV_decoded_info(e) std::string(e.UTF8String)
    OBJC2CV_CUSTOM(std::string, NSString, decoded_infoVector, decoded_info, CONV_decoded_info);
    #undef CONV_decoded_info
    #define CONV_decoded_type(e) std::string(e.UTF8String)
    OBJC2CV_CUSTOM(std::string, NSString, decoded_typeVector, decoded_type, CONV_decoded_type);
    #undef CONV_decoded_type
    bool retVal = self.nativePtrBarcodeDetector->decodeWithType(img.nativeRef, points.nativeRef, decoded_infoVector, decoded_typeVector);
    #define UNCONV_decoded_info(e) [NSString stringWithUTF8String:e.c_str()]
    CV2OBJC_CUSTOM(std::string, NSString, decoded_infoVector, decoded_info, UNCONV_decoded_info);
    #undef UNCONV_decoded_info
    #define UNCONV_decoded_type(e) [NSString stringWithUTF8String:e.c_str()]
    CV2OBJC_CUSTOM(std::string, NSString, decoded_typeVector, decoded_type, UNCONV_decoded_type);
    #undef UNCONV_decoded_type
    return retVal;
}


//
//  bool cv::barcode::BarcodeDetector::detectAndDecodeWithType(Mat img, vector_string& decoded_info, vector_string& decoded_type, Mat& points = Mat())
//
- (BOOL)detectAndDecodeWithType:(Mat*)img decoded_info:(NSMutableArray<NSString*>*)decoded_info decoded_type:(NSMutableArray<NSString*>*)decoded_type points:(Mat*)points {
    #define CONV_decoded_info(e) std::string(e.UTF8String)
    OBJC2CV_CUSTOM(std::string, NSString, decoded_infoVector, decoded_info, CONV_decoded_info);
    #undef CONV_decoded_info
    #define CONV_decoded_type(e) std::string(e.UTF8String)
    OBJC2CV_CUSTOM(std::string, NSString, decoded_typeVector, decoded_type, CONV_decoded_type);
    #undef CONV_decoded_type
    bool retVal = self.nativePtrBarcodeDetector->detectAndDecodeWithType(img.nativeRef, decoded_infoVector, decoded_typeVector, points.nativeRef);
    #define UNCONV_decoded_info(e) [NSString stringWithUTF8String:e.c_str()]
    CV2OBJC_CUSTOM(std::string, NSString, decoded_infoVector, decoded_info, UNCONV_decoded_info);
    #undef UNCONV_decoded_info
    #define UNCONV_decoded_type(e) [NSString stringWithUTF8String:e.c_str()]
    CV2OBJC_CUSTOM(std::string, NSString, decoded_typeVector, decoded_type, UNCONV_decoded_type);
    #undef UNCONV_decoded_type
    return retVal;
}

- (BOOL)detectAndDecodeWithType:(Mat*)img decoded_info:(NSMutableArray<NSString*>*)decoded_info decoded_type:(NSMutableArray<NSString*>*)decoded_type {
    #define CONV_decoded_info(e) std::string(e.UTF8String)
    OBJC2CV_CUSTOM(std::string, NSString, decoded_infoVector, decoded_info, CONV_decoded_info);
    #undef CONV_decoded_info
    #define CONV_decoded_type(e) std::string(e.UTF8String)
    OBJC2CV_CUSTOM(std::string, NSString, decoded_typeVector, decoded_type, CONV_decoded_type);
    #undef CONV_decoded_type
    bool retVal = self.nativePtrBarcodeDetector->detectAndDecodeWithType(img.nativeRef, decoded_infoVector, decoded_typeVector);
    #define UNCONV_decoded_info(e) [NSString stringWithUTF8String:e.c_str()]
    CV2OBJC_CUSTOM(std::string, NSString, decoded_infoVector, decoded_info, UNCONV_decoded_info);
    #undef UNCONV_decoded_info
    #define UNCONV_decoded_type(e) [NSString stringWithUTF8String:e.c_str()]
    CV2OBJC_CUSTOM(std::string, NSString, decoded_typeVector, decoded_type, UNCONV_decoded_type);
    #undef UNCONV_decoded_type
    return retVal;
}



@end



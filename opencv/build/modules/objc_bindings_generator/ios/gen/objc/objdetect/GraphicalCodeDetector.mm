//
// This file is auto-generated. Please don't modify it!
//

#import "GraphicalCodeDetector.h"
#import "CVObjcUtil.h"

#import "Mat.h"

@implementation GraphicalCodeDetector


- (instancetype)initWithNativePtr:(cv::Ptr<cv::GraphicalCodeDetector>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::GraphicalCodeDetector>)nativePtr {
    return [[GraphicalCodeDetector alloc] initWithNativePtr:nativePtr];
}



//
//  bool cv::GraphicalCodeDetector::detect(Mat img, Mat& points)
//
- (BOOL)detect:(Mat*)img points:(Mat*)points {
    bool retVal = self.nativePtr->detect(img.nativeRef, points.nativeRef);
    return retVal;
}


//
//  string cv::GraphicalCodeDetector::decode(Mat img, Mat points, Mat& straight_code = Mat())
//
- (NSString*)decode:(Mat*)img points:(Mat*)points straight_code:(Mat*)straight_code {
    std::string retVal = self.nativePtr->decode(img.nativeRef, points.nativeRef, straight_code.nativeRef);
    return [NSString stringWithUTF8String:retVal.c_str()];
}

- (NSString*)decode:(Mat*)img points:(Mat*)points {
    std::string retVal = self.nativePtr->decode(img.nativeRef, points.nativeRef);
    return [NSString stringWithUTF8String:retVal.c_str()];
}


//
//  string cv::GraphicalCodeDetector::detectAndDecode(Mat img, Mat& points = Mat(), Mat& straight_code = Mat())
//
- (NSString*)detectAndDecode:(Mat*)img points:(Mat*)points straight_code:(Mat*)straight_code {
    std::string retVal = self.nativePtr->detectAndDecode(img.nativeRef, points.nativeRef, straight_code.nativeRef);
    return [NSString stringWithUTF8String:retVal.c_str()];
}

- (NSString*)detectAndDecode:(Mat*)img points:(Mat*)points {
    std::string retVal = self.nativePtr->detectAndDecode(img.nativeRef, points.nativeRef);
    return [NSString stringWithUTF8String:retVal.c_str()];
}

- (NSString*)detectAndDecode:(Mat*)img {
    std::string retVal = self.nativePtr->detectAndDecode(img.nativeRef);
    return [NSString stringWithUTF8String:retVal.c_str()];
}


//
//  bool cv::GraphicalCodeDetector::detectMulti(Mat img, Mat& points)
//
- (BOOL)detectMulti:(Mat*)img points:(Mat*)points {
    bool retVal = self.nativePtr->detectMulti(img.nativeRef, points.nativeRef);
    return retVal;
}


//
//  bool cv::GraphicalCodeDetector::decodeMulti(Mat img, Mat points, vector_string& decoded_info, vector_Mat& straight_code = vector_Mat())
//
- (BOOL)decodeMulti:(Mat*)img points:(Mat*)points decoded_info:(NSMutableArray<NSString*>*)decoded_info straight_code:(NSMutableArray<Mat*>*)straight_code {
    #define CONV_decoded_info(e) std::string(e.UTF8String)
    OBJC2CV_CUSTOM(std::string, NSString, decoded_infoVector, decoded_info, CONV_decoded_info);
    #undef CONV_decoded_info
    OBJC2CV(cv::Mat, Mat, straight_codeVector, straight_code);
    bool retVal = self.nativePtr->decodeMulti(img.nativeRef, points.nativeRef, decoded_infoVector, straight_codeVector);
    #define UNCONV_decoded_info(e) [NSString stringWithUTF8String:e.c_str()]
    CV2OBJC_CUSTOM(std::string, NSString, decoded_infoVector, decoded_info, UNCONV_decoded_info);
    #undef UNCONV_decoded_info
    CV2OBJC(cv::Mat, Mat, straight_codeVector, straight_code);
    return retVal;
}

- (BOOL)decodeMulti:(Mat*)img points:(Mat*)points decoded_info:(NSMutableArray<NSString*>*)decoded_info {
    #define CONV_decoded_info(e) std::string(e.UTF8String)
    OBJC2CV_CUSTOM(std::string, NSString, decoded_infoVector, decoded_info, CONV_decoded_info);
    #undef CONV_decoded_info
    bool retVal = self.nativePtr->decodeMulti(img.nativeRef, points.nativeRef, decoded_infoVector);
    #define UNCONV_decoded_info(e) [NSString stringWithUTF8String:e.c_str()]
    CV2OBJC_CUSTOM(std::string, NSString, decoded_infoVector, decoded_info, UNCONV_decoded_info);
    #undef UNCONV_decoded_info
    return retVal;
}


//
//  bool cv::GraphicalCodeDetector::detectAndDecodeMulti(Mat img, vector_string& decoded_info, Mat& points = Mat(), vector_Mat& straight_code = vector_Mat())
//
- (BOOL)detectAndDecodeMulti:(Mat*)img decoded_info:(NSMutableArray<NSString*>*)decoded_info points:(Mat*)points straight_code:(NSMutableArray<Mat*>*)straight_code {
    #define CONV_decoded_info(e) std::string(e.UTF8String)
    OBJC2CV_CUSTOM(std::string, NSString, decoded_infoVector, decoded_info, CONV_decoded_info);
    #undef CONV_decoded_info
    OBJC2CV(cv::Mat, Mat, straight_codeVector, straight_code);
    bool retVal = self.nativePtr->detectAndDecodeMulti(img.nativeRef, decoded_infoVector, points.nativeRef, straight_codeVector);
    #define UNCONV_decoded_info(e) [NSString stringWithUTF8String:e.c_str()]
    CV2OBJC_CUSTOM(std::string, NSString, decoded_infoVector, decoded_info, UNCONV_decoded_info);
    #undef UNCONV_decoded_info
    CV2OBJC(cv::Mat, Mat, straight_codeVector, straight_code);
    return retVal;
}

- (BOOL)detectAndDecodeMulti:(Mat*)img decoded_info:(NSMutableArray<NSString*>*)decoded_info points:(Mat*)points {
    #define CONV_decoded_info(e) std::string(e.UTF8String)
    OBJC2CV_CUSTOM(std::string, NSString, decoded_infoVector, decoded_info, CONV_decoded_info);
    #undef CONV_decoded_info
    bool retVal = self.nativePtr->detectAndDecodeMulti(img.nativeRef, decoded_infoVector, points.nativeRef);
    #define UNCONV_decoded_info(e) [NSString stringWithUTF8String:e.c_str()]
    CV2OBJC_CUSTOM(std::string, NSString, decoded_infoVector, decoded_info, UNCONV_decoded_info);
    #undef UNCONV_decoded_info
    return retVal;
}

- (BOOL)detectAndDecodeMulti:(Mat*)img decoded_info:(NSMutableArray<NSString*>*)decoded_info {
    #define CONV_decoded_info(e) std::string(e.UTF8String)
    OBJC2CV_CUSTOM(std::string, NSString, decoded_infoVector, decoded_info, CONV_decoded_info);
    #undef CONV_decoded_info
    bool retVal = self.nativePtr->detectAndDecodeMulti(img.nativeRef, decoded_infoVector);
    #define UNCONV_decoded_info(e) [NSString stringWithUTF8String:e.c_str()]
    CV2OBJC_CUSTOM(std::string, NSString, decoded_infoVector, decoded_info, UNCONV_decoded_info);
    #undef UNCONV_decoded_info
    return retVal;
}



@end



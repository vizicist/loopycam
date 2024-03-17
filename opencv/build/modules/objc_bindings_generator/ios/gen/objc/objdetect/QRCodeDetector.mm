//
// This file is auto-generated. Please don't modify it!
//

#import "QRCodeDetector.h"
#import "CVObjcUtil.h"

#import "Mat.h"

@implementation QRCodeDetector


- (instancetype)initWithNativePtr:(cv::Ptr<cv::QRCodeDetector>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrQRCodeDetector = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::QRCodeDetector>)nativePtr {
    return [[QRCodeDetector alloc] initWithNativePtr:nativePtr];
}



//
//   cv::QRCodeDetector::QRCodeDetector()
//
- (instancetype)init {
    return [self initWithNativePtr:cv::Ptr<cv::QRCodeDetector>(new cv::QRCodeDetector())];
}


//
//  QRCodeDetector cv::QRCodeDetector::setEpsX(double epsX)
//
- (QRCodeDetector*)setEpsX:(double)epsX {
    cv::Ptr<cv::QRCodeDetector> retVal = new cv::QRCodeDetector(self.nativePtrQRCodeDetector->setEpsX(epsX));
    return [QRCodeDetector fromNative:retVal];
}


//
//  QRCodeDetector cv::QRCodeDetector::setEpsY(double epsY)
//
- (QRCodeDetector*)setEpsY:(double)epsY {
    cv::Ptr<cv::QRCodeDetector> retVal = new cv::QRCodeDetector(self.nativePtrQRCodeDetector->setEpsY(epsY));
    return [QRCodeDetector fromNative:retVal];
}


//
//  QRCodeDetector cv::QRCodeDetector::setUseAlignmentMarkers(bool useAlignmentMarkers)
//
- (QRCodeDetector*)setUseAlignmentMarkers:(BOOL)useAlignmentMarkers {
    cv::Ptr<cv::QRCodeDetector> retVal = new cv::QRCodeDetector(self.nativePtrQRCodeDetector->setUseAlignmentMarkers((bool)useAlignmentMarkers));
    return [QRCodeDetector fromNative:retVal];
}


//
//  String cv::QRCodeDetector::decodeCurved(Mat img, Mat points, Mat& straight_qrcode = Mat())
//
- (NSString*)decodeCurved:(Mat*)img points:(Mat*)points straight_qrcode:(Mat*)straight_qrcode {
    cv::String retVal = self.nativePtrQRCodeDetector->decodeCurved(img.nativeRef, points.nativeRef, straight_qrcode.nativeRef);
    return [NSString stringWithUTF8String:retVal.c_str()];
}

- (NSString*)decodeCurved:(Mat*)img points:(Mat*)points {
    cv::String retVal = self.nativePtrQRCodeDetector->decodeCurved(img.nativeRef, points.nativeRef);
    return [NSString stringWithUTF8String:retVal.c_str()];
}


//
//  string cv::QRCodeDetector::detectAndDecodeCurved(Mat img, Mat& points = Mat(), Mat& straight_qrcode = Mat())
//
- (NSString*)detectAndDecodeCurved:(Mat*)img points:(Mat*)points straight_qrcode:(Mat*)straight_qrcode {
    std::string retVal = self.nativePtrQRCodeDetector->detectAndDecodeCurved(img.nativeRef, points.nativeRef, straight_qrcode.nativeRef);
    return [NSString stringWithUTF8String:retVal.c_str()];
}

- (NSString*)detectAndDecodeCurved:(Mat*)img points:(Mat*)points {
    std::string retVal = self.nativePtrQRCodeDetector->detectAndDecodeCurved(img.nativeRef, points.nativeRef);
    return [NSString stringWithUTF8String:retVal.c_str()];
}

- (NSString*)detectAndDecodeCurved:(Mat*)img {
    std::string retVal = self.nativePtrQRCodeDetector->detectAndDecodeCurved(img.nativeRef);
    return [NSString stringWithUTF8String:retVal.c_str()];
}



@end



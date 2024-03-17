//
// This file is auto-generated. Please don't modify it!
//

#import "QRCodeDetectorAruco.h"
#import "CVObjcUtil.h"

#import "QRCodeDetectorArucoParams.h"

@implementation QRCodeDetectorAruco


- (instancetype)initWithNativePtr:(cv::Ptr<cv::QRCodeDetectorAruco>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrQRCodeDetectorAruco = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::QRCodeDetectorAruco>)nativePtr {
    return [[QRCodeDetectorAruco alloc] initWithNativePtr:nativePtr];
}



//
//   cv::QRCodeDetectorAruco::QRCodeDetectorAruco()
//
- (instancetype)init {
    return [self initWithNativePtr:cv::Ptr<cv::QRCodeDetectorAruco>(new cv::QRCodeDetectorAruco())];
}


//
//   cv::QRCodeDetectorAruco::QRCodeDetectorAruco(QRCodeDetectorAruco_Params params)
//
- (instancetype)initWithParams:(QRCodeDetectorArucoParams*)params {
    return [self initWithNativePtr:cv::Ptr<cv::QRCodeDetectorAruco>(new cv::QRCodeDetectorAruco(*(params.nativePtr)))];
}


//
//  QRCodeDetectorAruco cv::QRCodeDetectorAruco::setDetectorParameters(QRCodeDetectorAruco_Params params)
//
- (QRCodeDetectorAruco*)setDetectorParameters:(QRCodeDetectorArucoParams*)params {
    cv::Ptr<cv::QRCodeDetectorAruco> retVal = new cv::QRCodeDetectorAruco(self.nativePtrQRCodeDetectorAruco->setDetectorParameters(*(params.nativePtr)));
    return [QRCodeDetectorAruco fromNative:retVal];
}


//
//  aruco_DetectorParameters cv::QRCodeDetectorAruco::getArucoParameters()
//

//
//  void cv::QRCodeDetectorAruco::setArucoParameters(aruco_DetectorParameters params)
//


@end



//
// This file is auto-generated. Please don't modify it!
//

#import "CharucoDetector.h"
#import "CVObjcUtil.h"

#import "CharucoBoard.h"
#import "CharucoParameters.h"
#import "DetectorParameters.h"
#import "Mat.h"
#import "RefineParameters.h"

@implementation CharucoDetector


- (instancetype)initWithNativePtr:(cv::Ptr<cv::aruco::CharucoDetector>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrCharucoDetector = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::aruco::CharucoDetector>)nativePtr {
    return [[CharucoDetector alloc] initWithNativePtr:nativePtr];
}



//
//   cv::aruco::CharucoDetector::CharucoDetector(CharucoBoard board, CharucoParameters charucoParams = CharucoParameters(), DetectorParameters detectorParams = DetectorParameters(), RefineParameters refineParams = RefineParameters())
//
- (instancetype)initWithBoard:(CharucoBoard*)board charucoParams:(CharucoParameters*)charucoParams detectorParams:(DetectorParameters*)detectorParams refineParams:(RefineParameters*)refineParams {
    return [self initWithNativePtr:cv::Ptr<cv::aruco::CharucoDetector>(new cv::aruco::CharucoDetector(*(board.nativePtrCharucoBoard), *(charucoParams.nativePtr), *(detectorParams.nativePtr), *(refineParams.nativePtr)))];
}

- (instancetype)initWithBoard:(CharucoBoard*)board charucoParams:(CharucoParameters*)charucoParams detectorParams:(DetectorParameters*)detectorParams {
    return [self initWithNativePtr:cv::Ptr<cv::aruco::CharucoDetector>(new cv::aruco::CharucoDetector(*(board.nativePtrCharucoBoard), *(charucoParams.nativePtr), *(detectorParams.nativePtr)))];
}

- (instancetype)initWithBoard:(CharucoBoard*)board charucoParams:(CharucoParameters*)charucoParams {
    return [self initWithNativePtr:cv::Ptr<cv::aruco::CharucoDetector>(new cv::aruco::CharucoDetector(*(board.nativePtrCharucoBoard), *(charucoParams.nativePtr)))];
}

- (instancetype)initWithBoard:(CharucoBoard*)board {
    return [self initWithNativePtr:cv::Ptr<cv::aruco::CharucoDetector>(new cv::aruco::CharucoDetector(*(board.nativePtrCharucoBoard)))];
}


//
//  CharucoBoard cv::aruco::CharucoDetector::getBoard()
//
- (CharucoBoard*)getBoard {
    cv::Ptr<cv::aruco::CharucoBoard> retVal = new cv::aruco::CharucoBoard(self.nativePtrCharucoDetector->getBoard());
    return [CharucoBoard fromNative:retVal];
}


//
//  void cv::aruco::CharucoDetector::setBoard(CharucoBoard board)
//
- (void)setBoard:(CharucoBoard*)board {
    self.nativePtrCharucoDetector->setBoard(*(board.nativePtrCharucoBoard));
}


//
//  CharucoParameters cv::aruco::CharucoDetector::getCharucoParameters()
//
- (CharucoParameters*)getCharucoParameters {
    cv::Ptr<cv::aruco::CharucoParameters> retVal = new cv::aruco::CharucoParameters(self.nativePtrCharucoDetector->getCharucoParameters());
    return [CharucoParameters fromNative:retVal];
}


//
//  void cv::aruco::CharucoDetector::setCharucoParameters(CharucoParameters charucoParameters)
//
- (void)setCharucoParameters:(CharucoParameters*)charucoParameters {
    self.nativePtrCharucoDetector->setCharucoParameters(*(charucoParameters.nativePtr));
}


//
//  DetectorParameters cv::aruco::CharucoDetector::getDetectorParameters()
//
- (DetectorParameters*)getDetectorParameters {
    cv::Ptr<cv::aruco::DetectorParameters> retVal = new cv::aruco::DetectorParameters(self.nativePtrCharucoDetector->getDetectorParameters());
    return [DetectorParameters fromNative:retVal];
}


//
//  void cv::aruco::CharucoDetector::setDetectorParameters(DetectorParameters detectorParameters)
//
- (void)setDetectorParameters:(DetectorParameters*)detectorParameters {
    self.nativePtrCharucoDetector->setDetectorParameters(*(detectorParameters.nativePtr));
}


//
//  RefineParameters cv::aruco::CharucoDetector::getRefineParameters()
//
- (RefineParameters*)getRefineParameters {
    cv::Ptr<cv::aruco::RefineParameters> retVal = new cv::aruco::RefineParameters(self.nativePtrCharucoDetector->getRefineParameters());
    return [RefineParameters fromNative:retVal];
}


//
//  void cv::aruco::CharucoDetector::setRefineParameters(RefineParameters refineParameters)
//
- (void)setRefineParameters:(RefineParameters*)refineParameters {
    self.nativePtrCharucoDetector->setRefineParameters(*(refineParameters.nativePtr));
}


//
//  void cv::aruco::CharucoDetector::detectBoard(Mat image, Mat& charucoCorners, Mat& charucoIds, vector_Mat& markerCorners = vector_Mat(), Mat& markerIds = Mat())
//
- (void)detectBoard:(Mat*)image charucoCorners:(Mat*)charucoCorners charucoIds:(Mat*)charucoIds markerCorners:(NSMutableArray<Mat*>*)markerCorners markerIds:(Mat*)markerIds {
    OBJC2CV(cv::Mat, Mat, markerCornersVector, markerCorners);
    self.nativePtrCharucoDetector->detectBoard(image.nativeRef, charucoCorners.nativeRef, charucoIds.nativeRef, markerCornersVector, markerIds.nativeRef);
    CV2OBJC(cv::Mat, Mat, markerCornersVector, markerCorners);
}

- (void)detectBoard:(Mat*)image charucoCorners:(Mat*)charucoCorners charucoIds:(Mat*)charucoIds markerCorners:(NSMutableArray<Mat*>*)markerCorners {
    OBJC2CV(cv::Mat, Mat, markerCornersVector, markerCorners);
    self.nativePtrCharucoDetector->detectBoard(image.nativeRef, charucoCorners.nativeRef, charucoIds.nativeRef, markerCornersVector);
    CV2OBJC(cv::Mat, Mat, markerCornersVector, markerCorners);
}

- (void)detectBoard:(Mat*)image charucoCorners:(Mat*)charucoCorners charucoIds:(Mat*)charucoIds {
    self.nativePtrCharucoDetector->detectBoard(image.nativeRef, charucoCorners.nativeRef, charucoIds.nativeRef);
}


//
//  void cv::aruco::CharucoDetector::detectDiamonds(Mat image, vector_Mat& diamondCorners, Mat& diamondIds, vector_Mat& markerCorners = vector_Mat(), Mat& markerIds = Mat())
//
- (void)detectDiamonds:(Mat*)image diamondCorners:(NSMutableArray<Mat*>*)diamondCorners diamondIds:(Mat*)diamondIds markerCorners:(NSMutableArray<Mat*>*)markerCorners markerIds:(Mat*)markerIds {
    OBJC2CV(cv::Mat, Mat, diamondCornersVector, diamondCorners);
    OBJC2CV(cv::Mat, Mat, markerCornersVector, markerCorners);
    self.nativePtrCharucoDetector->detectDiamonds(image.nativeRef, diamondCornersVector, diamondIds.nativeRef, markerCornersVector, markerIds.nativeRef);
    CV2OBJC(cv::Mat, Mat, diamondCornersVector, diamondCorners);
    CV2OBJC(cv::Mat, Mat, markerCornersVector, markerCorners);
}

- (void)detectDiamonds:(Mat*)image diamondCorners:(NSMutableArray<Mat*>*)diamondCorners diamondIds:(Mat*)diamondIds markerCorners:(NSMutableArray<Mat*>*)markerCorners {
    OBJC2CV(cv::Mat, Mat, diamondCornersVector, diamondCorners);
    OBJC2CV(cv::Mat, Mat, markerCornersVector, markerCorners);
    self.nativePtrCharucoDetector->detectDiamonds(image.nativeRef, diamondCornersVector, diamondIds.nativeRef, markerCornersVector);
    CV2OBJC(cv::Mat, Mat, diamondCornersVector, diamondCorners);
    CV2OBJC(cv::Mat, Mat, markerCornersVector, markerCorners);
}

- (void)detectDiamonds:(Mat*)image diamondCorners:(NSMutableArray<Mat*>*)diamondCorners diamondIds:(Mat*)diamondIds {
    OBJC2CV(cv::Mat, Mat, diamondCornersVector, diamondCorners);
    self.nativePtrCharucoDetector->detectDiamonds(image.nativeRef, diamondCornersVector, diamondIds.nativeRef);
    CV2OBJC(cv::Mat, Mat, diamondCornersVector, diamondCorners);
}



@end



//
// This file is auto-generated. Please don't modify it!
//

#import "CharucoBoard.h"
#import "CVObjcUtil.h"

#import "Dictionary.h"
#import "Mat.h"
#import "Point3f.h"
#import "Size2i.h"

@implementation CharucoBoard


- (instancetype)initWithNativePtr:(cv::Ptr<cv::aruco::CharucoBoard>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrCharucoBoard = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::aruco::CharucoBoard>)nativePtr {
    return [[CharucoBoard alloc] initWithNativePtr:nativePtr];
}



//
//   cv::aruco::CharucoBoard::CharucoBoard(Size size, float squareLength, float markerLength, Dictionary dictionary, Mat ids = Mat())
//
- (instancetype)initWithSize:(Size2i*)size squareLength:(float)squareLength markerLength:(float)markerLength dictionary:(Dictionary*)dictionary ids:(Mat*)ids {
    return [self initWithNativePtr:cv::Ptr<cv::aruco::CharucoBoard>(new cv::aruco::CharucoBoard(size.nativeRef, squareLength, markerLength, *(dictionary.nativePtr), ids.nativeRef))];
}

- (instancetype)initWithSize:(Size2i*)size squareLength:(float)squareLength markerLength:(float)markerLength dictionary:(Dictionary*)dictionary {
    return [self initWithNativePtr:cv::Ptr<cv::aruco::CharucoBoard>(new cv::aruco::CharucoBoard(size.nativeRef, squareLength, markerLength, *(dictionary.nativePtr)))];
}


//
//  void cv::aruco::CharucoBoard::setLegacyPattern(bool legacyPattern)
//
- (void)setLegacyPattern:(BOOL)legacyPattern {
    self.nativePtrCharucoBoard->setLegacyPattern((bool)legacyPattern);
}


//
//  bool cv::aruco::CharucoBoard::getLegacyPattern()
//
- (BOOL)getLegacyPattern {
    bool retVal = self.nativePtrCharucoBoard->getLegacyPattern();
    return retVal;
}


//
//  Size cv::aruco::CharucoBoard::getChessboardSize()
//
- (Size2i*)getChessboardSize {
    cv::Size retVal = self.nativePtrCharucoBoard->getChessboardSize();
    return [Size2i fromNative:retVal];
}


//
//  float cv::aruco::CharucoBoard::getSquareLength()
//
- (float)getSquareLength {
    float retVal = self.nativePtrCharucoBoard->getSquareLength();
    return retVal;
}


//
//  float cv::aruco::CharucoBoard::getMarkerLength()
//
- (float)getMarkerLength {
    float retVal = self.nativePtrCharucoBoard->getMarkerLength();
    return retVal;
}


//
//  vector_Point3f cv::aruco::CharucoBoard::getChessboardCorners()
//
- (NSArray<Point3f*>*)getChessboardCorners {
    NSMutableArray<Point3f*>* retVal = [NSMutableArray new];
    std::vector<cv::Point3f> retValVector = self.nativePtrCharucoBoard->getChessboardCorners();
    CV2OBJC(cv::Point3f, Point3f, retValVector, retVal);
    return retVal;
}


//
//  bool cv::aruco::CharucoBoard::checkCharucoCornersCollinear(Mat charucoIds)
//
- (BOOL)checkCharucoCornersCollinear:(Mat*)charucoIds {
    bool retVal = self.nativePtrCharucoBoard->checkCharucoCornersCollinear(charucoIds.nativeRef);
    return retVal;
}



@end



//
// This file is auto-generated. Please don't modify it!
//

#import "Board.h"
#import "CVObjcUtil.h"

#import "Dictionary.h"
#import "IntVector.h"
#import "Mat.h"
#import "Point3f.h"
#import "Size2i.h"

@implementation Board


- (instancetype)initWithNativePtr:(cv::Ptr<cv::aruco::Board>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::aruco::Board>)nativePtr {
    return [[Board alloc] initWithNativePtr:nativePtr];
}



//
//   cv::aruco::Board::Board(vector_Mat objPoints, Dictionary dictionary, Mat ids)
//
- (instancetype)initWithObjPoints:(NSArray<Mat*>*)objPoints dictionary:(Dictionary*)dictionary ids:(Mat*)ids {
    OBJC2CV(cv::Mat, Mat, objPointsVector, objPoints);
    return [self initWithNativePtr:cv::Ptr<cv::aruco::Board>(new cv::aruco::Board(objPointsVector, *(dictionary.nativePtr), ids.nativeRef))];
}


//
//  Dictionary cv::aruco::Board::getDictionary()
//
- (Dictionary*)getDictionary {
    cv::Ptr<cv::aruco::Dictionary> retVal = new cv::aruco::Dictionary(self.nativePtr->getDictionary());
    return [Dictionary fromNative:retVal];
}


//
//  vector_vector_Point3f cv::aruco::Board::getObjPoints()
//
- (NSArray<NSArray<Point3f*>*>*)getObjPoints {
    NSMutableArray<NSMutableArray<Point3f*>*>* retVal = [NSMutableArray new];
    std::vector< std::vector<cv::Point3f> > retValVector = self.nativePtr->getObjPoints();
    CV2OBJC2(cv::Point3f, Point3f, retValVector, retVal);
    return retVal;
}


//
//  vector_int cv::aruco::Board::getIds()
//
- (IntVector*)getIds {
    std::vector<int> retVal = self.nativePtr->getIds();
    return [IntVector fromNative:retVal];
}


//
//  Point3f cv::aruco::Board::getRightBottomCorner()
//
- (Point3f*)getRightBottomCorner {
    cv::Point3f retVal = self.nativePtr->getRightBottomCorner();
    return [Point3f fromNative:retVal];
}


//
//  void cv::aruco::Board::matchImagePoints(vector_Mat detectedCorners, Mat detectedIds, Mat& objPoints, Mat& imgPoints)
//
- (void)matchImagePoints:(NSArray<Mat*>*)detectedCorners detectedIds:(Mat*)detectedIds objPoints:(Mat*)objPoints imgPoints:(Mat*)imgPoints {
    OBJC2CV(cv::Mat, Mat, detectedCornersVector, detectedCorners);
    self.nativePtr->matchImagePoints(detectedCornersVector, detectedIds.nativeRef, objPoints.nativeRef, imgPoints.nativeRef);
}


//
//  void cv::aruco::Board::generateImage(Size outSize, Mat& img, int marginSize = 0, int borderBits = 1)
//
- (void)generateImage:(Size2i*)outSize img:(Mat*)img marginSize:(int)marginSize borderBits:(int)borderBits {
    self.nativePtr->generateImage(outSize.nativeRef, img.nativeRef, marginSize, borderBits);
}

- (void)generateImage:(Size2i*)outSize img:(Mat*)img marginSize:(int)marginSize {
    self.nativePtr->generateImage(outSize.nativeRef, img.nativeRef, marginSize);
}

- (void)generateImage:(Size2i*)outSize img:(Mat*)img {
    self.nativePtr->generateImage(outSize.nativeRef, img.nativeRef);
}



@end



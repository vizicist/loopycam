//
// This file is auto-generated. Please don't modify it!
//

#import "Objdetect.h"
#import "CVObjcUtil.h"

#import "Dictionary.h"
#import "IntVector.h"
#import "Mat.h"
#import "Rect2i.h"
#import "Scalar.h"

@implementation Objdetect

+ (int)CASCADE_DO_CANNY_PRUNING {
    return 1;
}

+ (int)CASCADE_SCALE_IMAGE {
    return 2;
}

+ (int)CASCADE_FIND_BIGGEST_OBJECT {
    return 4;
}

+ (int)CASCADE_DO_ROUGH_SEARCH {
    return 8;
}


//
//  void cv::groupRectangles(vector_Rect& rectList, vector_int& weights, int groupThreshold, double eps = 0.2)
//
+ (void)groupRectangles:(NSMutableArray<Rect2i*>*)rectList weights:(IntVector*)weights groupThreshold:(int)groupThreshold eps:(double)eps {
    OBJC2CV(cv::Rect2i, Rect2i, rectListVector, rectList);
    cv::groupRectangles(rectListVector, weights.nativeRef, groupThreshold, eps);
    CV2OBJC(cv::Rect2i, Rect2i, rectListVector, rectList);
}

+ (void)groupRectangles:(NSMutableArray<Rect2i*>*)rectList weights:(IntVector*)weights groupThreshold:(int)groupThreshold {
    OBJC2CV(cv::Rect2i, Rect2i, rectListVector, rectList);
    cv::groupRectangles(rectListVector, weights.nativeRef, groupThreshold);
    CV2OBJC(cv::Rect2i, Rect2i, rectListVector, rectList);
}


//
//  void cv::aruco::drawDetectedMarkers(Mat& image, vector_Mat corners, Mat ids = Mat(), Scalar borderColor = Scalar(0, 255, 0))
//
+ (void)drawDetectedMarkers:(Mat*)image corners:(NSArray<Mat*>*)corners ids:(Mat*)ids borderColor:(Scalar*)borderColor {
    OBJC2CV(cv::Mat, Mat, cornersVector, corners);
    cv::aruco::drawDetectedMarkers(image.nativeRef, cornersVector, ids.nativeRef, borderColor.nativeRef);
}

+ (void)drawDetectedMarkers:(Mat*)image corners:(NSArray<Mat*>*)corners ids:(Mat*)ids {
    OBJC2CV(cv::Mat, Mat, cornersVector, corners);
    cv::aruco::drawDetectedMarkers(image.nativeRef, cornersVector, ids.nativeRef);
}

+ (void)drawDetectedMarkers:(Mat*)image corners:(NSArray<Mat*>*)corners {
    OBJC2CV(cv::Mat, Mat, cornersVector, corners);
    cv::aruco::drawDetectedMarkers(image.nativeRef, cornersVector);
}


//
//  void cv::aruco::generateImageMarker(Dictionary dictionary, int id, int sidePixels, Mat& img, int borderBits = 1)
//
+ (void)generateImageMarker:(Dictionary*)dictionary id:(int)id sidePixels:(int)sidePixels img:(Mat*)img borderBits:(int)borderBits {
    cv::aruco::generateImageMarker(*(dictionary.nativePtr), id, sidePixels, img.nativeRef, borderBits);
}

+ (void)generateImageMarker:(Dictionary*)dictionary id:(int)id sidePixels:(int)sidePixels img:(Mat*)img {
    cv::aruco::generateImageMarker(*(dictionary.nativePtr), id, sidePixels, img.nativeRef);
}


//
//  Dictionary cv::aruco::getPredefinedDictionary(int dict)
//
+ (Dictionary*)getPredefinedDictionary:(int)dict {
    cv::Ptr<cv::aruco::Dictionary> retVal = new cv::aruco::Dictionary(cv::aruco::getPredefinedDictionary(dict));
    return [Dictionary fromNative:retVal];
}


//
//  Dictionary cv::aruco::extendDictionary(int nMarkers, int markerSize, Dictionary baseDictionary = Dictionary(), int randomSeed = 0)
//
+ (Dictionary*)extendDictionary:(int)nMarkers markerSize:(int)markerSize baseDictionary:(Dictionary*)baseDictionary randomSeed:(int)randomSeed {
    cv::Ptr<cv::aruco::Dictionary> retVal = new cv::aruco::Dictionary(cv::aruco::extendDictionary(nMarkers, markerSize, *(baseDictionary.nativePtr), randomSeed));
    return [Dictionary fromNative:retVal];
}

+ (Dictionary*)extendDictionary:(int)nMarkers markerSize:(int)markerSize baseDictionary:(Dictionary*)baseDictionary {
    cv::Ptr<cv::aruco::Dictionary> retVal = new cv::aruco::Dictionary(cv::aruco::extendDictionary(nMarkers, markerSize, *(baseDictionary.nativePtr)));
    return [Dictionary fromNative:retVal];
}

+ (Dictionary*)extendDictionary:(int)nMarkers markerSize:(int)markerSize {
    cv::Ptr<cv::aruco::Dictionary> retVal = new cv::aruco::Dictionary(cv::aruco::extendDictionary(nMarkers, markerSize));
    return [Dictionary fromNative:retVal];
}


//
//  void cv::aruco::drawDetectedCornersCharuco(Mat& image, Mat charucoCorners, Mat charucoIds = Mat(), Scalar cornerColor = Scalar(255, 0, 0))
//
+ (void)drawDetectedCornersCharuco:(Mat*)image charucoCorners:(Mat*)charucoCorners charucoIds:(Mat*)charucoIds cornerColor:(Scalar*)cornerColor {
    cv::aruco::drawDetectedCornersCharuco(image.nativeRef, charucoCorners.nativeRef, charucoIds.nativeRef, cornerColor.nativeRef);
}

+ (void)drawDetectedCornersCharuco:(Mat*)image charucoCorners:(Mat*)charucoCorners charucoIds:(Mat*)charucoIds {
    cv::aruco::drawDetectedCornersCharuco(image.nativeRef, charucoCorners.nativeRef, charucoIds.nativeRef);
}

+ (void)drawDetectedCornersCharuco:(Mat*)image charucoCorners:(Mat*)charucoCorners {
    cv::aruco::drawDetectedCornersCharuco(image.nativeRef, charucoCorners.nativeRef);
}


//
//  void cv::aruco::drawDetectedDiamonds(Mat& image, vector_Mat diamondCorners, Mat diamondIds = Mat(), Scalar borderColor = Scalar(0, 0, 255))
//
+ (void)drawDetectedDiamonds:(Mat*)image diamondCorners:(NSArray<Mat*>*)diamondCorners diamondIds:(Mat*)diamondIds borderColor:(Scalar*)borderColor {
    OBJC2CV(cv::Mat, Mat, diamondCornersVector, diamondCorners);
    cv::aruco::drawDetectedDiamonds(image.nativeRef, diamondCornersVector, diamondIds.nativeRef, borderColor.nativeRef);
}

+ (void)drawDetectedDiamonds:(Mat*)image diamondCorners:(NSArray<Mat*>*)diamondCorners diamondIds:(Mat*)diamondIds {
    OBJC2CV(cv::Mat, Mat, diamondCornersVector, diamondCorners);
    cv::aruco::drawDetectedDiamonds(image.nativeRef, diamondCornersVector, diamondIds.nativeRef);
}

+ (void)drawDetectedDiamonds:(Mat*)image diamondCorners:(NSArray<Mat*>*)diamondCorners {
    OBJC2CV(cv::Mat, Mat, diamondCornersVector, diamondCorners);
    cv::aruco::drawDetectedDiamonds(image.nativeRef, diamondCornersVector);
}



@end



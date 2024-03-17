//
// This file is auto-generated. Please don't modify it!
//

#import "Features2d.h"
#import "CVObjcUtil.h"

#import "ByteVector.h"
#import "DMatch.h"
#import "KeyPoint.h"
#import "Mat.h"
#import "Scalar.h"

@implementation Features2d


//
//  void cv::drawKeypoints(Mat image, vector_KeyPoint keypoints, Mat& outImage, Scalar color = Scalar::all(-1), DrawMatchesFlags flags = DrawMatchesFlags::DEFAULT)
//
+ (void)drawKeypoints:(Mat*)image keypoints:(NSArray<KeyPoint*>*)keypoints outImage:(Mat*)outImage color:(Scalar*)color flags:(DrawMatchesFlags)flags {
    OBJC2CV(cv::KeyPoint, KeyPoint, keypointsVector, keypoints);
    cv::drawKeypoints(image.nativeRef, keypointsVector, outImage.nativeRef, color.nativeRef, (cv::DrawMatchesFlags)flags);
}

+ (void)drawKeypoints:(Mat*)image keypoints:(NSArray<KeyPoint*>*)keypoints outImage:(Mat*)outImage color:(Scalar*)color {
    OBJC2CV(cv::KeyPoint, KeyPoint, keypointsVector, keypoints);
    cv::drawKeypoints(image.nativeRef, keypointsVector, outImage.nativeRef, color.nativeRef);
}

+ (void)drawKeypoints:(Mat*)image keypoints:(NSArray<KeyPoint*>*)keypoints outImage:(Mat*)outImage {
    OBJC2CV(cv::KeyPoint, KeyPoint, keypointsVector, keypoints);
    cv::drawKeypoints(image.nativeRef, keypointsVector, outImage.nativeRef);
}


//
//  void cv::drawMatches(Mat img1, vector_KeyPoint keypoints1, Mat img2, vector_KeyPoint keypoints2, vector_DMatch matches1to2, Mat& outImg, Scalar matchColor = Scalar::all(-1), Scalar singlePointColor = Scalar::all(-1), vector_char matchesMask = std::vector<char>(), DrawMatchesFlags flags = DrawMatchesFlags::DEFAULT)
//
+ (void)drawMatches:(Mat*)img1 keypoints1:(NSArray<KeyPoint*>*)keypoints1 img2:(Mat*)img2 keypoints2:(NSArray<KeyPoint*>*)keypoints2 matches1to2:(NSArray<DMatch*>*)matches1to2 outImg:(Mat*)outImg matchColor:(Scalar*)matchColor singlePointColor:(Scalar*)singlePointColor matchesMask:(ByteVector*)matchesMask flags:(DrawMatchesFlags)flags {
    OBJC2CV(cv::KeyPoint, KeyPoint, keypoints1Vector, keypoints1);
    OBJC2CV(cv::KeyPoint, KeyPoint, keypoints2Vector, keypoints2);
    OBJC2CV(cv::DMatch, DMatch, matches1to2Vector, matches1to2);
    cv::drawMatches(img1.nativeRef, keypoints1Vector, img2.nativeRef, keypoints2Vector, matches1to2Vector, outImg.nativeRef, matchColor.nativeRef, singlePointColor.nativeRef, matchesMask.nativeRef, (cv::DrawMatchesFlags)flags);
}

+ (void)drawMatches:(Mat*)img1 keypoints1:(NSArray<KeyPoint*>*)keypoints1 img2:(Mat*)img2 keypoints2:(NSArray<KeyPoint*>*)keypoints2 matches1to2:(NSArray<DMatch*>*)matches1to2 outImg:(Mat*)outImg matchColor:(Scalar*)matchColor singlePointColor:(Scalar*)singlePointColor matchesMask:(ByteVector*)matchesMask {
    OBJC2CV(cv::KeyPoint, KeyPoint, keypoints1Vector, keypoints1);
    OBJC2CV(cv::KeyPoint, KeyPoint, keypoints2Vector, keypoints2);
    OBJC2CV(cv::DMatch, DMatch, matches1to2Vector, matches1to2);
    cv::drawMatches(img1.nativeRef, keypoints1Vector, img2.nativeRef, keypoints2Vector, matches1to2Vector, outImg.nativeRef, matchColor.nativeRef, singlePointColor.nativeRef, matchesMask.nativeRef);
}

+ (void)drawMatches:(Mat*)img1 keypoints1:(NSArray<KeyPoint*>*)keypoints1 img2:(Mat*)img2 keypoints2:(NSArray<KeyPoint*>*)keypoints2 matches1to2:(NSArray<DMatch*>*)matches1to2 outImg:(Mat*)outImg matchColor:(Scalar*)matchColor singlePointColor:(Scalar*)singlePointColor {
    OBJC2CV(cv::KeyPoint, KeyPoint, keypoints1Vector, keypoints1);
    OBJC2CV(cv::KeyPoint, KeyPoint, keypoints2Vector, keypoints2);
    OBJC2CV(cv::DMatch, DMatch, matches1to2Vector, matches1to2);
    cv::drawMatches(img1.nativeRef, keypoints1Vector, img2.nativeRef, keypoints2Vector, matches1to2Vector, outImg.nativeRef, matchColor.nativeRef, singlePointColor.nativeRef);
}

+ (void)drawMatches:(Mat*)img1 keypoints1:(NSArray<KeyPoint*>*)keypoints1 img2:(Mat*)img2 keypoints2:(NSArray<KeyPoint*>*)keypoints2 matches1to2:(NSArray<DMatch*>*)matches1to2 outImg:(Mat*)outImg matchColor:(Scalar*)matchColor {
    OBJC2CV(cv::KeyPoint, KeyPoint, keypoints1Vector, keypoints1);
    OBJC2CV(cv::KeyPoint, KeyPoint, keypoints2Vector, keypoints2);
    OBJC2CV(cv::DMatch, DMatch, matches1to2Vector, matches1to2);
    cv::drawMatches(img1.nativeRef, keypoints1Vector, img2.nativeRef, keypoints2Vector, matches1to2Vector, outImg.nativeRef, matchColor.nativeRef);
}

+ (void)drawMatches:(Mat*)img1 keypoints1:(NSArray<KeyPoint*>*)keypoints1 img2:(Mat*)img2 keypoints2:(NSArray<KeyPoint*>*)keypoints2 matches1to2:(NSArray<DMatch*>*)matches1to2 outImg:(Mat*)outImg {
    OBJC2CV(cv::KeyPoint, KeyPoint, keypoints1Vector, keypoints1);
    OBJC2CV(cv::KeyPoint, KeyPoint, keypoints2Vector, keypoints2);
    OBJC2CV(cv::DMatch, DMatch, matches1to2Vector, matches1to2);
    cv::drawMatches(img1.nativeRef, keypoints1Vector, img2.nativeRef, keypoints2Vector, matches1to2Vector, outImg.nativeRef);
}


//
//  void cv::drawMatches(Mat img1, vector_KeyPoint keypoints1, Mat img2, vector_KeyPoint keypoints2, vector_DMatch matches1to2, Mat& outImg, int matchesThickness, Scalar matchColor = Scalar::all(-1), Scalar singlePointColor = Scalar::all(-1), vector_char matchesMask = std::vector<char>(), DrawMatchesFlags flags = DrawMatchesFlags::DEFAULT)
//
+ (void)drawMatches:(Mat*)img1 keypoints1:(NSArray<KeyPoint*>*)keypoints1 img2:(Mat*)img2 keypoints2:(NSArray<KeyPoint*>*)keypoints2 matches1to2:(NSArray<DMatch*>*)matches1to2 outImg:(Mat*)outImg matchesThickness:(int)matchesThickness matchColor:(Scalar*)matchColor singlePointColor:(Scalar*)singlePointColor matchesMask:(ByteVector*)matchesMask flags:(DrawMatchesFlags)flags {
    OBJC2CV(cv::KeyPoint, KeyPoint, keypoints1Vector, keypoints1);
    OBJC2CV(cv::KeyPoint, KeyPoint, keypoints2Vector, keypoints2);
    OBJC2CV(cv::DMatch, DMatch, matches1to2Vector, matches1to2);
    cv::drawMatches(img1.nativeRef, keypoints1Vector, img2.nativeRef, keypoints2Vector, matches1to2Vector, outImg.nativeRef, matchesThickness, matchColor.nativeRef, singlePointColor.nativeRef, matchesMask.nativeRef, (cv::DrawMatchesFlags)flags);
}

+ (void)drawMatches:(Mat*)img1 keypoints1:(NSArray<KeyPoint*>*)keypoints1 img2:(Mat*)img2 keypoints2:(NSArray<KeyPoint*>*)keypoints2 matches1to2:(NSArray<DMatch*>*)matches1to2 outImg:(Mat*)outImg matchesThickness:(int)matchesThickness matchColor:(Scalar*)matchColor singlePointColor:(Scalar*)singlePointColor matchesMask:(ByteVector*)matchesMask {
    OBJC2CV(cv::KeyPoint, KeyPoint, keypoints1Vector, keypoints1);
    OBJC2CV(cv::KeyPoint, KeyPoint, keypoints2Vector, keypoints2);
    OBJC2CV(cv::DMatch, DMatch, matches1to2Vector, matches1to2);
    cv::drawMatches(img1.nativeRef, keypoints1Vector, img2.nativeRef, keypoints2Vector, matches1to2Vector, outImg.nativeRef, matchesThickness, matchColor.nativeRef, singlePointColor.nativeRef, matchesMask.nativeRef);
}

+ (void)drawMatches:(Mat*)img1 keypoints1:(NSArray<KeyPoint*>*)keypoints1 img2:(Mat*)img2 keypoints2:(NSArray<KeyPoint*>*)keypoints2 matches1to2:(NSArray<DMatch*>*)matches1to2 outImg:(Mat*)outImg matchesThickness:(int)matchesThickness matchColor:(Scalar*)matchColor singlePointColor:(Scalar*)singlePointColor {
    OBJC2CV(cv::KeyPoint, KeyPoint, keypoints1Vector, keypoints1);
    OBJC2CV(cv::KeyPoint, KeyPoint, keypoints2Vector, keypoints2);
    OBJC2CV(cv::DMatch, DMatch, matches1to2Vector, matches1to2);
    cv::drawMatches(img1.nativeRef, keypoints1Vector, img2.nativeRef, keypoints2Vector, matches1to2Vector, outImg.nativeRef, matchesThickness, matchColor.nativeRef, singlePointColor.nativeRef);
}

+ (void)drawMatches:(Mat*)img1 keypoints1:(NSArray<KeyPoint*>*)keypoints1 img2:(Mat*)img2 keypoints2:(NSArray<KeyPoint*>*)keypoints2 matches1to2:(NSArray<DMatch*>*)matches1to2 outImg:(Mat*)outImg matchesThickness:(int)matchesThickness matchColor:(Scalar*)matchColor {
    OBJC2CV(cv::KeyPoint, KeyPoint, keypoints1Vector, keypoints1);
    OBJC2CV(cv::KeyPoint, KeyPoint, keypoints2Vector, keypoints2);
    OBJC2CV(cv::DMatch, DMatch, matches1to2Vector, matches1to2);
    cv::drawMatches(img1.nativeRef, keypoints1Vector, img2.nativeRef, keypoints2Vector, matches1to2Vector, outImg.nativeRef, matchesThickness, matchColor.nativeRef);
}

+ (void)drawMatches:(Mat*)img1 keypoints1:(NSArray<KeyPoint*>*)keypoints1 img2:(Mat*)img2 keypoints2:(NSArray<KeyPoint*>*)keypoints2 matches1to2:(NSArray<DMatch*>*)matches1to2 outImg:(Mat*)outImg matchesThickness:(int)matchesThickness {
    OBJC2CV(cv::KeyPoint, KeyPoint, keypoints1Vector, keypoints1);
    OBJC2CV(cv::KeyPoint, KeyPoint, keypoints2Vector, keypoints2);
    OBJC2CV(cv::DMatch, DMatch, matches1to2Vector, matches1to2);
    cv::drawMatches(img1.nativeRef, keypoints1Vector, img2.nativeRef, keypoints2Vector, matches1to2Vector, outImg.nativeRef, matchesThickness);
}


//
//  void cv::drawMatches(Mat img1, vector_KeyPoint keypoints1, Mat img2, vector_KeyPoint keypoints2, vector_vector_DMatch matches1to2, Mat& outImg, Scalar matchColor = Scalar::all(-1), Scalar singlePointColor = Scalar::all(-1), vector_vector_char matchesMask = std::vector<std::vector<char> >(), DrawMatchesFlags flags = DrawMatchesFlags::DEFAULT)
//
+ (void)drawMatchesKnn:(Mat*)img1 keypoints1:(NSArray<KeyPoint*>*)keypoints1 img2:(Mat*)img2 keypoints2:(NSArray<KeyPoint*>*)keypoints2 matches1to2:(NSArray<NSArray<DMatch*>*>*)matches1to2 outImg:(Mat*)outImg matchColor:(Scalar*)matchColor singlePointColor:(Scalar*)singlePointColor matchesMask:(NSArray<ByteVector*>*)matchesMask flags:(DrawMatchesFlags)flags {
    OBJC2CV(cv::KeyPoint, KeyPoint, keypoints1Vector, keypoints1);
    OBJC2CV(cv::KeyPoint, KeyPoint, keypoints2Vector, keypoints2);
    OBJC2CV2(cv::DMatch, DMatch, matches1to2Vector2, matches1to2);
    OBJC2CV(std::vector<char>, ByteVector, matchesMaskVector, matchesMask);
    cv::drawMatches(img1.nativeRef, keypoints1Vector, img2.nativeRef, keypoints2Vector, matches1to2Vector2, outImg.nativeRef, matchColor.nativeRef, singlePointColor.nativeRef, matchesMaskVector, (cv::DrawMatchesFlags)flags);
}

+ (void)drawMatchesKnn:(Mat*)img1 keypoints1:(NSArray<KeyPoint*>*)keypoints1 img2:(Mat*)img2 keypoints2:(NSArray<KeyPoint*>*)keypoints2 matches1to2:(NSArray<NSArray<DMatch*>*>*)matches1to2 outImg:(Mat*)outImg matchColor:(Scalar*)matchColor singlePointColor:(Scalar*)singlePointColor matchesMask:(NSArray<ByteVector*>*)matchesMask {
    OBJC2CV(cv::KeyPoint, KeyPoint, keypoints1Vector, keypoints1);
    OBJC2CV(cv::KeyPoint, KeyPoint, keypoints2Vector, keypoints2);
    OBJC2CV2(cv::DMatch, DMatch, matches1to2Vector2, matches1to2);
    OBJC2CV(std::vector<char>, ByteVector, matchesMaskVector, matchesMask);
    cv::drawMatches(img1.nativeRef, keypoints1Vector, img2.nativeRef, keypoints2Vector, matches1to2Vector2, outImg.nativeRef, matchColor.nativeRef, singlePointColor.nativeRef, matchesMaskVector);
}

+ (void)drawMatchesKnn:(Mat*)img1 keypoints1:(NSArray<KeyPoint*>*)keypoints1 img2:(Mat*)img2 keypoints2:(NSArray<KeyPoint*>*)keypoints2 matches1to2:(NSArray<NSArray<DMatch*>*>*)matches1to2 outImg:(Mat*)outImg matchColor:(Scalar*)matchColor singlePointColor:(Scalar*)singlePointColor {
    OBJC2CV(cv::KeyPoint, KeyPoint, keypoints1Vector, keypoints1);
    OBJC2CV(cv::KeyPoint, KeyPoint, keypoints2Vector, keypoints2);
    OBJC2CV2(cv::DMatch, DMatch, matches1to2Vector2, matches1to2);
    cv::drawMatches(img1.nativeRef, keypoints1Vector, img2.nativeRef, keypoints2Vector, matches1to2Vector2, outImg.nativeRef, matchColor.nativeRef, singlePointColor.nativeRef);
}

+ (void)drawMatchesKnn:(Mat*)img1 keypoints1:(NSArray<KeyPoint*>*)keypoints1 img2:(Mat*)img2 keypoints2:(NSArray<KeyPoint*>*)keypoints2 matches1to2:(NSArray<NSArray<DMatch*>*>*)matches1to2 outImg:(Mat*)outImg matchColor:(Scalar*)matchColor {
    OBJC2CV(cv::KeyPoint, KeyPoint, keypoints1Vector, keypoints1);
    OBJC2CV(cv::KeyPoint, KeyPoint, keypoints2Vector, keypoints2);
    OBJC2CV2(cv::DMatch, DMatch, matches1to2Vector2, matches1to2);
    cv::drawMatches(img1.nativeRef, keypoints1Vector, img2.nativeRef, keypoints2Vector, matches1to2Vector2, outImg.nativeRef, matchColor.nativeRef);
}

+ (void)drawMatchesKnn:(Mat*)img1 keypoints1:(NSArray<KeyPoint*>*)keypoints1 img2:(Mat*)img2 keypoints2:(NSArray<KeyPoint*>*)keypoints2 matches1to2:(NSArray<NSArray<DMatch*>*>*)matches1to2 outImg:(Mat*)outImg {
    OBJC2CV(cv::KeyPoint, KeyPoint, keypoints1Vector, keypoints1);
    OBJC2CV(cv::KeyPoint, KeyPoint, keypoints2Vector, keypoints2);
    OBJC2CV2(cv::DMatch, DMatch, matches1to2Vector2, matches1to2);
    cv::drawMatches(img1.nativeRef, keypoints1Vector, img2.nativeRef, keypoints2Vector, matches1to2Vector2, outImg.nativeRef);
}



@end



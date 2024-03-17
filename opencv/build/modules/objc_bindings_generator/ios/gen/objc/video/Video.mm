//
// This file is auto-generated. Please don't modify it!
//

#import "Video.h"
#import "CVObjcUtil.h"

#import "BackgroundSubtractorKNN.h"
#import "BackgroundSubtractorMOG2.h"
#import "Mat.h"
#import "Rect2i.h"
#import "RotatedRect.h"
#import "Size2i.h"
#import "TermCriteria.h"

@implementation Video

+ (int)OPTFLOW_USE_INITIAL_FLOW {
    return 4;
}

+ (int)OPTFLOW_LK_GET_MIN_EIGENVALS {
    return 8;
}

+ (int)OPTFLOW_FARNEBACK_GAUSSIAN {
    return 256;
}

+ (int)MOTION_TRANSLATION {
    return 0;
}

+ (int)MOTION_EUCLIDEAN {
    return 1;
}

+ (int)MOTION_AFFINE {
    return 2;
}

+ (int)MOTION_HOMOGRAPHY {
    return 3;
}


//
//  Ptr_BackgroundSubtractorMOG2 cv::createBackgroundSubtractorMOG2(int history = 500, double varThreshold = 16, bool detectShadows = true)
//
+ (BackgroundSubtractorMOG2*)createBackgroundSubtractorMOG2:(int)history varThreshold:(double)varThreshold detectShadows:(BOOL)detectShadows {
    cv::Ptr<cv::BackgroundSubtractorMOG2> retVal = cv::createBackgroundSubtractorMOG2(history, varThreshold, (bool)detectShadows);
    return [BackgroundSubtractorMOG2 fromNative:retVal];
}

+ (BackgroundSubtractorMOG2*)createBackgroundSubtractorMOG2:(int)history varThreshold:(double)varThreshold {
    cv::Ptr<cv::BackgroundSubtractorMOG2> retVal = cv::createBackgroundSubtractorMOG2(history, varThreshold);
    return [BackgroundSubtractorMOG2 fromNative:retVal];
}

+ (BackgroundSubtractorMOG2*)createBackgroundSubtractorMOG2:(int)history {
    cv::Ptr<cv::BackgroundSubtractorMOG2> retVal = cv::createBackgroundSubtractorMOG2(history);
    return [BackgroundSubtractorMOG2 fromNative:retVal];
}

+ (BackgroundSubtractorMOG2*)createBackgroundSubtractorMOG2 {
    cv::Ptr<cv::BackgroundSubtractorMOG2> retVal = cv::createBackgroundSubtractorMOG2();
    return [BackgroundSubtractorMOG2 fromNative:retVal];
}


//
//  Ptr_BackgroundSubtractorKNN cv::createBackgroundSubtractorKNN(int history = 500, double dist2Threshold = 400.0, bool detectShadows = true)
//
+ (BackgroundSubtractorKNN*)createBackgroundSubtractorKNN:(int)history dist2Threshold:(double)dist2Threshold detectShadows:(BOOL)detectShadows {
    cv::Ptr<cv::BackgroundSubtractorKNN> retVal = cv::createBackgroundSubtractorKNN(history, dist2Threshold, (bool)detectShadows);
    return [BackgroundSubtractorKNN fromNative:retVal];
}

+ (BackgroundSubtractorKNN*)createBackgroundSubtractorKNN:(int)history dist2Threshold:(double)dist2Threshold {
    cv::Ptr<cv::BackgroundSubtractorKNN> retVal = cv::createBackgroundSubtractorKNN(history, dist2Threshold);
    return [BackgroundSubtractorKNN fromNative:retVal];
}

+ (BackgroundSubtractorKNN*)createBackgroundSubtractorKNN:(int)history {
    cv::Ptr<cv::BackgroundSubtractorKNN> retVal = cv::createBackgroundSubtractorKNN(history);
    return [BackgroundSubtractorKNN fromNative:retVal];
}

+ (BackgroundSubtractorKNN*)createBackgroundSubtractorKNN {
    cv::Ptr<cv::BackgroundSubtractorKNN> retVal = cv::createBackgroundSubtractorKNN();
    return [BackgroundSubtractorKNN fromNative:retVal];
}


//
//  RotatedRect cv::CamShift(Mat probImage, Rect& window, TermCriteria criteria)
//
+ (RotatedRect*)CamShift:(Mat*)probImage window:(Rect2i*)window criteria:(TermCriteria*)criteria {
    cv::RotatedRect retVal = cv::CamShift(probImage.nativeRef, window.nativeRef, criteria.nativeRef);
    return [RotatedRect fromNative:retVal];
}


//
//  int cv::meanShift(Mat probImage, Rect& window, TermCriteria criteria)
//
+ (int)meanShift:(Mat*)probImage window:(Rect2i*)window criteria:(TermCriteria*)criteria {
    int retVal = cv::meanShift(probImage.nativeRef, window.nativeRef, criteria.nativeRef);
    return retVal;
}


//
//  int cv::buildOpticalFlowPyramid(Mat img, vector_Mat& pyramid, Size winSize, int maxLevel, bool withDerivatives = true, int pyrBorder = BORDER_REFLECT_101, int derivBorder = BORDER_CONSTANT, bool tryReuseInputImage = true)
//
+ (int)buildOpticalFlowPyramid:(Mat*)img pyramid:(NSMutableArray<Mat*>*)pyramid winSize:(Size2i*)winSize maxLevel:(int)maxLevel withDerivatives:(BOOL)withDerivatives pyrBorder:(int)pyrBorder derivBorder:(int)derivBorder tryReuseInputImage:(BOOL)tryReuseInputImage {
    OBJC2CV(cv::Mat, Mat, pyramidVector, pyramid);
    int retVal = cv::buildOpticalFlowPyramid(img.nativeRef, pyramidVector, winSize.nativeRef, maxLevel, (bool)withDerivatives, pyrBorder, derivBorder, (bool)tryReuseInputImage);
    CV2OBJC(cv::Mat, Mat, pyramidVector, pyramid);
    return retVal;
}

+ (int)buildOpticalFlowPyramid:(Mat*)img pyramid:(NSMutableArray<Mat*>*)pyramid winSize:(Size2i*)winSize maxLevel:(int)maxLevel withDerivatives:(BOOL)withDerivatives pyrBorder:(int)pyrBorder derivBorder:(int)derivBorder {
    OBJC2CV(cv::Mat, Mat, pyramidVector, pyramid);
    int retVal = cv::buildOpticalFlowPyramid(img.nativeRef, pyramidVector, winSize.nativeRef, maxLevel, (bool)withDerivatives, pyrBorder, derivBorder);
    CV2OBJC(cv::Mat, Mat, pyramidVector, pyramid);
    return retVal;
}

+ (int)buildOpticalFlowPyramid:(Mat*)img pyramid:(NSMutableArray<Mat*>*)pyramid winSize:(Size2i*)winSize maxLevel:(int)maxLevel withDerivatives:(BOOL)withDerivatives pyrBorder:(int)pyrBorder {
    OBJC2CV(cv::Mat, Mat, pyramidVector, pyramid);
    int retVal = cv::buildOpticalFlowPyramid(img.nativeRef, pyramidVector, winSize.nativeRef, maxLevel, (bool)withDerivatives, pyrBorder);
    CV2OBJC(cv::Mat, Mat, pyramidVector, pyramid);
    return retVal;
}

+ (int)buildOpticalFlowPyramid:(Mat*)img pyramid:(NSMutableArray<Mat*>*)pyramid winSize:(Size2i*)winSize maxLevel:(int)maxLevel withDerivatives:(BOOL)withDerivatives {
    OBJC2CV(cv::Mat, Mat, pyramidVector, pyramid);
    int retVal = cv::buildOpticalFlowPyramid(img.nativeRef, pyramidVector, winSize.nativeRef, maxLevel, (bool)withDerivatives);
    CV2OBJC(cv::Mat, Mat, pyramidVector, pyramid);
    return retVal;
}

+ (int)buildOpticalFlowPyramid:(Mat*)img pyramid:(NSMutableArray<Mat*>*)pyramid winSize:(Size2i*)winSize maxLevel:(int)maxLevel {
    OBJC2CV(cv::Mat, Mat, pyramidVector, pyramid);
    int retVal = cv::buildOpticalFlowPyramid(img.nativeRef, pyramidVector, winSize.nativeRef, maxLevel);
    CV2OBJC(cv::Mat, Mat, pyramidVector, pyramid);
    return retVal;
}


//
//  void cv::calcOpticalFlowPyrLK(Mat prevImg, Mat nextImg, Mat prevPts, Mat& nextPts, Mat& status, Mat& err, Size winSize = Size(21,21), int maxLevel = 3, TermCriteria criteria = TermCriteria(TermCriteria::COUNT+TermCriteria::EPS, 30, 0.01), int flags = 0, double minEigThreshold = 1e-4)
//
+ (void)calcOpticalFlowPyrLK:(Mat*)prevImg nextImg:(Mat*)nextImg prevPts:(Mat*)prevPts nextPts:(Mat*)nextPts status:(Mat*)status err:(Mat*)err winSize:(Size2i*)winSize maxLevel:(int)maxLevel criteria:(TermCriteria*)criteria flags:(int)flags minEigThreshold:(double)minEigThreshold {
    cv::calcOpticalFlowPyrLK(prevImg.nativeRef, nextImg.nativeRef, prevPts.nativeRef, nextPts.nativeRef, status.nativeRef, err.nativeRef, winSize.nativeRef, maxLevel, criteria.nativeRef, flags, minEigThreshold);
}

+ (void)calcOpticalFlowPyrLK:(Mat*)prevImg nextImg:(Mat*)nextImg prevPts:(Mat*)prevPts nextPts:(Mat*)nextPts status:(Mat*)status err:(Mat*)err winSize:(Size2i*)winSize maxLevel:(int)maxLevel criteria:(TermCriteria*)criteria flags:(int)flags {
    cv::calcOpticalFlowPyrLK(prevImg.nativeRef, nextImg.nativeRef, prevPts.nativeRef, nextPts.nativeRef, status.nativeRef, err.nativeRef, winSize.nativeRef, maxLevel, criteria.nativeRef, flags);
}

+ (void)calcOpticalFlowPyrLK:(Mat*)prevImg nextImg:(Mat*)nextImg prevPts:(Mat*)prevPts nextPts:(Mat*)nextPts status:(Mat*)status err:(Mat*)err winSize:(Size2i*)winSize maxLevel:(int)maxLevel criteria:(TermCriteria*)criteria {
    cv::calcOpticalFlowPyrLK(prevImg.nativeRef, nextImg.nativeRef, prevPts.nativeRef, nextPts.nativeRef, status.nativeRef, err.nativeRef, winSize.nativeRef, maxLevel, criteria.nativeRef);
}

+ (void)calcOpticalFlowPyrLK:(Mat*)prevImg nextImg:(Mat*)nextImg prevPts:(Mat*)prevPts nextPts:(Mat*)nextPts status:(Mat*)status err:(Mat*)err winSize:(Size2i*)winSize maxLevel:(int)maxLevel {
    cv::calcOpticalFlowPyrLK(prevImg.nativeRef, nextImg.nativeRef, prevPts.nativeRef, nextPts.nativeRef, status.nativeRef, err.nativeRef, winSize.nativeRef, maxLevel);
}

+ (void)calcOpticalFlowPyrLK:(Mat*)prevImg nextImg:(Mat*)nextImg prevPts:(Mat*)prevPts nextPts:(Mat*)nextPts status:(Mat*)status err:(Mat*)err winSize:(Size2i*)winSize {
    cv::calcOpticalFlowPyrLK(prevImg.nativeRef, nextImg.nativeRef, prevPts.nativeRef, nextPts.nativeRef, status.nativeRef, err.nativeRef, winSize.nativeRef);
}

+ (void)calcOpticalFlowPyrLK:(Mat*)prevImg nextImg:(Mat*)nextImg prevPts:(Mat*)prevPts nextPts:(Mat*)nextPts status:(Mat*)status err:(Mat*)err {
    cv::calcOpticalFlowPyrLK(prevImg.nativeRef, nextImg.nativeRef, prevPts.nativeRef, nextPts.nativeRef, status.nativeRef, err.nativeRef);
}


//
//  void cv::calcOpticalFlowFarneback(Mat prev, Mat next, Mat& flow, double pyr_scale, int levels, int winsize, int iterations, int poly_n, double poly_sigma, int flags)
//
+ (void)calcOpticalFlowFarneback:(Mat*)prev next:(Mat*)next flow:(Mat*)flow pyr_scale:(double)pyr_scale levels:(int)levels winsize:(int)winsize iterations:(int)iterations poly_n:(int)poly_n poly_sigma:(double)poly_sigma flags:(int)flags {
    cv::calcOpticalFlowFarneback(prev.nativeRef, next.nativeRef, flow.nativeRef, pyr_scale, levels, winsize, iterations, poly_n, poly_sigma, flags);
}


//
//  double cv::computeECC(Mat templateImage, Mat inputImage, Mat inputMask = Mat())
//
+ (double)computeECC:(Mat*)templateImage inputImage:(Mat*)inputImage inputMask:(Mat*)inputMask {
    double retVal = cv::computeECC(templateImage.nativeRef, inputImage.nativeRef, inputMask.nativeRef);
    return retVal;
}

+ (double)computeECC:(Mat*)templateImage inputImage:(Mat*)inputImage {
    double retVal = cv::computeECC(templateImage.nativeRef, inputImage.nativeRef);
    return retVal;
}


//
//  double cv::findTransformECC(Mat templateImage, Mat inputImage, Mat& warpMatrix, int motionType, TermCriteria criteria, Mat inputMask, int gaussFiltSize)
//
+ (double)findTransformECC:(Mat*)templateImage inputImage:(Mat*)inputImage warpMatrix:(Mat*)warpMatrix motionType:(int)motionType criteria:(TermCriteria*)criteria inputMask:(Mat*)inputMask gaussFiltSize:(int)gaussFiltSize {
    double retVal = cv::findTransformECC(templateImage.nativeRef, inputImage.nativeRef, warpMatrix.nativeRef, motionType, criteria.nativeRef, inputMask.nativeRef, gaussFiltSize);
    return retVal;
}


//
//  double cv::findTransformECC(Mat templateImage, Mat inputImage, Mat& warpMatrix, int motionType = MOTION_AFFINE, TermCriteria criteria = TermCriteria(TermCriteria::COUNT+TermCriteria::EPS, 50, 0.001), Mat inputMask = Mat())
//
+ (double)findTransformECC:(Mat*)templateImage inputImage:(Mat*)inputImage warpMatrix:(Mat*)warpMatrix motionType:(int)motionType criteria:(TermCriteria*)criteria inputMask:(Mat*)inputMask {
    double retVal = cv::findTransformECC(templateImage.nativeRef, inputImage.nativeRef, warpMatrix.nativeRef, motionType, criteria.nativeRef, inputMask.nativeRef);
    return retVal;
}

+ (double)findTransformECC:(Mat*)templateImage inputImage:(Mat*)inputImage warpMatrix:(Mat*)warpMatrix motionType:(int)motionType criteria:(TermCriteria*)criteria {
    double retVal = cv::findTransformECC(templateImage.nativeRef, inputImage.nativeRef, warpMatrix.nativeRef, motionType, criteria.nativeRef);
    return retVal;
}

+ (double)findTransformECC:(Mat*)templateImage inputImage:(Mat*)inputImage warpMatrix:(Mat*)warpMatrix motionType:(int)motionType {
    double retVal = cv::findTransformECC(templateImage.nativeRef, inputImage.nativeRef, warpMatrix.nativeRef, motionType);
    return retVal;
}

+ (double)findTransformECC:(Mat*)templateImage inputImage:(Mat*)inputImage warpMatrix:(Mat*)warpMatrix {
    double retVal = cv::findTransformECC(templateImage.nativeRef, inputImage.nativeRef, warpMatrix.nativeRef);
    return retVal;
}


//
//  Mat cv::readOpticalFlow(String path)
//
+ (Mat*)readOpticalFlow:(NSString*)path {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::readOpticalFlow(cv::String(path.UTF8String)));
    return [Mat fromNativePtr:retVal];
}


//
//  bool cv::writeOpticalFlow(String path, Mat flow)
//
+ (BOOL)writeOpticalFlow:(NSString*)path flow:(Mat*)flow {
    bool retVal = cv::writeOpticalFlow(cv::String(path.UTF8String), flow.nativeRef);
    return retVal;
}



@end



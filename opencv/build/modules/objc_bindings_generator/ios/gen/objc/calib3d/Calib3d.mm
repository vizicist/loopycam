//
// This file is auto-generated. Please don't modify it!
//

#import "Calib3d.h"
#import "CVObjcUtil.h"

#import "CirclesGridFinderParameters.h"
#import "Double3.h"
#import "Mat.h"
#import "Point2d.h"
#import "Rect2i.h"
#import "Scalar.h"
#import "Size2i.h"
#import "TermCriteria.h"
#import "UsacParams.h"

@implementation Calib3d

+ (int)CV_ITERATIVE {
    return 0;
}

+ (int)CV_EPNP {
    return 1;
}

+ (int)CV_P3P {
    return 2;
}

+ (int)CV_DLS {
    return 3;
}

+ (int)CvLevMarq_DONE {
    return 0;
}

+ (int)CvLevMarq_STARTED {
    return 1;
}

+ (int)CvLevMarq_CALC_J {
    return 2;
}

+ (int)CvLevMarq_CHECK_ERR {
    return 3;
}

+ (int)LMEDS {
    return 4;
}

+ (int)RANSAC {
    return 8;
}

+ (int)RHO {
    return 16;
}

+ (int)USAC_DEFAULT {
    return 32;
}

+ (int)USAC_PARALLEL {
    return 33;
}

+ (int)USAC_FM_8PTS {
    return 34;
}

+ (int)USAC_FAST {
    return 35;
}

+ (int)USAC_ACCURATE {
    return 36;
}

+ (int)USAC_PROSAC {
    return 37;
}

+ (int)USAC_MAGSAC {
    return 38;
}

+ (int)CALIB_CB_ADAPTIVE_THRESH {
    return 1;
}

+ (int)CALIB_CB_NORMALIZE_IMAGE {
    return 2;
}

+ (int)CALIB_CB_FILTER_QUADS {
    return 4;
}

+ (int)CALIB_CB_FAST_CHECK {
    return 8;
}

+ (int)CALIB_CB_EXHAUSTIVE {
    return 16;
}

+ (int)CALIB_CB_ACCURACY {
    return 32;
}

+ (int)CALIB_CB_LARGER {
    return 64;
}

+ (int)CALIB_CB_MARKER {
    return 128;
}

+ (int)CALIB_CB_PLAIN {
    return 256;
}

+ (int)CALIB_CB_SYMMETRIC_GRID {
    return 1;
}

+ (int)CALIB_CB_ASYMMETRIC_GRID {
    return 2;
}

+ (int)CALIB_CB_CLUSTERING {
    return 4;
}

+ (int)CALIB_NINTRINSIC {
    return 18;
}

+ (int)CALIB_USE_INTRINSIC_GUESS {
    return 0x00001;
}

+ (int)CALIB_FIX_ASPECT_RATIO {
    return 0x00002;
}

+ (int)CALIB_FIX_PRINCIPAL_POINT {
    return 0x00004;
}

+ (int)CALIB_ZERO_TANGENT_DIST {
    return 0x00008;
}

+ (int)CALIB_FIX_FOCAL_LENGTH {
    return 0x00010;
}

+ (int)CALIB_FIX_K1 {
    return 0x00020;
}

+ (int)CALIB_FIX_K2 {
    return 0x00040;
}

+ (int)CALIB_FIX_K3 {
    return 0x00080;
}

+ (int)CALIB_FIX_K4 {
    return 0x00800;
}

+ (int)CALIB_FIX_K5 {
    return 0x01000;
}

+ (int)CALIB_FIX_K6 {
    return 0x02000;
}

+ (int)CALIB_RATIONAL_MODEL {
    return 0x04000;
}

+ (int)CALIB_THIN_PRISM_MODEL {
    return 0x08000;
}

+ (int)CALIB_FIX_S1_S2_S3_S4 {
    return 0x10000;
}

+ (int)CALIB_TILTED_MODEL {
    return 0x40000;
}

+ (int)CALIB_FIX_TAUX_TAUY {
    return 0x80000;
}

+ (int)CALIB_USE_QR {
    return 0x100000;
}

+ (int)CALIB_FIX_TANGENT_DIST {
    return 0x200000;
}

+ (int)CALIB_FIX_INTRINSIC {
    return 0x00100;
}

+ (int)CALIB_SAME_FOCAL_LENGTH {
    return 0x00200;
}

+ (int)CALIB_ZERO_DISPARITY {
    return 0x00400;
}

+ (int)CALIB_USE_LU {
    return (1 << 17);
}

+ (int)CALIB_USE_EXTRINSIC_GUESS {
    return (1 << 22);
}

+ (int)FM_7POINT {
    return 1;
}

+ (int)FM_8POINT {
    return 2;
}

+ (int)FM_LMEDS {
    return 4;
}

+ (int)FM_RANSAC {
    return 8;
}

+ (int)fisheye_CALIB_USE_INTRINSIC_GUESS {
    return 1 << 0;
}

+ (int)fisheye_CALIB_RECOMPUTE_EXTRINSIC {
    return 1 << 1;
}

+ (int)fisheye_CALIB_CHECK_COND {
    return 1 << 2;
}

+ (int)fisheye_CALIB_FIX_SKEW {
    return 1 << 3;
}

+ (int)fisheye_CALIB_FIX_K1 {
    return 1 << 4;
}

+ (int)fisheye_CALIB_FIX_K2 {
    return 1 << 5;
}

+ (int)fisheye_CALIB_FIX_K3 {
    return 1 << 6;
}

+ (int)fisheye_CALIB_FIX_K4 {
    return 1 << 7;
}

+ (int)fisheye_CALIB_FIX_INTRINSIC {
    return 1 << 8;
}

+ (int)fisheye_CALIB_FIX_PRINCIPAL_POINT {
    return 1 << 9;
}

+ (int)fisheye_CALIB_ZERO_DISPARITY {
    return 1 << 10;
}

+ (int)fisheye_CALIB_FIX_FOCAL_LENGTH {
    return 1 << 11;
}


//
//  void cv::Rodrigues(Mat src, Mat& dst, Mat& jacobian = Mat())
//
+ (void)Rodrigues:(Mat*)src dst:(Mat*)dst jacobian:(Mat*)jacobian {
    cv::Rodrigues(src.nativeRef, dst.nativeRef, jacobian.nativeRef);
}

+ (void)Rodrigues:(Mat*)src dst:(Mat*)dst {
    cv::Rodrigues(src.nativeRef, dst.nativeRef);
}


//
//  Mat cv::findHomography(Mat srcPoints, Mat dstPoints, int method = 0, double ransacReprojThreshold = 3, Mat& mask = Mat(), int maxIters = 2000, double confidence = 0.995)
//
+ (Mat*)findHomography:(Mat*)srcPoints dstPoints:(Mat*)dstPoints method:(int)method ransacReprojThreshold:(double)ransacReprojThreshold mask:(Mat*)mask maxIters:(int)maxIters confidence:(double)confidence {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findHomography(srcPoints.nativeRef, dstPoints.nativeRef, method, ransacReprojThreshold, mask.nativeRef, maxIters, confidence));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)findHomography:(Mat*)srcPoints dstPoints:(Mat*)dstPoints method:(int)method ransacReprojThreshold:(double)ransacReprojThreshold mask:(Mat*)mask maxIters:(int)maxIters {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findHomography(srcPoints.nativeRef, dstPoints.nativeRef, method, ransacReprojThreshold, mask.nativeRef, maxIters));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)findHomography:(Mat*)srcPoints dstPoints:(Mat*)dstPoints method:(int)method ransacReprojThreshold:(double)ransacReprojThreshold mask:(Mat*)mask {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findHomography(srcPoints.nativeRef, dstPoints.nativeRef, method, ransacReprojThreshold, mask.nativeRef));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)findHomography:(Mat*)srcPoints dstPoints:(Mat*)dstPoints method:(int)method ransacReprojThreshold:(double)ransacReprojThreshold {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findHomography(srcPoints.nativeRef, dstPoints.nativeRef, method, ransacReprojThreshold));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)findHomography:(Mat*)srcPoints dstPoints:(Mat*)dstPoints method:(int)method {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findHomography(srcPoints.nativeRef, dstPoints.nativeRef, method));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)findHomography:(Mat*)srcPoints dstPoints:(Mat*)dstPoints {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findHomography(srcPoints.nativeRef, dstPoints.nativeRef));
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::findHomography(Mat srcPoints, Mat dstPoints, Mat& mask, UsacParams params)
//
+ (Mat*)findHomography:(Mat*)srcPoints dstPoints:(Mat*)dstPoints mask:(Mat*)mask params:(UsacParams*)params {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findHomography(srcPoints.nativeRef, dstPoints.nativeRef, mask.nativeRef, *(params.nativePtr)));
    return [Mat fromNativePtr:retVal];
}


//
//  Vec3d cv::RQDecomp3x3(Mat src, Mat& mtxR, Mat& mtxQ, Mat& Qx = Mat(), Mat& Qy = Mat(), Mat& Qz = Mat())
//
+ (Double3*)RQDecomp3x3:(Mat*)src mtxR:(Mat*)mtxR mtxQ:(Mat*)mtxQ Qx:(Mat*)Qx Qy:(Mat*)Qy Qz:(Mat*)Qz {
    cv::Vec3d retVal = cv::RQDecomp3x3(src.nativeRef, mtxR.nativeRef, mtxQ.nativeRef, Qx.nativeRef, Qy.nativeRef, Qz.nativeRef);
    return [Double3 fromNative:retVal];
}

+ (Double3*)RQDecomp3x3:(Mat*)src mtxR:(Mat*)mtxR mtxQ:(Mat*)mtxQ Qx:(Mat*)Qx Qy:(Mat*)Qy {
    cv::Vec3d retVal = cv::RQDecomp3x3(src.nativeRef, mtxR.nativeRef, mtxQ.nativeRef, Qx.nativeRef, Qy.nativeRef);
    return [Double3 fromNative:retVal];
}

+ (Double3*)RQDecomp3x3:(Mat*)src mtxR:(Mat*)mtxR mtxQ:(Mat*)mtxQ Qx:(Mat*)Qx {
    cv::Vec3d retVal = cv::RQDecomp3x3(src.nativeRef, mtxR.nativeRef, mtxQ.nativeRef, Qx.nativeRef);
    return [Double3 fromNative:retVal];
}

+ (Double3*)RQDecomp3x3:(Mat*)src mtxR:(Mat*)mtxR mtxQ:(Mat*)mtxQ {
    cv::Vec3d retVal = cv::RQDecomp3x3(src.nativeRef, mtxR.nativeRef, mtxQ.nativeRef);
    return [Double3 fromNative:retVal];
}


//
//  void cv::decomposeProjectionMatrix(Mat projMatrix, Mat& cameraMatrix, Mat& rotMatrix, Mat& transVect, Mat& rotMatrixX = Mat(), Mat& rotMatrixY = Mat(), Mat& rotMatrixZ = Mat(), Mat& eulerAngles = Mat())
//
+ (void)decomposeProjectionMatrix:(Mat*)projMatrix cameraMatrix:(Mat*)cameraMatrix rotMatrix:(Mat*)rotMatrix transVect:(Mat*)transVect rotMatrixX:(Mat*)rotMatrixX rotMatrixY:(Mat*)rotMatrixY rotMatrixZ:(Mat*)rotMatrixZ eulerAngles:(Mat*)eulerAngles {
    cv::decomposeProjectionMatrix(projMatrix.nativeRef, cameraMatrix.nativeRef, rotMatrix.nativeRef, transVect.nativeRef, rotMatrixX.nativeRef, rotMatrixY.nativeRef, rotMatrixZ.nativeRef, eulerAngles.nativeRef);
}

+ (void)decomposeProjectionMatrix:(Mat*)projMatrix cameraMatrix:(Mat*)cameraMatrix rotMatrix:(Mat*)rotMatrix transVect:(Mat*)transVect rotMatrixX:(Mat*)rotMatrixX rotMatrixY:(Mat*)rotMatrixY rotMatrixZ:(Mat*)rotMatrixZ {
    cv::decomposeProjectionMatrix(projMatrix.nativeRef, cameraMatrix.nativeRef, rotMatrix.nativeRef, transVect.nativeRef, rotMatrixX.nativeRef, rotMatrixY.nativeRef, rotMatrixZ.nativeRef);
}

+ (void)decomposeProjectionMatrix:(Mat*)projMatrix cameraMatrix:(Mat*)cameraMatrix rotMatrix:(Mat*)rotMatrix transVect:(Mat*)transVect rotMatrixX:(Mat*)rotMatrixX rotMatrixY:(Mat*)rotMatrixY {
    cv::decomposeProjectionMatrix(projMatrix.nativeRef, cameraMatrix.nativeRef, rotMatrix.nativeRef, transVect.nativeRef, rotMatrixX.nativeRef, rotMatrixY.nativeRef);
}

+ (void)decomposeProjectionMatrix:(Mat*)projMatrix cameraMatrix:(Mat*)cameraMatrix rotMatrix:(Mat*)rotMatrix transVect:(Mat*)transVect rotMatrixX:(Mat*)rotMatrixX {
    cv::decomposeProjectionMatrix(projMatrix.nativeRef, cameraMatrix.nativeRef, rotMatrix.nativeRef, transVect.nativeRef, rotMatrixX.nativeRef);
}

+ (void)decomposeProjectionMatrix:(Mat*)projMatrix cameraMatrix:(Mat*)cameraMatrix rotMatrix:(Mat*)rotMatrix transVect:(Mat*)transVect {
    cv::decomposeProjectionMatrix(projMatrix.nativeRef, cameraMatrix.nativeRef, rotMatrix.nativeRef, transVect.nativeRef);
}


//
//  void cv::matMulDeriv(Mat A, Mat B, Mat& dABdA, Mat& dABdB)
//
+ (void)matMulDeriv:(Mat*)A B:(Mat*)B dABdA:(Mat*)dABdA dABdB:(Mat*)dABdB {
    cv::matMulDeriv(A.nativeRef, B.nativeRef, dABdA.nativeRef, dABdB.nativeRef);
}


//
//  void cv::composeRT(Mat rvec1, Mat tvec1, Mat rvec2, Mat tvec2, Mat& rvec3, Mat& tvec3, Mat& dr3dr1 = Mat(), Mat& dr3dt1 = Mat(), Mat& dr3dr2 = Mat(), Mat& dr3dt2 = Mat(), Mat& dt3dr1 = Mat(), Mat& dt3dt1 = Mat(), Mat& dt3dr2 = Mat(), Mat& dt3dt2 = Mat())
//
+ (void)composeRT:(Mat*)rvec1 tvec1:(Mat*)tvec1 rvec2:(Mat*)rvec2 tvec2:(Mat*)tvec2 rvec3:(Mat*)rvec3 tvec3:(Mat*)tvec3 dr3dr1:(Mat*)dr3dr1 dr3dt1:(Mat*)dr3dt1 dr3dr2:(Mat*)dr3dr2 dr3dt2:(Mat*)dr3dt2 dt3dr1:(Mat*)dt3dr1 dt3dt1:(Mat*)dt3dt1 dt3dr2:(Mat*)dt3dr2 dt3dt2:(Mat*)dt3dt2 {
    cv::composeRT(rvec1.nativeRef, tvec1.nativeRef, rvec2.nativeRef, tvec2.nativeRef, rvec3.nativeRef, tvec3.nativeRef, dr3dr1.nativeRef, dr3dt1.nativeRef, dr3dr2.nativeRef, dr3dt2.nativeRef, dt3dr1.nativeRef, dt3dt1.nativeRef, dt3dr2.nativeRef, dt3dt2.nativeRef);
}

+ (void)composeRT:(Mat*)rvec1 tvec1:(Mat*)tvec1 rvec2:(Mat*)rvec2 tvec2:(Mat*)tvec2 rvec3:(Mat*)rvec3 tvec3:(Mat*)tvec3 dr3dr1:(Mat*)dr3dr1 dr3dt1:(Mat*)dr3dt1 dr3dr2:(Mat*)dr3dr2 dr3dt2:(Mat*)dr3dt2 dt3dr1:(Mat*)dt3dr1 dt3dt1:(Mat*)dt3dt1 dt3dr2:(Mat*)dt3dr2 {
    cv::composeRT(rvec1.nativeRef, tvec1.nativeRef, rvec2.nativeRef, tvec2.nativeRef, rvec3.nativeRef, tvec3.nativeRef, dr3dr1.nativeRef, dr3dt1.nativeRef, dr3dr2.nativeRef, dr3dt2.nativeRef, dt3dr1.nativeRef, dt3dt1.nativeRef, dt3dr2.nativeRef);
}

+ (void)composeRT:(Mat*)rvec1 tvec1:(Mat*)tvec1 rvec2:(Mat*)rvec2 tvec2:(Mat*)tvec2 rvec3:(Mat*)rvec3 tvec3:(Mat*)tvec3 dr3dr1:(Mat*)dr3dr1 dr3dt1:(Mat*)dr3dt1 dr3dr2:(Mat*)dr3dr2 dr3dt2:(Mat*)dr3dt2 dt3dr1:(Mat*)dt3dr1 dt3dt1:(Mat*)dt3dt1 {
    cv::composeRT(rvec1.nativeRef, tvec1.nativeRef, rvec2.nativeRef, tvec2.nativeRef, rvec3.nativeRef, tvec3.nativeRef, dr3dr1.nativeRef, dr3dt1.nativeRef, dr3dr2.nativeRef, dr3dt2.nativeRef, dt3dr1.nativeRef, dt3dt1.nativeRef);
}

+ (void)composeRT:(Mat*)rvec1 tvec1:(Mat*)tvec1 rvec2:(Mat*)rvec2 tvec2:(Mat*)tvec2 rvec3:(Mat*)rvec3 tvec3:(Mat*)tvec3 dr3dr1:(Mat*)dr3dr1 dr3dt1:(Mat*)dr3dt1 dr3dr2:(Mat*)dr3dr2 dr3dt2:(Mat*)dr3dt2 dt3dr1:(Mat*)dt3dr1 {
    cv::composeRT(rvec1.nativeRef, tvec1.nativeRef, rvec2.nativeRef, tvec2.nativeRef, rvec3.nativeRef, tvec3.nativeRef, dr3dr1.nativeRef, dr3dt1.nativeRef, dr3dr2.nativeRef, dr3dt2.nativeRef, dt3dr1.nativeRef);
}

+ (void)composeRT:(Mat*)rvec1 tvec1:(Mat*)tvec1 rvec2:(Mat*)rvec2 tvec2:(Mat*)tvec2 rvec3:(Mat*)rvec3 tvec3:(Mat*)tvec3 dr3dr1:(Mat*)dr3dr1 dr3dt1:(Mat*)dr3dt1 dr3dr2:(Mat*)dr3dr2 dr3dt2:(Mat*)dr3dt2 {
    cv::composeRT(rvec1.nativeRef, tvec1.nativeRef, rvec2.nativeRef, tvec2.nativeRef, rvec3.nativeRef, tvec3.nativeRef, dr3dr1.nativeRef, dr3dt1.nativeRef, dr3dr2.nativeRef, dr3dt2.nativeRef);
}

+ (void)composeRT:(Mat*)rvec1 tvec1:(Mat*)tvec1 rvec2:(Mat*)rvec2 tvec2:(Mat*)tvec2 rvec3:(Mat*)rvec3 tvec3:(Mat*)tvec3 dr3dr1:(Mat*)dr3dr1 dr3dt1:(Mat*)dr3dt1 dr3dr2:(Mat*)dr3dr2 {
    cv::composeRT(rvec1.nativeRef, tvec1.nativeRef, rvec2.nativeRef, tvec2.nativeRef, rvec3.nativeRef, tvec3.nativeRef, dr3dr1.nativeRef, dr3dt1.nativeRef, dr3dr2.nativeRef);
}

+ (void)composeRT:(Mat*)rvec1 tvec1:(Mat*)tvec1 rvec2:(Mat*)rvec2 tvec2:(Mat*)tvec2 rvec3:(Mat*)rvec3 tvec3:(Mat*)tvec3 dr3dr1:(Mat*)dr3dr1 dr3dt1:(Mat*)dr3dt1 {
    cv::composeRT(rvec1.nativeRef, tvec1.nativeRef, rvec2.nativeRef, tvec2.nativeRef, rvec3.nativeRef, tvec3.nativeRef, dr3dr1.nativeRef, dr3dt1.nativeRef);
}

+ (void)composeRT:(Mat*)rvec1 tvec1:(Mat*)tvec1 rvec2:(Mat*)rvec2 tvec2:(Mat*)tvec2 rvec3:(Mat*)rvec3 tvec3:(Mat*)tvec3 dr3dr1:(Mat*)dr3dr1 {
    cv::composeRT(rvec1.nativeRef, tvec1.nativeRef, rvec2.nativeRef, tvec2.nativeRef, rvec3.nativeRef, tvec3.nativeRef, dr3dr1.nativeRef);
}

+ (void)composeRT:(Mat*)rvec1 tvec1:(Mat*)tvec1 rvec2:(Mat*)rvec2 tvec2:(Mat*)tvec2 rvec3:(Mat*)rvec3 tvec3:(Mat*)tvec3 {
    cv::composeRT(rvec1.nativeRef, tvec1.nativeRef, rvec2.nativeRef, tvec2.nativeRef, rvec3.nativeRef, tvec3.nativeRef);
}


//
//  void cv::projectPoints(Mat objectPoints, Mat rvec, Mat tvec, Mat cameraMatrix, Mat distCoeffs, Mat& imagePoints, Mat& jacobian = Mat(), double aspectRatio = 0)
//
+ (void)projectPoints:(Mat*)objectPoints rvec:(Mat*)rvec tvec:(Mat*)tvec cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs imagePoints:(Mat*)imagePoints jacobian:(Mat*)jacobian aspectRatio:(double)aspectRatio {
    cv::projectPoints(objectPoints.nativeRef, rvec.nativeRef, tvec.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, imagePoints.nativeRef, jacobian.nativeRef, aspectRatio);
}

+ (void)projectPoints:(Mat*)objectPoints rvec:(Mat*)rvec tvec:(Mat*)tvec cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs imagePoints:(Mat*)imagePoints jacobian:(Mat*)jacobian {
    cv::projectPoints(objectPoints.nativeRef, rvec.nativeRef, tvec.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, imagePoints.nativeRef, jacobian.nativeRef);
}

+ (void)projectPoints:(Mat*)objectPoints rvec:(Mat*)rvec tvec:(Mat*)tvec cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs imagePoints:(Mat*)imagePoints {
    cv::projectPoints(objectPoints.nativeRef, rvec.nativeRef, tvec.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, imagePoints.nativeRef);
}


//
//  bool cv::solvePnP(Mat objectPoints, Mat imagePoints, Mat cameraMatrix, Mat distCoeffs, Mat& rvec, Mat& tvec, bool useExtrinsicGuess = false, int flags = SOLVEPNP_ITERATIVE)
//
+ (BOOL)solvePnP:(Mat*)objectPoints imagePoints:(Mat*)imagePoints cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvec:(Mat*)rvec tvec:(Mat*)tvec useExtrinsicGuess:(BOOL)useExtrinsicGuess flags:(int)flags {
    bool retVal = cv::solvePnP(objectPoints.nativeRef, imagePoints.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvec.nativeRef, tvec.nativeRef, (bool)useExtrinsicGuess, flags);
    return retVal;
}

+ (BOOL)solvePnP:(Mat*)objectPoints imagePoints:(Mat*)imagePoints cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvec:(Mat*)rvec tvec:(Mat*)tvec useExtrinsicGuess:(BOOL)useExtrinsicGuess {
    bool retVal = cv::solvePnP(objectPoints.nativeRef, imagePoints.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvec.nativeRef, tvec.nativeRef, (bool)useExtrinsicGuess);
    return retVal;
}

+ (BOOL)solvePnP:(Mat*)objectPoints imagePoints:(Mat*)imagePoints cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvec:(Mat*)rvec tvec:(Mat*)tvec {
    bool retVal = cv::solvePnP(objectPoints.nativeRef, imagePoints.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvec.nativeRef, tvec.nativeRef);
    return retVal;
}


//
//  bool cv::solvePnPRansac(Mat objectPoints, Mat imagePoints, Mat cameraMatrix, Mat distCoeffs, Mat& rvec, Mat& tvec, bool useExtrinsicGuess = false, int iterationsCount = 100, float reprojectionError = 8.0, double confidence = 0.99, Mat& inliers = Mat(), int flags = SOLVEPNP_ITERATIVE)
//
+ (BOOL)solvePnPRansac:(Mat*)objectPoints imagePoints:(Mat*)imagePoints cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvec:(Mat*)rvec tvec:(Mat*)tvec useExtrinsicGuess:(BOOL)useExtrinsicGuess iterationsCount:(int)iterationsCount reprojectionError:(float)reprojectionError confidence:(double)confidence inliers:(Mat*)inliers flags:(int)flags {
    bool retVal = cv::solvePnPRansac(objectPoints.nativeRef, imagePoints.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvec.nativeRef, tvec.nativeRef, (bool)useExtrinsicGuess, iterationsCount, reprojectionError, confidence, inliers.nativeRef, flags);
    return retVal;
}

+ (BOOL)solvePnPRansac:(Mat*)objectPoints imagePoints:(Mat*)imagePoints cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvec:(Mat*)rvec tvec:(Mat*)tvec useExtrinsicGuess:(BOOL)useExtrinsicGuess iterationsCount:(int)iterationsCount reprojectionError:(float)reprojectionError confidence:(double)confidence inliers:(Mat*)inliers {
    bool retVal = cv::solvePnPRansac(objectPoints.nativeRef, imagePoints.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvec.nativeRef, tvec.nativeRef, (bool)useExtrinsicGuess, iterationsCount, reprojectionError, confidence, inliers.nativeRef);
    return retVal;
}

+ (BOOL)solvePnPRansac:(Mat*)objectPoints imagePoints:(Mat*)imagePoints cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvec:(Mat*)rvec tvec:(Mat*)tvec useExtrinsicGuess:(BOOL)useExtrinsicGuess iterationsCount:(int)iterationsCount reprojectionError:(float)reprojectionError confidence:(double)confidence {
    bool retVal = cv::solvePnPRansac(objectPoints.nativeRef, imagePoints.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvec.nativeRef, tvec.nativeRef, (bool)useExtrinsicGuess, iterationsCount, reprojectionError, confidence);
    return retVal;
}

+ (BOOL)solvePnPRansac:(Mat*)objectPoints imagePoints:(Mat*)imagePoints cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvec:(Mat*)rvec tvec:(Mat*)tvec useExtrinsicGuess:(BOOL)useExtrinsicGuess iterationsCount:(int)iterationsCount reprojectionError:(float)reprojectionError {
    bool retVal = cv::solvePnPRansac(objectPoints.nativeRef, imagePoints.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvec.nativeRef, tvec.nativeRef, (bool)useExtrinsicGuess, iterationsCount, reprojectionError);
    return retVal;
}

+ (BOOL)solvePnPRansac:(Mat*)objectPoints imagePoints:(Mat*)imagePoints cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvec:(Mat*)rvec tvec:(Mat*)tvec useExtrinsicGuess:(BOOL)useExtrinsicGuess iterationsCount:(int)iterationsCount {
    bool retVal = cv::solvePnPRansac(objectPoints.nativeRef, imagePoints.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvec.nativeRef, tvec.nativeRef, (bool)useExtrinsicGuess, iterationsCount);
    return retVal;
}

+ (BOOL)solvePnPRansac:(Mat*)objectPoints imagePoints:(Mat*)imagePoints cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvec:(Mat*)rvec tvec:(Mat*)tvec useExtrinsicGuess:(BOOL)useExtrinsicGuess {
    bool retVal = cv::solvePnPRansac(objectPoints.nativeRef, imagePoints.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvec.nativeRef, tvec.nativeRef, (bool)useExtrinsicGuess);
    return retVal;
}

+ (BOOL)solvePnPRansac:(Mat*)objectPoints imagePoints:(Mat*)imagePoints cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvec:(Mat*)rvec tvec:(Mat*)tvec {
    bool retVal = cv::solvePnPRansac(objectPoints.nativeRef, imagePoints.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvec.nativeRef, tvec.nativeRef);
    return retVal;
}


//
//  bool cv::solvePnPRansac(Mat objectPoints, Mat imagePoints, Mat& cameraMatrix, Mat distCoeffs, Mat& rvec, Mat& tvec, Mat& inliers, UsacParams params = UsacParams())
//
+ (BOOL)solvePnPRansac:(Mat*)objectPoints imagePoints:(Mat*)imagePoints cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvec:(Mat*)rvec tvec:(Mat*)tvec inliers:(Mat*)inliers params:(UsacParams*)params {
    bool retVal = cv::solvePnPRansac(objectPoints.nativeRef, imagePoints.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvec.nativeRef, tvec.nativeRef, inliers.nativeRef, *(params.nativePtr));
    return retVal;
}

+ (BOOL)solvePnPRansac:(Mat*)objectPoints imagePoints:(Mat*)imagePoints cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvec:(Mat*)rvec tvec:(Mat*)tvec inliers:(Mat*)inliers {
    bool retVal = cv::solvePnPRansac(objectPoints.nativeRef, imagePoints.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvec.nativeRef, tvec.nativeRef, inliers.nativeRef);
    return retVal;
}


//
//  int cv::solveP3P(Mat objectPoints, Mat imagePoints, Mat cameraMatrix, Mat distCoeffs, vector_Mat& rvecs, vector_Mat& tvecs, int flags)
//
+ (int)solveP3P:(Mat*)objectPoints imagePoints:(Mat*)imagePoints cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvecs:(NSMutableArray<Mat*>*)rvecs tvecs:(NSMutableArray<Mat*>*)tvecs flags:(int)flags {
    OBJC2CV(cv::Mat, Mat, rvecsVector, rvecs);
    OBJC2CV(cv::Mat, Mat, tvecsVector, tvecs);
    int retVal = cv::solveP3P(objectPoints.nativeRef, imagePoints.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvecsVector, tvecsVector, flags);
    CV2OBJC(cv::Mat, Mat, rvecsVector, rvecs);
    CV2OBJC(cv::Mat, Mat, tvecsVector, tvecs);
    return retVal;
}


//
//  void cv::solvePnPRefineLM(Mat objectPoints, Mat imagePoints, Mat cameraMatrix, Mat distCoeffs, Mat& rvec, Mat& tvec, TermCriteria criteria = TermCriteria(TermCriteria::EPS + TermCriteria::COUNT, 20, FLT_EPSILON))
//
+ (void)solvePnPRefineLM:(Mat*)objectPoints imagePoints:(Mat*)imagePoints cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvec:(Mat*)rvec tvec:(Mat*)tvec criteria:(TermCriteria*)criteria {
    cv::solvePnPRefineLM(objectPoints.nativeRef, imagePoints.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvec.nativeRef, tvec.nativeRef, criteria.nativeRef);
}

+ (void)solvePnPRefineLM:(Mat*)objectPoints imagePoints:(Mat*)imagePoints cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvec:(Mat*)rvec tvec:(Mat*)tvec {
    cv::solvePnPRefineLM(objectPoints.nativeRef, imagePoints.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvec.nativeRef, tvec.nativeRef);
}


//
//  void cv::solvePnPRefineVVS(Mat objectPoints, Mat imagePoints, Mat cameraMatrix, Mat distCoeffs, Mat& rvec, Mat& tvec, TermCriteria criteria = TermCriteria(TermCriteria::EPS + TermCriteria::COUNT, 20, FLT_EPSILON), double VVSlambda = 1)
//
+ (void)solvePnPRefineVVS:(Mat*)objectPoints imagePoints:(Mat*)imagePoints cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvec:(Mat*)rvec tvec:(Mat*)tvec criteria:(TermCriteria*)criteria VVSlambda:(double)VVSlambda {
    cv::solvePnPRefineVVS(objectPoints.nativeRef, imagePoints.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvec.nativeRef, tvec.nativeRef, criteria.nativeRef, VVSlambda);
}

+ (void)solvePnPRefineVVS:(Mat*)objectPoints imagePoints:(Mat*)imagePoints cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvec:(Mat*)rvec tvec:(Mat*)tvec criteria:(TermCriteria*)criteria {
    cv::solvePnPRefineVVS(objectPoints.nativeRef, imagePoints.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvec.nativeRef, tvec.nativeRef, criteria.nativeRef);
}

+ (void)solvePnPRefineVVS:(Mat*)objectPoints imagePoints:(Mat*)imagePoints cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvec:(Mat*)rvec tvec:(Mat*)tvec {
    cv::solvePnPRefineVVS(objectPoints.nativeRef, imagePoints.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvec.nativeRef, tvec.nativeRef);
}


//
//  int cv::solvePnPGeneric(Mat objectPoints, Mat imagePoints, Mat cameraMatrix, Mat distCoeffs, vector_Mat& rvecs, vector_Mat& tvecs, bool useExtrinsicGuess = false, SolvePnPMethod flags = SOLVEPNP_ITERATIVE, Mat rvec = Mat(), Mat tvec = Mat(), Mat& reprojectionError = Mat())
//
+ (int)solvePnPGeneric:(Mat*)objectPoints imagePoints:(Mat*)imagePoints cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvecs:(NSMutableArray<Mat*>*)rvecs tvecs:(NSMutableArray<Mat*>*)tvecs useExtrinsicGuess:(BOOL)useExtrinsicGuess flags:(SolvePnPMethod)flags rvec:(Mat*)rvec tvec:(Mat*)tvec reprojectionError:(Mat*)reprojectionError {
    OBJC2CV(cv::Mat, Mat, rvecsVector, rvecs);
    OBJC2CV(cv::Mat, Mat, tvecsVector, tvecs);
    int retVal = cv::solvePnPGeneric(objectPoints.nativeRef, imagePoints.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvecsVector, tvecsVector, (bool)useExtrinsicGuess, (cv::SolvePnPMethod)flags, rvec.nativeRef, tvec.nativeRef, reprojectionError.nativeRef);
    CV2OBJC(cv::Mat, Mat, rvecsVector, rvecs);
    CV2OBJC(cv::Mat, Mat, tvecsVector, tvecs);
    return retVal;
}

+ (int)solvePnPGeneric:(Mat*)objectPoints imagePoints:(Mat*)imagePoints cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvecs:(NSMutableArray<Mat*>*)rvecs tvecs:(NSMutableArray<Mat*>*)tvecs useExtrinsicGuess:(BOOL)useExtrinsicGuess flags:(SolvePnPMethod)flags rvec:(Mat*)rvec tvec:(Mat*)tvec {
    OBJC2CV(cv::Mat, Mat, rvecsVector, rvecs);
    OBJC2CV(cv::Mat, Mat, tvecsVector, tvecs);
    int retVal = cv::solvePnPGeneric(objectPoints.nativeRef, imagePoints.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvecsVector, tvecsVector, (bool)useExtrinsicGuess, (cv::SolvePnPMethod)flags, rvec.nativeRef, tvec.nativeRef);
    CV2OBJC(cv::Mat, Mat, rvecsVector, rvecs);
    CV2OBJC(cv::Mat, Mat, tvecsVector, tvecs);
    return retVal;
}

+ (int)solvePnPGeneric:(Mat*)objectPoints imagePoints:(Mat*)imagePoints cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvecs:(NSMutableArray<Mat*>*)rvecs tvecs:(NSMutableArray<Mat*>*)tvecs useExtrinsicGuess:(BOOL)useExtrinsicGuess flags:(SolvePnPMethod)flags rvec:(Mat*)rvec {
    OBJC2CV(cv::Mat, Mat, rvecsVector, rvecs);
    OBJC2CV(cv::Mat, Mat, tvecsVector, tvecs);
    int retVal = cv::solvePnPGeneric(objectPoints.nativeRef, imagePoints.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvecsVector, tvecsVector, (bool)useExtrinsicGuess, (cv::SolvePnPMethod)flags, rvec.nativeRef);
    CV2OBJC(cv::Mat, Mat, rvecsVector, rvecs);
    CV2OBJC(cv::Mat, Mat, tvecsVector, tvecs);
    return retVal;
}

+ (int)solvePnPGeneric:(Mat*)objectPoints imagePoints:(Mat*)imagePoints cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvecs:(NSMutableArray<Mat*>*)rvecs tvecs:(NSMutableArray<Mat*>*)tvecs useExtrinsicGuess:(BOOL)useExtrinsicGuess flags:(SolvePnPMethod)flags {
    OBJC2CV(cv::Mat, Mat, rvecsVector, rvecs);
    OBJC2CV(cv::Mat, Mat, tvecsVector, tvecs);
    int retVal = cv::solvePnPGeneric(objectPoints.nativeRef, imagePoints.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvecsVector, tvecsVector, (bool)useExtrinsicGuess, (cv::SolvePnPMethod)flags);
    CV2OBJC(cv::Mat, Mat, rvecsVector, rvecs);
    CV2OBJC(cv::Mat, Mat, tvecsVector, tvecs);
    return retVal;
}

+ (int)solvePnPGeneric:(Mat*)objectPoints imagePoints:(Mat*)imagePoints cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvecs:(NSMutableArray<Mat*>*)rvecs tvecs:(NSMutableArray<Mat*>*)tvecs useExtrinsicGuess:(BOOL)useExtrinsicGuess {
    OBJC2CV(cv::Mat, Mat, rvecsVector, rvecs);
    OBJC2CV(cv::Mat, Mat, tvecsVector, tvecs);
    int retVal = cv::solvePnPGeneric(objectPoints.nativeRef, imagePoints.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvecsVector, tvecsVector, (bool)useExtrinsicGuess);
    CV2OBJC(cv::Mat, Mat, rvecsVector, rvecs);
    CV2OBJC(cv::Mat, Mat, tvecsVector, tvecs);
    return retVal;
}

+ (int)solvePnPGeneric:(Mat*)objectPoints imagePoints:(Mat*)imagePoints cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvecs:(NSMutableArray<Mat*>*)rvecs tvecs:(NSMutableArray<Mat*>*)tvecs {
    OBJC2CV(cv::Mat, Mat, rvecsVector, rvecs);
    OBJC2CV(cv::Mat, Mat, tvecsVector, tvecs);
    int retVal = cv::solvePnPGeneric(objectPoints.nativeRef, imagePoints.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvecsVector, tvecsVector);
    CV2OBJC(cv::Mat, Mat, rvecsVector, rvecs);
    CV2OBJC(cv::Mat, Mat, tvecsVector, tvecs);
    return retVal;
}


//
//  Mat cv::initCameraMatrix2D(vector_Mat objectPoints, vector_Mat imagePoints, Size imageSize, double aspectRatio = 1.0)
//
+ (Mat*)initCameraMatrix2D:(NSArray<Mat*>*)objectPoints imagePoints:(NSArray<Mat*>*)imagePoints imageSize:(Size2i*)imageSize aspectRatio:(double)aspectRatio {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePointsVector, imagePoints);
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::initCameraMatrix2D(objectPointsVector, imagePointsVector, imageSize.nativeRef, aspectRatio));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)initCameraMatrix2D:(NSArray<Mat*>*)objectPoints imagePoints:(NSArray<Mat*>*)imagePoints imageSize:(Size2i*)imageSize {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePointsVector, imagePoints);
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::initCameraMatrix2D(objectPointsVector, imagePointsVector, imageSize.nativeRef));
    return [Mat fromNativePtr:retVal];
}


//
//  bool cv::findChessboardCorners(Mat image, Size patternSize, Mat& corners, int flags = CALIB_CB_ADAPTIVE_THRESH + CALIB_CB_NORMALIZE_IMAGE)
//
+ (BOOL)findChessboardCorners:(Mat*)image patternSize:(Size2i*)patternSize corners:(Mat*)corners flags:(int)flags {
    bool retVal = cv::findChessboardCorners(image.nativeRef, patternSize.nativeRef, corners.nativeRef, flags);
    return retVal;
}

+ (BOOL)findChessboardCorners:(Mat*)image patternSize:(Size2i*)patternSize corners:(Mat*)corners {
    bool retVal = cv::findChessboardCorners(image.nativeRef, patternSize.nativeRef, corners.nativeRef);
    return retVal;
}


//
//  bool cv::checkChessboard(Mat img, Size size)
//
+ (BOOL)checkChessboard:(Mat*)img size:(Size2i*)size {
    bool retVal = cv::checkChessboard(img.nativeRef, size.nativeRef);
    return retVal;
}


//
//  bool cv::findChessboardCornersSB(Mat image, Size patternSize, Mat& corners, int flags, Mat& meta)
//
+ (BOOL)findChessboardCornersSBWithMeta:(Mat*)image patternSize:(Size2i*)patternSize corners:(Mat*)corners flags:(int)flags meta:(Mat*)meta {
    bool retVal = cv::findChessboardCornersSB(image.nativeRef, patternSize.nativeRef, corners.nativeRef, flags, meta.nativeRef);
    return retVal;
}


//
//  bool cv::findChessboardCornersSB(Mat image, Size patternSize, Mat& corners, int flags = 0)
//
+ (BOOL)findChessboardCornersSB:(Mat*)image patternSize:(Size2i*)patternSize corners:(Mat*)corners flags:(int)flags {
    bool retVal = cv::findChessboardCornersSB(image.nativeRef, patternSize.nativeRef, corners.nativeRef, flags);
    return retVal;
}

+ (BOOL)findChessboardCornersSB:(Mat*)image patternSize:(Size2i*)patternSize corners:(Mat*)corners {
    bool retVal = cv::findChessboardCornersSB(image.nativeRef, patternSize.nativeRef, corners.nativeRef);
    return retVal;
}


//
//  Scalar cv::estimateChessboardSharpness(Mat image, Size patternSize, Mat corners, float rise_distance = 0.8F, bool vertical = false, Mat& sharpness = Mat())
//
+ (Scalar*)estimateChessboardSharpness:(Mat*)image patternSize:(Size2i*)patternSize corners:(Mat*)corners rise_distance:(float)rise_distance vertical:(BOOL)vertical sharpness:(Mat*)sharpness {
    cv::Scalar retVal = cv::estimateChessboardSharpness(image.nativeRef, patternSize.nativeRef, corners.nativeRef, rise_distance, (bool)vertical, sharpness.nativeRef);
    return [Scalar fromNative:retVal];
}

+ (Scalar*)estimateChessboardSharpness:(Mat*)image patternSize:(Size2i*)patternSize corners:(Mat*)corners rise_distance:(float)rise_distance vertical:(BOOL)vertical {
    cv::Scalar retVal = cv::estimateChessboardSharpness(image.nativeRef, patternSize.nativeRef, corners.nativeRef, rise_distance, (bool)vertical);
    return [Scalar fromNative:retVal];
}

+ (Scalar*)estimateChessboardSharpness:(Mat*)image patternSize:(Size2i*)patternSize corners:(Mat*)corners rise_distance:(float)rise_distance {
    cv::Scalar retVal = cv::estimateChessboardSharpness(image.nativeRef, patternSize.nativeRef, corners.nativeRef, rise_distance);
    return [Scalar fromNative:retVal];
}

+ (Scalar*)estimateChessboardSharpness:(Mat*)image patternSize:(Size2i*)patternSize corners:(Mat*)corners {
    cv::Scalar retVal = cv::estimateChessboardSharpness(image.nativeRef, patternSize.nativeRef, corners.nativeRef);
    return [Scalar fromNative:retVal];
}


//
//  bool cv::find4QuadCornerSubpix(Mat img, Mat& corners, Size region_size)
//
+ (BOOL)find4QuadCornerSubpix:(Mat*)img corners:(Mat*)corners region_size:(Size2i*)region_size {
    bool retVal = cv::find4QuadCornerSubpix(img.nativeRef, corners.nativeRef, region_size.nativeRef);
    return retVal;
}


//
//  void cv::drawChessboardCorners(Mat& image, Size patternSize, Mat corners, bool patternWasFound)
//
+ (void)drawChessboardCorners:(Mat*)image patternSize:(Size2i*)patternSize corners:(Mat*)corners patternWasFound:(BOOL)patternWasFound {
    cv::drawChessboardCorners(image.nativeRef, patternSize.nativeRef, corners.nativeRef, (bool)patternWasFound);
}


//
//  void cv::drawFrameAxes(Mat& image, Mat cameraMatrix, Mat distCoeffs, Mat rvec, Mat tvec, float length, int thickness = 3)
//
+ (void)drawFrameAxes:(Mat*)image cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvec:(Mat*)rvec tvec:(Mat*)tvec length:(float)length thickness:(int)thickness {
    cv::drawFrameAxes(image.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvec.nativeRef, tvec.nativeRef, length, thickness);
}

+ (void)drawFrameAxes:(Mat*)image cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvec:(Mat*)rvec tvec:(Mat*)tvec length:(float)length {
    cv::drawFrameAxes(image.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvec.nativeRef, tvec.nativeRef, length);
}


//
//  bool cv::findCirclesGrid(Mat image, Size patternSize, Mat& centers, int flags,  _hidden_  blobDetector = cv::SimpleBlobDetector::create(), CirclesGridFinderParameters parameters)
//
+ (BOOL)findCirclesGrid:(Mat*)image patternSize:(Size2i*)patternSize centers:(Mat*)centers flags:(int)flags parameters:(CirclesGridFinderParameters*)parameters {
    bool retVal = cv::findCirclesGrid(image.nativeRef, patternSize.nativeRef, centers.nativeRef, flags, cv::SimpleBlobDetector::create(), *(parameters.nativePtr));
    return retVal;
}


//
//  bool cv::findCirclesGrid(Mat image, Size patternSize, Mat& centers, int flags = CALIB_CB_SYMMETRIC_GRID,  _hidden_  blobDetector = cv::SimpleBlobDetector::create())
//
+ (BOOL)findCirclesGrid:(Mat*)image patternSize:(Size2i*)patternSize centers:(Mat*)centers flags:(int)flags {
    bool retVal = cv::findCirclesGrid(image.nativeRef, patternSize.nativeRef, centers.nativeRef, flags, cv::SimpleBlobDetector::create());
    return retVal;
}

+ (BOOL)findCirclesGrid:(Mat*)image patternSize:(Size2i*)patternSize centers:(Mat*)centers {
    bool retVal = cv::findCirclesGrid(image.nativeRef, patternSize.nativeRef, centers.nativeRef);
    return retVal;
}


//
//  double cv::calibrateCamera(vector_Mat objectPoints, vector_Mat imagePoints, Size imageSize, Mat& cameraMatrix, Mat& distCoeffs, vector_Mat& rvecs, vector_Mat& tvecs, Mat& stdDeviationsIntrinsics, Mat& stdDeviationsExtrinsics, Mat& perViewErrors, int flags = 0, TermCriteria criteria = TermCriteria( TermCriteria::COUNT + TermCriteria::EPS, 30, DBL_EPSILON))
//
+ (double)calibrateCameraExtended:(NSArray<Mat*>*)objectPoints imagePoints:(NSArray<Mat*>*)imagePoints imageSize:(Size2i*)imageSize cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvecs:(NSMutableArray<Mat*>*)rvecs tvecs:(NSMutableArray<Mat*>*)tvecs stdDeviationsIntrinsics:(Mat*)stdDeviationsIntrinsics stdDeviationsExtrinsics:(Mat*)stdDeviationsExtrinsics perViewErrors:(Mat*)perViewErrors flags:(int)flags criteria:(TermCriteria*)criteria {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePointsVector, imagePoints);
    OBJC2CV(cv::Mat, Mat, rvecsVector, rvecs);
    OBJC2CV(cv::Mat, Mat, tvecsVector, tvecs);
    double retVal = cv::calibrateCamera(objectPointsVector, imagePointsVector, imageSize.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvecsVector, tvecsVector, stdDeviationsIntrinsics.nativeRef, stdDeviationsExtrinsics.nativeRef, perViewErrors.nativeRef, flags, criteria.nativeRef);
    CV2OBJC(cv::Mat, Mat, rvecsVector, rvecs);
    CV2OBJC(cv::Mat, Mat, tvecsVector, tvecs);
    return retVal;
}

+ (double)calibrateCameraExtended:(NSArray<Mat*>*)objectPoints imagePoints:(NSArray<Mat*>*)imagePoints imageSize:(Size2i*)imageSize cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvecs:(NSMutableArray<Mat*>*)rvecs tvecs:(NSMutableArray<Mat*>*)tvecs stdDeviationsIntrinsics:(Mat*)stdDeviationsIntrinsics stdDeviationsExtrinsics:(Mat*)stdDeviationsExtrinsics perViewErrors:(Mat*)perViewErrors flags:(int)flags {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePointsVector, imagePoints);
    OBJC2CV(cv::Mat, Mat, rvecsVector, rvecs);
    OBJC2CV(cv::Mat, Mat, tvecsVector, tvecs);
    double retVal = cv::calibrateCamera(objectPointsVector, imagePointsVector, imageSize.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvecsVector, tvecsVector, stdDeviationsIntrinsics.nativeRef, stdDeviationsExtrinsics.nativeRef, perViewErrors.nativeRef, flags);
    CV2OBJC(cv::Mat, Mat, rvecsVector, rvecs);
    CV2OBJC(cv::Mat, Mat, tvecsVector, tvecs);
    return retVal;
}

+ (double)calibrateCameraExtended:(NSArray<Mat*>*)objectPoints imagePoints:(NSArray<Mat*>*)imagePoints imageSize:(Size2i*)imageSize cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvecs:(NSMutableArray<Mat*>*)rvecs tvecs:(NSMutableArray<Mat*>*)tvecs stdDeviationsIntrinsics:(Mat*)stdDeviationsIntrinsics stdDeviationsExtrinsics:(Mat*)stdDeviationsExtrinsics perViewErrors:(Mat*)perViewErrors {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePointsVector, imagePoints);
    OBJC2CV(cv::Mat, Mat, rvecsVector, rvecs);
    OBJC2CV(cv::Mat, Mat, tvecsVector, tvecs);
    double retVal = cv::calibrateCamera(objectPointsVector, imagePointsVector, imageSize.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvecsVector, tvecsVector, stdDeviationsIntrinsics.nativeRef, stdDeviationsExtrinsics.nativeRef, perViewErrors.nativeRef);
    CV2OBJC(cv::Mat, Mat, rvecsVector, rvecs);
    CV2OBJC(cv::Mat, Mat, tvecsVector, tvecs);
    return retVal;
}


//
//  double cv::calibrateCamera(vector_Mat objectPoints, vector_Mat imagePoints, Size imageSize, Mat& cameraMatrix, Mat& distCoeffs, vector_Mat& rvecs, vector_Mat& tvecs, int flags = 0, TermCriteria criteria = TermCriteria( TermCriteria::COUNT + TermCriteria::EPS, 30, DBL_EPSILON))
//
+ (double)calibrateCamera:(NSArray<Mat*>*)objectPoints imagePoints:(NSArray<Mat*>*)imagePoints imageSize:(Size2i*)imageSize cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvecs:(NSMutableArray<Mat*>*)rvecs tvecs:(NSMutableArray<Mat*>*)tvecs flags:(int)flags criteria:(TermCriteria*)criteria {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePointsVector, imagePoints);
    OBJC2CV(cv::Mat, Mat, rvecsVector, rvecs);
    OBJC2CV(cv::Mat, Mat, tvecsVector, tvecs);
    double retVal = cv::calibrateCamera(objectPointsVector, imagePointsVector, imageSize.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvecsVector, tvecsVector, flags, criteria.nativeRef);
    CV2OBJC(cv::Mat, Mat, rvecsVector, rvecs);
    CV2OBJC(cv::Mat, Mat, tvecsVector, tvecs);
    return retVal;
}

+ (double)calibrateCamera:(NSArray<Mat*>*)objectPoints imagePoints:(NSArray<Mat*>*)imagePoints imageSize:(Size2i*)imageSize cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvecs:(NSMutableArray<Mat*>*)rvecs tvecs:(NSMutableArray<Mat*>*)tvecs flags:(int)flags {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePointsVector, imagePoints);
    OBJC2CV(cv::Mat, Mat, rvecsVector, rvecs);
    OBJC2CV(cv::Mat, Mat, tvecsVector, tvecs);
    double retVal = cv::calibrateCamera(objectPointsVector, imagePointsVector, imageSize.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvecsVector, tvecsVector, flags);
    CV2OBJC(cv::Mat, Mat, rvecsVector, rvecs);
    CV2OBJC(cv::Mat, Mat, tvecsVector, tvecs);
    return retVal;
}

+ (double)calibrateCamera:(NSArray<Mat*>*)objectPoints imagePoints:(NSArray<Mat*>*)imagePoints imageSize:(Size2i*)imageSize cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvecs:(NSMutableArray<Mat*>*)rvecs tvecs:(NSMutableArray<Mat*>*)tvecs {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePointsVector, imagePoints);
    OBJC2CV(cv::Mat, Mat, rvecsVector, rvecs);
    OBJC2CV(cv::Mat, Mat, tvecsVector, tvecs);
    double retVal = cv::calibrateCamera(objectPointsVector, imagePointsVector, imageSize.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvecsVector, tvecsVector);
    CV2OBJC(cv::Mat, Mat, rvecsVector, rvecs);
    CV2OBJC(cv::Mat, Mat, tvecsVector, tvecs);
    return retVal;
}


//
//  double cv::calibrateCameraRO(vector_Mat objectPoints, vector_Mat imagePoints, Size imageSize, int iFixedPoint, Mat& cameraMatrix, Mat& distCoeffs, vector_Mat& rvecs, vector_Mat& tvecs, Mat& newObjPoints, Mat& stdDeviationsIntrinsics, Mat& stdDeviationsExtrinsics, Mat& stdDeviationsObjPoints, Mat& perViewErrors, int flags = 0, TermCriteria criteria = TermCriteria( TermCriteria::COUNT + TermCriteria::EPS, 30, DBL_EPSILON))
//
+ (double)calibrateCameraROExtended:(NSArray<Mat*>*)objectPoints imagePoints:(NSArray<Mat*>*)imagePoints imageSize:(Size2i*)imageSize iFixedPoint:(int)iFixedPoint cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvecs:(NSMutableArray<Mat*>*)rvecs tvecs:(NSMutableArray<Mat*>*)tvecs newObjPoints:(Mat*)newObjPoints stdDeviationsIntrinsics:(Mat*)stdDeviationsIntrinsics stdDeviationsExtrinsics:(Mat*)stdDeviationsExtrinsics stdDeviationsObjPoints:(Mat*)stdDeviationsObjPoints perViewErrors:(Mat*)perViewErrors flags:(int)flags criteria:(TermCriteria*)criteria {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePointsVector, imagePoints);
    OBJC2CV(cv::Mat, Mat, rvecsVector, rvecs);
    OBJC2CV(cv::Mat, Mat, tvecsVector, tvecs);
    double retVal = cv::calibrateCameraRO(objectPointsVector, imagePointsVector, imageSize.nativeRef, iFixedPoint, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvecsVector, tvecsVector, newObjPoints.nativeRef, stdDeviationsIntrinsics.nativeRef, stdDeviationsExtrinsics.nativeRef, stdDeviationsObjPoints.nativeRef, perViewErrors.nativeRef, flags, criteria.nativeRef);
    CV2OBJC(cv::Mat, Mat, rvecsVector, rvecs);
    CV2OBJC(cv::Mat, Mat, tvecsVector, tvecs);
    return retVal;
}

+ (double)calibrateCameraROExtended:(NSArray<Mat*>*)objectPoints imagePoints:(NSArray<Mat*>*)imagePoints imageSize:(Size2i*)imageSize iFixedPoint:(int)iFixedPoint cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvecs:(NSMutableArray<Mat*>*)rvecs tvecs:(NSMutableArray<Mat*>*)tvecs newObjPoints:(Mat*)newObjPoints stdDeviationsIntrinsics:(Mat*)stdDeviationsIntrinsics stdDeviationsExtrinsics:(Mat*)stdDeviationsExtrinsics stdDeviationsObjPoints:(Mat*)stdDeviationsObjPoints perViewErrors:(Mat*)perViewErrors flags:(int)flags {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePointsVector, imagePoints);
    OBJC2CV(cv::Mat, Mat, rvecsVector, rvecs);
    OBJC2CV(cv::Mat, Mat, tvecsVector, tvecs);
    double retVal = cv::calibrateCameraRO(objectPointsVector, imagePointsVector, imageSize.nativeRef, iFixedPoint, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvecsVector, tvecsVector, newObjPoints.nativeRef, stdDeviationsIntrinsics.nativeRef, stdDeviationsExtrinsics.nativeRef, stdDeviationsObjPoints.nativeRef, perViewErrors.nativeRef, flags);
    CV2OBJC(cv::Mat, Mat, rvecsVector, rvecs);
    CV2OBJC(cv::Mat, Mat, tvecsVector, tvecs);
    return retVal;
}

+ (double)calibrateCameraROExtended:(NSArray<Mat*>*)objectPoints imagePoints:(NSArray<Mat*>*)imagePoints imageSize:(Size2i*)imageSize iFixedPoint:(int)iFixedPoint cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvecs:(NSMutableArray<Mat*>*)rvecs tvecs:(NSMutableArray<Mat*>*)tvecs newObjPoints:(Mat*)newObjPoints stdDeviationsIntrinsics:(Mat*)stdDeviationsIntrinsics stdDeviationsExtrinsics:(Mat*)stdDeviationsExtrinsics stdDeviationsObjPoints:(Mat*)stdDeviationsObjPoints perViewErrors:(Mat*)perViewErrors {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePointsVector, imagePoints);
    OBJC2CV(cv::Mat, Mat, rvecsVector, rvecs);
    OBJC2CV(cv::Mat, Mat, tvecsVector, tvecs);
    double retVal = cv::calibrateCameraRO(objectPointsVector, imagePointsVector, imageSize.nativeRef, iFixedPoint, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvecsVector, tvecsVector, newObjPoints.nativeRef, stdDeviationsIntrinsics.nativeRef, stdDeviationsExtrinsics.nativeRef, stdDeviationsObjPoints.nativeRef, perViewErrors.nativeRef);
    CV2OBJC(cv::Mat, Mat, rvecsVector, rvecs);
    CV2OBJC(cv::Mat, Mat, tvecsVector, tvecs);
    return retVal;
}


//
//  double cv::calibrateCameraRO(vector_Mat objectPoints, vector_Mat imagePoints, Size imageSize, int iFixedPoint, Mat& cameraMatrix, Mat& distCoeffs, vector_Mat& rvecs, vector_Mat& tvecs, Mat& newObjPoints, int flags = 0, TermCriteria criteria = TermCriteria( TermCriteria::COUNT + TermCriteria::EPS, 30, DBL_EPSILON))
//
+ (double)calibrateCameraRO:(NSArray<Mat*>*)objectPoints imagePoints:(NSArray<Mat*>*)imagePoints imageSize:(Size2i*)imageSize iFixedPoint:(int)iFixedPoint cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvecs:(NSMutableArray<Mat*>*)rvecs tvecs:(NSMutableArray<Mat*>*)tvecs newObjPoints:(Mat*)newObjPoints flags:(int)flags criteria:(TermCriteria*)criteria {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePointsVector, imagePoints);
    OBJC2CV(cv::Mat, Mat, rvecsVector, rvecs);
    OBJC2CV(cv::Mat, Mat, tvecsVector, tvecs);
    double retVal = cv::calibrateCameraRO(objectPointsVector, imagePointsVector, imageSize.nativeRef, iFixedPoint, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvecsVector, tvecsVector, newObjPoints.nativeRef, flags, criteria.nativeRef);
    CV2OBJC(cv::Mat, Mat, rvecsVector, rvecs);
    CV2OBJC(cv::Mat, Mat, tvecsVector, tvecs);
    return retVal;
}

+ (double)calibrateCameraRO:(NSArray<Mat*>*)objectPoints imagePoints:(NSArray<Mat*>*)imagePoints imageSize:(Size2i*)imageSize iFixedPoint:(int)iFixedPoint cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvecs:(NSMutableArray<Mat*>*)rvecs tvecs:(NSMutableArray<Mat*>*)tvecs newObjPoints:(Mat*)newObjPoints flags:(int)flags {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePointsVector, imagePoints);
    OBJC2CV(cv::Mat, Mat, rvecsVector, rvecs);
    OBJC2CV(cv::Mat, Mat, tvecsVector, tvecs);
    double retVal = cv::calibrateCameraRO(objectPointsVector, imagePointsVector, imageSize.nativeRef, iFixedPoint, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvecsVector, tvecsVector, newObjPoints.nativeRef, flags);
    CV2OBJC(cv::Mat, Mat, rvecsVector, rvecs);
    CV2OBJC(cv::Mat, Mat, tvecsVector, tvecs);
    return retVal;
}

+ (double)calibrateCameraRO:(NSArray<Mat*>*)objectPoints imagePoints:(NSArray<Mat*>*)imagePoints imageSize:(Size2i*)imageSize iFixedPoint:(int)iFixedPoint cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvecs:(NSMutableArray<Mat*>*)rvecs tvecs:(NSMutableArray<Mat*>*)tvecs newObjPoints:(Mat*)newObjPoints {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePointsVector, imagePoints);
    OBJC2CV(cv::Mat, Mat, rvecsVector, rvecs);
    OBJC2CV(cv::Mat, Mat, tvecsVector, tvecs);
    double retVal = cv::calibrateCameraRO(objectPointsVector, imagePointsVector, imageSize.nativeRef, iFixedPoint, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvecsVector, tvecsVector, newObjPoints.nativeRef);
    CV2OBJC(cv::Mat, Mat, rvecsVector, rvecs);
    CV2OBJC(cv::Mat, Mat, tvecsVector, tvecs);
    return retVal;
}


//
//  void cv::calibrationMatrixValues(Mat cameraMatrix, Size imageSize, double apertureWidth, double apertureHeight, double& fovx, double& fovy, double& focalLength, Point2d& principalPoint, double& aspectRatio)
//
+ (void)calibrationMatrixValues:(Mat*)cameraMatrix imageSize:(Size2i*)imageSize apertureWidth:(double)apertureWidth apertureHeight:(double)apertureHeight fovx:(double*)fovx fovy:(double*)fovy focalLength:(double*)focalLength principalPoint:(Point2d*)principalPoint aspectRatio:(double*)aspectRatio {
    cv::calibrationMatrixValues(cameraMatrix.nativeRef, imageSize.nativeRef, apertureWidth, apertureHeight, *(double*)(fovx), *(double*)(fovy), *(double*)(focalLength), principalPoint.nativeRef, *(double*)(aspectRatio));
}


//
//  double cv::stereoCalibrate(vector_Mat objectPoints, vector_Mat imagePoints1, vector_Mat imagePoints2, Mat& cameraMatrix1, Mat& distCoeffs1, Mat& cameraMatrix2, Mat& distCoeffs2, Size imageSize, Mat& R, Mat& T, Mat& E, Mat& F, vector_Mat& rvecs, vector_Mat& tvecs, Mat& perViewErrors, int flags = CALIB_FIX_INTRINSIC, TermCriteria criteria = TermCriteria(TermCriteria::COUNT+TermCriteria::EPS, 30, 1e-6))
//
+ (double)stereoCalibrateExtended:(NSArray<Mat*>*)objectPoints imagePoints1:(NSArray<Mat*>*)imagePoints1 imagePoints2:(NSArray<Mat*>*)imagePoints2 cameraMatrix1:(Mat*)cameraMatrix1 distCoeffs1:(Mat*)distCoeffs1 cameraMatrix2:(Mat*)cameraMatrix2 distCoeffs2:(Mat*)distCoeffs2 imageSize:(Size2i*)imageSize R:(Mat*)R T:(Mat*)T E:(Mat*)E F:(Mat*)F rvecs:(NSMutableArray<Mat*>*)rvecs tvecs:(NSMutableArray<Mat*>*)tvecs perViewErrors:(Mat*)perViewErrors flags:(int)flags criteria:(TermCriteria*)criteria {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePoints1Vector, imagePoints1);
    OBJC2CV(cv::Mat, Mat, imagePoints2Vector, imagePoints2);
    OBJC2CV(cv::Mat, Mat, rvecsVector, rvecs);
    OBJC2CV(cv::Mat, Mat, tvecsVector, tvecs);
    double retVal = cv::stereoCalibrate(objectPointsVector, imagePoints1Vector, imagePoints2Vector, cameraMatrix1.nativeRef, distCoeffs1.nativeRef, cameraMatrix2.nativeRef, distCoeffs2.nativeRef, imageSize.nativeRef, R.nativeRef, T.nativeRef, E.nativeRef, F.nativeRef, rvecsVector, tvecsVector, perViewErrors.nativeRef, flags, criteria.nativeRef);
    CV2OBJC(cv::Mat, Mat, rvecsVector, rvecs);
    CV2OBJC(cv::Mat, Mat, tvecsVector, tvecs);
    return retVal;
}

+ (double)stereoCalibrateExtended:(NSArray<Mat*>*)objectPoints imagePoints1:(NSArray<Mat*>*)imagePoints1 imagePoints2:(NSArray<Mat*>*)imagePoints2 cameraMatrix1:(Mat*)cameraMatrix1 distCoeffs1:(Mat*)distCoeffs1 cameraMatrix2:(Mat*)cameraMatrix2 distCoeffs2:(Mat*)distCoeffs2 imageSize:(Size2i*)imageSize R:(Mat*)R T:(Mat*)T E:(Mat*)E F:(Mat*)F rvecs:(NSMutableArray<Mat*>*)rvecs tvecs:(NSMutableArray<Mat*>*)tvecs perViewErrors:(Mat*)perViewErrors flags:(int)flags {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePoints1Vector, imagePoints1);
    OBJC2CV(cv::Mat, Mat, imagePoints2Vector, imagePoints2);
    OBJC2CV(cv::Mat, Mat, rvecsVector, rvecs);
    OBJC2CV(cv::Mat, Mat, tvecsVector, tvecs);
    double retVal = cv::stereoCalibrate(objectPointsVector, imagePoints1Vector, imagePoints2Vector, cameraMatrix1.nativeRef, distCoeffs1.nativeRef, cameraMatrix2.nativeRef, distCoeffs2.nativeRef, imageSize.nativeRef, R.nativeRef, T.nativeRef, E.nativeRef, F.nativeRef, rvecsVector, tvecsVector, perViewErrors.nativeRef, flags);
    CV2OBJC(cv::Mat, Mat, rvecsVector, rvecs);
    CV2OBJC(cv::Mat, Mat, tvecsVector, tvecs);
    return retVal;
}

+ (double)stereoCalibrateExtended:(NSArray<Mat*>*)objectPoints imagePoints1:(NSArray<Mat*>*)imagePoints1 imagePoints2:(NSArray<Mat*>*)imagePoints2 cameraMatrix1:(Mat*)cameraMatrix1 distCoeffs1:(Mat*)distCoeffs1 cameraMatrix2:(Mat*)cameraMatrix2 distCoeffs2:(Mat*)distCoeffs2 imageSize:(Size2i*)imageSize R:(Mat*)R T:(Mat*)T E:(Mat*)E F:(Mat*)F rvecs:(NSMutableArray<Mat*>*)rvecs tvecs:(NSMutableArray<Mat*>*)tvecs perViewErrors:(Mat*)perViewErrors {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePoints1Vector, imagePoints1);
    OBJC2CV(cv::Mat, Mat, imagePoints2Vector, imagePoints2);
    OBJC2CV(cv::Mat, Mat, rvecsVector, rvecs);
    OBJC2CV(cv::Mat, Mat, tvecsVector, tvecs);
    double retVal = cv::stereoCalibrate(objectPointsVector, imagePoints1Vector, imagePoints2Vector, cameraMatrix1.nativeRef, distCoeffs1.nativeRef, cameraMatrix2.nativeRef, distCoeffs2.nativeRef, imageSize.nativeRef, R.nativeRef, T.nativeRef, E.nativeRef, F.nativeRef, rvecsVector, tvecsVector, perViewErrors.nativeRef);
    CV2OBJC(cv::Mat, Mat, rvecsVector, rvecs);
    CV2OBJC(cv::Mat, Mat, tvecsVector, tvecs);
    return retVal;
}


//
//  double cv::stereoCalibrate(vector_Mat objectPoints, vector_Mat imagePoints1, vector_Mat imagePoints2, Mat& cameraMatrix1, Mat& distCoeffs1, Mat& cameraMatrix2, Mat& distCoeffs2, Size imageSize, Mat& R, Mat& T, Mat& E, Mat& F, int flags = CALIB_FIX_INTRINSIC, TermCriteria criteria = TermCriteria(TermCriteria::COUNT+TermCriteria::EPS, 30, 1e-6))
//
+ (double)stereoCalibrate:(NSArray<Mat*>*)objectPoints imagePoints1:(NSArray<Mat*>*)imagePoints1 imagePoints2:(NSArray<Mat*>*)imagePoints2 cameraMatrix1:(Mat*)cameraMatrix1 distCoeffs1:(Mat*)distCoeffs1 cameraMatrix2:(Mat*)cameraMatrix2 distCoeffs2:(Mat*)distCoeffs2 imageSize:(Size2i*)imageSize R:(Mat*)R T:(Mat*)T E:(Mat*)E F:(Mat*)F flags:(int)flags criteria:(TermCriteria*)criteria {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePoints1Vector, imagePoints1);
    OBJC2CV(cv::Mat, Mat, imagePoints2Vector, imagePoints2);
    double retVal = cv::stereoCalibrate(objectPointsVector, imagePoints1Vector, imagePoints2Vector, cameraMatrix1.nativeRef, distCoeffs1.nativeRef, cameraMatrix2.nativeRef, distCoeffs2.nativeRef, imageSize.nativeRef, R.nativeRef, T.nativeRef, E.nativeRef, F.nativeRef, flags, criteria.nativeRef);
    return retVal;
}

+ (double)stereoCalibrate:(NSArray<Mat*>*)objectPoints imagePoints1:(NSArray<Mat*>*)imagePoints1 imagePoints2:(NSArray<Mat*>*)imagePoints2 cameraMatrix1:(Mat*)cameraMatrix1 distCoeffs1:(Mat*)distCoeffs1 cameraMatrix2:(Mat*)cameraMatrix2 distCoeffs2:(Mat*)distCoeffs2 imageSize:(Size2i*)imageSize R:(Mat*)R T:(Mat*)T E:(Mat*)E F:(Mat*)F flags:(int)flags {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePoints1Vector, imagePoints1);
    OBJC2CV(cv::Mat, Mat, imagePoints2Vector, imagePoints2);
    double retVal = cv::stereoCalibrate(objectPointsVector, imagePoints1Vector, imagePoints2Vector, cameraMatrix1.nativeRef, distCoeffs1.nativeRef, cameraMatrix2.nativeRef, distCoeffs2.nativeRef, imageSize.nativeRef, R.nativeRef, T.nativeRef, E.nativeRef, F.nativeRef, flags);
    return retVal;
}

+ (double)stereoCalibrate:(NSArray<Mat*>*)objectPoints imagePoints1:(NSArray<Mat*>*)imagePoints1 imagePoints2:(NSArray<Mat*>*)imagePoints2 cameraMatrix1:(Mat*)cameraMatrix1 distCoeffs1:(Mat*)distCoeffs1 cameraMatrix2:(Mat*)cameraMatrix2 distCoeffs2:(Mat*)distCoeffs2 imageSize:(Size2i*)imageSize R:(Mat*)R T:(Mat*)T E:(Mat*)E F:(Mat*)F {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePoints1Vector, imagePoints1);
    OBJC2CV(cv::Mat, Mat, imagePoints2Vector, imagePoints2);
    double retVal = cv::stereoCalibrate(objectPointsVector, imagePoints1Vector, imagePoints2Vector, cameraMatrix1.nativeRef, distCoeffs1.nativeRef, cameraMatrix2.nativeRef, distCoeffs2.nativeRef, imageSize.nativeRef, R.nativeRef, T.nativeRef, E.nativeRef, F.nativeRef);
    return retVal;
}


//
//  double cv::stereoCalibrate(vector_Mat objectPoints, vector_Mat imagePoints1, vector_Mat imagePoints2, Mat& cameraMatrix1, Mat& distCoeffs1, Mat& cameraMatrix2, Mat& distCoeffs2, Size imageSize, Mat& R, Mat& T, Mat& E, Mat& F, Mat& perViewErrors, int flags = CALIB_FIX_INTRINSIC, TermCriteria criteria = TermCriteria(TermCriteria::COUNT+TermCriteria::EPS, 30, 1e-6))
//
+ (double)stereoCalibrate:(NSArray<Mat*>*)objectPoints imagePoints1:(NSArray<Mat*>*)imagePoints1 imagePoints2:(NSArray<Mat*>*)imagePoints2 cameraMatrix1:(Mat*)cameraMatrix1 distCoeffs1:(Mat*)distCoeffs1 cameraMatrix2:(Mat*)cameraMatrix2 distCoeffs2:(Mat*)distCoeffs2 imageSize:(Size2i*)imageSize R:(Mat*)R T:(Mat*)T E:(Mat*)E F:(Mat*)F perViewErrors:(Mat*)perViewErrors flags:(int)flags criteria:(TermCriteria*)criteria {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePoints1Vector, imagePoints1);
    OBJC2CV(cv::Mat, Mat, imagePoints2Vector, imagePoints2);
    double retVal = cv::stereoCalibrate(objectPointsVector, imagePoints1Vector, imagePoints2Vector, cameraMatrix1.nativeRef, distCoeffs1.nativeRef, cameraMatrix2.nativeRef, distCoeffs2.nativeRef, imageSize.nativeRef, R.nativeRef, T.nativeRef, E.nativeRef, F.nativeRef, perViewErrors.nativeRef, flags, criteria.nativeRef);
    return retVal;
}

+ (double)stereoCalibrate:(NSArray<Mat*>*)objectPoints imagePoints1:(NSArray<Mat*>*)imagePoints1 imagePoints2:(NSArray<Mat*>*)imagePoints2 cameraMatrix1:(Mat*)cameraMatrix1 distCoeffs1:(Mat*)distCoeffs1 cameraMatrix2:(Mat*)cameraMatrix2 distCoeffs2:(Mat*)distCoeffs2 imageSize:(Size2i*)imageSize R:(Mat*)R T:(Mat*)T E:(Mat*)E F:(Mat*)F perViewErrors:(Mat*)perViewErrors flags:(int)flags {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePoints1Vector, imagePoints1);
    OBJC2CV(cv::Mat, Mat, imagePoints2Vector, imagePoints2);
    double retVal = cv::stereoCalibrate(objectPointsVector, imagePoints1Vector, imagePoints2Vector, cameraMatrix1.nativeRef, distCoeffs1.nativeRef, cameraMatrix2.nativeRef, distCoeffs2.nativeRef, imageSize.nativeRef, R.nativeRef, T.nativeRef, E.nativeRef, F.nativeRef, perViewErrors.nativeRef, flags);
    return retVal;
}

+ (double)stereoCalibrate:(NSArray<Mat*>*)objectPoints imagePoints1:(NSArray<Mat*>*)imagePoints1 imagePoints2:(NSArray<Mat*>*)imagePoints2 cameraMatrix1:(Mat*)cameraMatrix1 distCoeffs1:(Mat*)distCoeffs1 cameraMatrix2:(Mat*)cameraMatrix2 distCoeffs2:(Mat*)distCoeffs2 imageSize:(Size2i*)imageSize R:(Mat*)R T:(Mat*)T E:(Mat*)E F:(Mat*)F perViewErrors:(Mat*)perViewErrors {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePoints1Vector, imagePoints1);
    OBJC2CV(cv::Mat, Mat, imagePoints2Vector, imagePoints2);
    double retVal = cv::stereoCalibrate(objectPointsVector, imagePoints1Vector, imagePoints2Vector, cameraMatrix1.nativeRef, distCoeffs1.nativeRef, cameraMatrix2.nativeRef, distCoeffs2.nativeRef, imageSize.nativeRef, R.nativeRef, T.nativeRef, E.nativeRef, F.nativeRef, perViewErrors.nativeRef);
    return retVal;
}


//
//  void cv::stereoRectify(Mat cameraMatrix1, Mat distCoeffs1, Mat cameraMatrix2, Mat distCoeffs2, Size imageSize, Mat R, Mat T, Mat& R1, Mat& R2, Mat& P1, Mat& P2, Mat& Q, int flags = CALIB_ZERO_DISPARITY, double alpha = -1, Size newImageSize = Size(), Rect* validPixROI1 = 0, Rect* validPixROI2 = 0)
//
+ (void)stereoRectify:(Mat*)cameraMatrix1 distCoeffs1:(Mat*)distCoeffs1 cameraMatrix2:(Mat*)cameraMatrix2 distCoeffs2:(Mat*)distCoeffs2 imageSize:(Size2i*)imageSize R:(Mat*)R T:(Mat*)T R1:(Mat*)R1 R2:(Mat*)R2 P1:(Mat*)P1 P2:(Mat*)P2 Q:(Mat*)Q flags:(int)flags alpha:(double)alpha newImageSize:(Size2i*)newImageSize validPixROI1:(Rect2i*)validPixROI1 validPixROI2:(Rect2i*)validPixROI2 {
    cv::stereoRectify(cameraMatrix1.nativeRef, distCoeffs1.nativeRef, cameraMatrix2.nativeRef, distCoeffs2.nativeRef, imageSize.nativeRef, R.nativeRef, T.nativeRef, R1.nativeRef, R2.nativeRef, P1.nativeRef, P2.nativeRef, Q.nativeRef, flags, alpha, newImageSize.nativeRef, &(validPixROI1.nativeRef), &(validPixROI2.nativeRef));
}

+ (void)stereoRectify:(Mat*)cameraMatrix1 distCoeffs1:(Mat*)distCoeffs1 cameraMatrix2:(Mat*)cameraMatrix2 distCoeffs2:(Mat*)distCoeffs2 imageSize:(Size2i*)imageSize R:(Mat*)R T:(Mat*)T R1:(Mat*)R1 R2:(Mat*)R2 P1:(Mat*)P1 P2:(Mat*)P2 Q:(Mat*)Q flags:(int)flags alpha:(double)alpha newImageSize:(Size2i*)newImageSize validPixROI1:(Rect2i*)validPixROI1 {
    cv::stereoRectify(cameraMatrix1.nativeRef, distCoeffs1.nativeRef, cameraMatrix2.nativeRef, distCoeffs2.nativeRef, imageSize.nativeRef, R.nativeRef, T.nativeRef, R1.nativeRef, R2.nativeRef, P1.nativeRef, P2.nativeRef, Q.nativeRef, flags, alpha, newImageSize.nativeRef, &(validPixROI1.nativeRef));
}

+ (void)stereoRectify:(Mat*)cameraMatrix1 distCoeffs1:(Mat*)distCoeffs1 cameraMatrix2:(Mat*)cameraMatrix2 distCoeffs2:(Mat*)distCoeffs2 imageSize:(Size2i*)imageSize R:(Mat*)R T:(Mat*)T R1:(Mat*)R1 R2:(Mat*)R2 P1:(Mat*)P1 P2:(Mat*)P2 Q:(Mat*)Q flags:(int)flags alpha:(double)alpha newImageSize:(Size2i*)newImageSize {
    cv::stereoRectify(cameraMatrix1.nativeRef, distCoeffs1.nativeRef, cameraMatrix2.nativeRef, distCoeffs2.nativeRef, imageSize.nativeRef, R.nativeRef, T.nativeRef, R1.nativeRef, R2.nativeRef, P1.nativeRef, P2.nativeRef, Q.nativeRef, flags, alpha, newImageSize.nativeRef);
}

+ (void)stereoRectify:(Mat*)cameraMatrix1 distCoeffs1:(Mat*)distCoeffs1 cameraMatrix2:(Mat*)cameraMatrix2 distCoeffs2:(Mat*)distCoeffs2 imageSize:(Size2i*)imageSize R:(Mat*)R T:(Mat*)T R1:(Mat*)R1 R2:(Mat*)R2 P1:(Mat*)P1 P2:(Mat*)P2 Q:(Mat*)Q flags:(int)flags alpha:(double)alpha {
    cv::stereoRectify(cameraMatrix1.nativeRef, distCoeffs1.nativeRef, cameraMatrix2.nativeRef, distCoeffs2.nativeRef, imageSize.nativeRef, R.nativeRef, T.nativeRef, R1.nativeRef, R2.nativeRef, P1.nativeRef, P2.nativeRef, Q.nativeRef, flags, alpha);
}

+ (void)stereoRectify:(Mat*)cameraMatrix1 distCoeffs1:(Mat*)distCoeffs1 cameraMatrix2:(Mat*)cameraMatrix2 distCoeffs2:(Mat*)distCoeffs2 imageSize:(Size2i*)imageSize R:(Mat*)R T:(Mat*)T R1:(Mat*)R1 R2:(Mat*)R2 P1:(Mat*)P1 P2:(Mat*)P2 Q:(Mat*)Q flags:(int)flags {
    cv::stereoRectify(cameraMatrix1.nativeRef, distCoeffs1.nativeRef, cameraMatrix2.nativeRef, distCoeffs2.nativeRef, imageSize.nativeRef, R.nativeRef, T.nativeRef, R1.nativeRef, R2.nativeRef, P1.nativeRef, P2.nativeRef, Q.nativeRef, flags);
}

+ (void)stereoRectify:(Mat*)cameraMatrix1 distCoeffs1:(Mat*)distCoeffs1 cameraMatrix2:(Mat*)cameraMatrix2 distCoeffs2:(Mat*)distCoeffs2 imageSize:(Size2i*)imageSize R:(Mat*)R T:(Mat*)T R1:(Mat*)R1 R2:(Mat*)R2 P1:(Mat*)P1 P2:(Mat*)P2 Q:(Mat*)Q {
    cv::stereoRectify(cameraMatrix1.nativeRef, distCoeffs1.nativeRef, cameraMatrix2.nativeRef, distCoeffs2.nativeRef, imageSize.nativeRef, R.nativeRef, T.nativeRef, R1.nativeRef, R2.nativeRef, P1.nativeRef, P2.nativeRef, Q.nativeRef);
}


//
//  bool cv::stereoRectifyUncalibrated(Mat points1, Mat points2, Mat F, Size imgSize, Mat& H1, Mat& H2, double threshold = 5)
//
+ (BOOL)stereoRectifyUncalibrated:(Mat*)points1 points2:(Mat*)points2 F:(Mat*)F imgSize:(Size2i*)imgSize H1:(Mat*)H1 H2:(Mat*)H2 threshold:(double)threshold {
    bool retVal = cv::stereoRectifyUncalibrated(points1.nativeRef, points2.nativeRef, F.nativeRef, imgSize.nativeRef, H1.nativeRef, H2.nativeRef, threshold);
    return retVal;
}

+ (BOOL)stereoRectifyUncalibrated:(Mat*)points1 points2:(Mat*)points2 F:(Mat*)F imgSize:(Size2i*)imgSize H1:(Mat*)H1 H2:(Mat*)H2 {
    bool retVal = cv::stereoRectifyUncalibrated(points1.nativeRef, points2.nativeRef, F.nativeRef, imgSize.nativeRef, H1.nativeRef, H2.nativeRef);
    return retVal;
}


//
//  float cv::rectify3Collinear(Mat cameraMatrix1, Mat distCoeffs1, Mat cameraMatrix2, Mat distCoeffs2, Mat cameraMatrix3, Mat distCoeffs3, vector_Mat imgpt1, vector_Mat imgpt3, Size imageSize, Mat R12, Mat T12, Mat R13, Mat T13, Mat& R1, Mat& R2, Mat& R3, Mat& P1, Mat& P2, Mat& P3, Mat& Q, double alpha, Size newImgSize, Rect* roi1, Rect* roi2, int flags)
//
+ (float)rectify3Collinear:(Mat*)cameraMatrix1 distCoeffs1:(Mat*)distCoeffs1 cameraMatrix2:(Mat*)cameraMatrix2 distCoeffs2:(Mat*)distCoeffs2 cameraMatrix3:(Mat*)cameraMatrix3 distCoeffs3:(Mat*)distCoeffs3 imgpt1:(NSArray<Mat*>*)imgpt1 imgpt3:(NSArray<Mat*>*)imgpt3 imageSize:(Size2i*)imageSize R12:(Mat*)R12 T12:(Mat*)T12 R13:(Mat*)R13 T13:(Mat*)T13 R1:(Mat*)R1 R2:(Mat*)R2 R3:(Mat*)R3 P1:(Mat*)P1 P2:(Mat*)P2 P3:(Mat*)P3 Q:(Mat*)Q alpha:(double)alpha newImgSize:(Size2i*)newImgSize roi1:(Rect2i*)roi1 roi2:(Rect2i*)roi2 flags:(int)flags {
    OBJC2CV(cv::Mat, Mat, imgpt1Vector, imgpt1);
    OBJC2CV(cv::Mat, Mat, imgpt3Vector, imgpt3);
    float retVal = cv::rectify3Collinear(cameraMatrix1.nativeRef, distCoeffs1.nativeRef, cameraMatrix2.nativeRef, distCoeffs2.nativeRef, cameraMatrix3.nativeRef, distCoeffs3.nativeRef, imgpt1Vector, imgpt3Vector, imageSize.nativeRef, R12.nativeRef, T12.nativeRef, R13.nativeRef, T13.nativeRef, R1.nativeRef, R2.nativeRef, R3.nativeRef, P1.nativeRef, P2.nativeRef, P3.nativeRef, Q.nativeRef, alpha, newImgSize.nativeRef, &(roi1.nativeRef), &(roi2.nativeRef), flags);
    return retVal;
}


//
//  Mat cv::getOptimalNewCameraMatrix(Mat cameraMatrix, Mat distCoeffs, Size imageSize, double alpha, Size newImgSize = Size(), Rect* validPixROI = 0, bool centerPrincipalPoint = false)
//
+ (Mat*)getOptimalNewCameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs imageSize:(Size2i*)imageSize alpha:(double)alpha newImgSize:(Size2i*)newImgSize validPixROI:(Rect2i*)validPixROI centerPrincipalPoint:(BOOL)centerPrincipalPoint {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::getOptimalNewCameraMatrix(cameraMatrix.nativeRef, distCoeffs.nativeRef, imageSize.nativeRef, alpha, newImgSize.nativeRef, &(validPixROI.nativeRef), (bool)centerPrincipalPoint));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)getOptimalNewCameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs imageSize:(Size2i*)imageSize alpha:(double)alpha newImgSize:(Size2i*)newImgSize validPixROI:(Rect2i*)validPixROI {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::getOptimalNewCameraMatrix(cameraMatrix.nativeRef, distCoeffs.nativeRef, imageSize.nativeRef, alpha, newImgSize.nativeRef, &(validPixROI.nativeRef)));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)getOptimalNewCameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs imageSize:(Size2i*)imageSize alpha:(double)alpha newImgSize:(Size2i*)newImgSize {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::getOptimalNewCameraMatrix(cameraMatrix.nativeRef, distCoeffs.nativeRef, imageSize.nativeRef, alpha, newImgSize.nativeRef));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)getOptimalNewCameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs imageSize:(Size2i*)imageSize alpha:(double)alpha {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::getOptimalNewCameraMatrix(cameraMatrix.nativeRef, distCoeffs.nativeRef, imageSize.nativeRef, alpha));
    return [Mat fromNativePtr:retVal];
}


//
//  void cv::calibrateHandEye(vector_Mat R_gripper2base, vector_Mat t_gripper2base, vector_Mat R_target2cam, vector_Mat t_target2cam, Mat& R_cam2gripper, Mat& t_cam2gripper, HandEyeCalibrationMethod method = CALIB_HAND_EYE_TSAI)
//
+ (void)calibrateHandEye:(NSArray<Mat*>*)R_gripper2base t_gripper2base:(NSArray<Mat*>*)t_gripper2base R_target2cam:(NSArray<Mat*>*)R_target2cam t_target2cam:(NSArray<Mat*>*)t_target2cam R_cam2gripper:(Mat*)R_cam2gripper t_cam2gripper:(Mat*)t_cam2gripper method:(HandEyeCalibrationMethod)method {
    OBJC2CV(cv::Mat, Mat, R_gripper2baseVector, R_gripper2base);
    OBJC2CV(cv::Mat, Mat, t_gripper2baseVector, t_gripper2base);
    OBJC2CV(cv::Mat, Mat, R_target2camVector, R_target2cam);
    OBJC2CV(cv::Mat, Mat, t_target2camVector, t_target2cam);
    cv::calibrateHandEye(R_gripper2baseVector, t_gripper2baseVector, R_target2camVector, t_target2camVector, R_cam2gripper.nativeRef, t_cam2gripper.nativeRef, (cv::HandEyeCalibrationMethod)method);
}

+ (void)calibrateHandEye:(NSArray<Mat*>*)R_gripper2base t_gripper2base:(NSArray<Mat*>*)t_gripper2base R_target2cam:(NSArray<Mat*>*)R_target2cam t_target2cam:(NSArray<Mat*>*)t_target2cam R_cam2gripper:(Mat*)R_cam2gripper t_cam2gripper:(Mat*)t_cam2gripper {
    OBJC2CV(cv::Mat, Mat, R_gripper2baseVector, R_gripper2base);
    OBJC2CV(cv::Mat, Mat, t_gripper2baseVector, t_gripper2base);
    OBJC2CV(cv::Mat, Mat, R_target2camVector, R_target2cam);
    OBJC2CV(cv::Mat, Mat, t_target2camVector, t_target2cam);
    cv::calibrateHandEye(R_gripper2baseVector, t_gripper2baseVector, R_target2camVector, t_target2camVector, R_cam2gripper.nativeRef, t_cam2gripper.nativeRef);
}


//
//  void cv::calibrateRobotWorldHandEye(vector_Mat R_world2cam, vector_Mat t_world2cam, vector_Mat R_base2gripper, vector_Mat t_base2gripper, Mat& R_base2world, Mat& t_base2world, Mat& R_gripper2cam, Mat& t_gripper2cam, RobotWorldHandEyeCalibrationMethod method = CALIB_ROBOT_WORLD_HAND_EYE_SHAH)
//
+ (void)calibrateRobotWorldHandEye:(NSArray<Mat*>*)R_world2cam t_world2cam:(NSArray<Mat*>*)t_world2cam R_base2gripper:(NSArray<Mat*>*)R_base2gripper t_base2gripper:(NSArray<Mat*>*)t_base2gripper R_base2world:(Mat*)R_base2world t_base2world:(Mat*)t_base2world R_gripper2cam:(Mat*)R_gripper2cam t_gripper2cam:(Mat*)t_gripper2cam method:(RobotWorldHandEyeCalibrationMethod)method {
    OBJC2CV(cv::Mat, Mat, R_world2camVector, R_world2cam);
    OBJC2CV(cv::Mat, Mat, t_world2camVector, t_world2cam);
    OBJC2CV(cv::Mat, Mat, R_base2gripperVector, R_base2gripper);
    OBJC2CV(cv::Mat, Mat, t_base2gripperVector, t_base2gripper);
    cv::calibrateRobotWorldHandEye(R_world2camVector, t_world2camVector, R_base2gripperVector, t_base2gripperVector, R_base2world.nativeRef, t_base2world.nativeRef, R_gripper2cam.nativeRef, t_gripper2cam.nativeRef, (cv::RobotWorldHandEyeCalibrationMethod)method);
}

+ (void)calibrateRobotWorldHandEye:(NSArray<Mat*>*)R_world2cam t_world2cam:(NSArray<Mat*>*)t_world2cam R_base2gripper:(NSArray<Mat*>*)R_base2gripper t_base2gripper:(NSArray<Mat*>*)t_base2gripper R_base2world:(Mat*)R_base2world t_base2world:(Mat*)t_base2world R_gripper2cam:(Mat*)R_gripper2cam t_gripper2cam:(Mat*)t_gripper2cam {
    OBJC2CV(cv::Mat, Mat, R_world2camVector, R_world2cam);
    OBJC2CV(cv::Mat, Mat, t_world2camVector, t_world2cam);
    OBJC2CV(cv::Mat, Mat, R_base2gripperVector, R_base2gripper);
    OBJC2CV(cv::Mat, Mat, t_base2gripperVector, t_base2gripper);
    cv::calibrateRobotWorldHandEye(R_world2camVector, t_world2camVector, R_base2gripperVector, t_base2gripperVector, R_base2world.nativeRef, t_base2world.nativeRef, R_gripper2cam.nativeRef, t_gripper2cam.nativeRef);
}


//
//  void cv::convertPointsToHomogeneous(Mat src, Mat& dst)
//
+ (void)convertPointsToHomogeneous:(Mat*)src dst:(Mat*)dst {
    cv::convertPointsToHomogeneous(src.nativeRef, dst.nativeRef);
}


//
//  void cv::convertPointsFromHomogeneous(Mat src, Mat& dst)
//
+ (void)convertPointsFromHomogeneous:(Mat*)src dst:(Mat*)dst {
    cv::convertPointsFromHomogeneous(src.nativeRef, dst.nativeRef);
}


//
//  Mat cv::findFundamentalMat(Mat points1, Mat points2, int method, double ransacReprojThreshold, double confidence, int maxIters, Mat& mask = Mat())
//
+ (Mat*)findFundamentalMat:(Mat*)points1 points2:(Mat*)points2 method:(int)method ransacReprojThreshold:(double)ransacReprojThreshold confidence:(double)confidence maxIters:(int)maxIters mask:(Mat*)mask {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findFundamentalMat(points1.nativeRef, points2.nativeRef, method, ransacReprojThreshold, confidence, maxIters, mask.nativeRef));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)findFundamentalMat:(Mat*)points1 points2:(Mat*)points2 method:(int)method ransacReprojThreshold:(double)ransacReprojThreshold confidence:(double)confidence maxIters:(int)maxIters {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findFundamentalMat(points1.nativeRef, points2.nativeRef, method, ransacReprojThreshold, confidence, maxIters));
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::findFundamentalMat(Mat points1, Mat points2, int method = FM_RANSAC, double ransacReprojThreshold = 3., double confidence = 0.99, Mat& mask = Mat())
//
+ (Mat*)findFundamentalMat:(Mat*)points1 points2:(Mat*)points2 method:(int)method ransacReprojThreshold:(double)ransacReprojThreshold confidence:(double)confidence mask:(Mat*)mask {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findFundamentalMat(points1.nativeRef, points2.nativeRef, method, ransacReprojThreshold, confidence, mask.nativeRef));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)findFundamentalMat:(Mat*)points1 points2:(Mat*)points2 method:(int)method ransacReprojThreshold:(double)ransacReprojThreshold confidence:(double)confidence {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findFundamentalMat(points1.nativeRef, points2.nativeRef, method, ransacReprojThreshold, confidence));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)findFundamentalMat:(Mat*)points1 points2:(Mat*)points2 method:(int)method ransacReprojThreshold:(double)ransacReprojThreshold {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findFundamentalMat(points1.nativeRef, points2.nativeRef, method, ransacReprojThreshold));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)findFundamentalMat:(Mat*)points1 points2:(Mat*)points2 method:(int)method {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findFundamentalMat(points1.nativeRef, points2.nativeRef, method));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)findFundamentalMat:(Mat*)points1 points2:(Mat*)points2 {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findFundamentalMat(points1.nativeRef, points2.nativeRef));
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::findFundamentalMat(Mat points1, Mat points2, Mat& mask, UsacParams params)
//
+ (Mat*)findFundamentalMat:(Mat*)points1 points2:(Mat*)points2 mask:(Mat*)mask params:(UsacParams*)params {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findFundamentalMat(points1.nativeRef, points2.nativeRef, mask.nativeRef, *(params.nativePtr)));
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::findEssentialMat(Mat points1, Mat points2, Mat cameraMatrix, int method = RANSAC, double prob = 0.999, double threshold = 1.0, int maxIters = 1000, Mat& mask = Mat())
//
+ (Mat*)findEssentialMat:(Mat*)points1 points2:(Mat*)points2 cameraMatrix:(Mat*)cameraMatrix method:(int)method prob:(double)prob threshold:(double)threshold maxIters:(int)maxIters mask:(Mat*)mask {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findEssentialMat(points1.nativeRef, points2.nativeRef, cameraMatrix.nativeRef, method, prob, threshold, maxIters, mask.nativeRef));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)findEssentialMat:(Mat*)points1 points2:(Mat*)points2 cameraMatrix:(Mat*)cameraMatrix method:(int)method prob:(double)prob threshold:(double)threshold maxIters:(int)maxIters {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findEssentialMat(points1.nativeRef, points2.nativeRef, cameraMatrix.nativeRef, method, prob, threshold, maxIters));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)findEssentialMat:(Mat*)points1 points2:(Mat*)points2 cameraMatrix:(Mat*)cameraMatrix method:(int)method prob:(double)prob threshold:(double)threshold {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findEssentialMat(points1.nativeRef, points2.nativeRef, cameraMatrix.nativeRef, method, prob, threshold));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)findEssentialMat:(Mat*)points1 points2:(Mat*)points2 cameraMatrix:(Mat*)cameraMatrix method:(int)method prob:(double)prob {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findEssentialMat(points1.nativeRef, points2.nativeRef, cameraMatrix.nativeRef, method, prob));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)findEssentialMat:(Mat*)points1 points2:(Mat*)points2 cameraMatrix:(Mat*)cameraMatrix method:(int)method {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findEssentialMat(points1.nativeRef, points2.nativeRef, cameraMatrix.nativeRef, method));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)findEssentialMat:(Mat*)points1 points2:(Mat*)points2 cameraMatrix:(Mat*)cameraMatrix {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findEssentialMat(points1.nativeRef, points2.nativeRef, cameraMatrix.nativeRef));
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::findEssentialMat(Mat points1, Mat points2, double focal = 1.0, Point2d pp = Point2d(0, 0), int method = RANSAC, double prob = 0.999, double threshold = 1.0, int maxIters = 1000, Mat& mask = Mat())
//
+ (Mat*)findEssentialMat:(Mat*)points1 points2:(Mat*)points2 focal:(double)focal pp:(Point2d*)pp method:(int)method prob:(double)prob threshold:(double)threshold maxIters:(int)maxIters mask:(Mat*)mask {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findEssentialMat(points1.nativeRef, points2.nativeRef, focal, pp.nativeRef, method, prob, threshold, maxIters, mask.nativeRef));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)findEssentialMat:(Mat*)points1 points2:(Mat*)points2 focal:(double)focal pp:(Point2d*)pp method:(int)method prob:(double)prob threshold:(double)threshold maxIters:(int)maxIters {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findEssentialMat(points1.nativeRef, points2.nativeRef, focal, pp.nativeRef, method, prob, threshold, maxIters));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)findEssentialMat:(Mat*)points1 points2:(Mat*)points2 focal:(double)focal pp:(Point2d*)pp method:(int)method prob:(double)prob threshold:(double)threshold {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findEssentialMat(points1.nativeRef, points2.nativeRef, focal, pp.nativeRef, method, prob, threshold));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)findEssentialMat:(Mat*)points1 points2:(Mat*)points2 focal:(double)focal pp:(Point2d*)pp method:(int)method prob:(double)prob {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findEssentialMat(points1.nativeRef, points2.nativeRef, focal, pp.nativeRef, method, prob));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)findEssentialMat:(Mat*)points1 points2:(Mat*)points2 focal:(double)focal pp:(Point2d*)pp method:(int)method {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findEssentialMat(points1.nativeRef, points2.nativeRef, focal, pp.nativeRef, method));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)findEssentialMat:(Mat*)points1 points2:(Mat*)points2 focal:(double)focal pp:(Point2d*)pp {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findEssentialMat(points1.nativeRef, points2.nativeRef, focal, pp.nativeRef));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)findEssentialMat:(Mat*)points1 points2:(Mat*)points2 focal:(double)focal {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findEssentialMat(points1.nativeRef, points2.nativeRef, focal));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)findEssentialMat:(Mat*)points1 points2:(Mat*)points2 {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findEssentialMat(points1.nativeRef, points2.nativeRef));
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::findEssentialMat(Mat points1, Mat points2, Mat cameraMatrix1, Mat distCoeffs1, Mat cameraMatrix2, Mat distCoeffs2, int method = RANSAC, double prob = 0.999, double threshold = 1.0, Mat& mask = Mat())
//
+ (Mat*)findEssentialMat:(Mat*)points1 points2:(Mat*)points2 cameraMatrix1:(Mat*)cameraMatrix1 distCoeffs1:(Mat*)distCoeffs1 cameraMatrix2:(Mat*)cameraMatrix2 distCoeffs2:(Mat*)distCoeffs2 method:(int)method prob:(double)prob threshold:(double)threshold mask:(Mat*)mask {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findEssentialMat(points1.nativeRef, points2.nativeRef, cameraMatrix1.nativeRef, distCoeffs1.nativeRef, cameraMatrix2.nativeRef, distCoeffs2.nativeRef, method, prob, threshold, mask.nativeRef));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)findEssentialMat:(Mat*)points1 points2:(Mat*)points2 cameraMatrix1:(Mat*)cameraMatrix1 distCoeffs1:(Mat*)distCoeffs1 cameraMatrix2:(Mat*)cameraMatrix2 distCoeffs2:(Mat*)distCoeffs2 method:(int)method prob:(double)prob threshold:(double)threshold {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findEssentialMat(points1.nativeRef, points2.nativeRef, cameraMatrix1.nativeRef, distCoeffs1.nativeRef, cameraMatrix2.nativeRef, distCoeffs2.nativeRef, method, prob, threshold));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)findEssentialMat:(Mat*)points1 points2:(Mat*)points2 cameraMatrix1:(Mat*)cameraMatrix1 distCoeffs1:(Mat*)distCoeffs1 cameraMatrix2:(Mat*)cameraMatrix2 distCoeffs2:(Mat*)distCoeffs2 method:(int)method prob:(double)prob {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findEssentialMat(points1.nativeRef, points2.nativeRef, cameraMatrix1.nativeRef, distCoeffs1.nativeRef, cameraMatrix2.nativeRef, distCoeffs2.nativeRef, method, prob));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)findEssentialMat:(Mat*)points1 points2:(Mat*)points2 cameraMatrix1:(Mat*)cameraMatrix1 distCoeffs1:(Mat*)distCoeffs1 cameraMatrix2:(Mat*)cameraMatrix2 distCoeffs2:(Mat*)distCoeffs2 method:(int)method {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findEssentialMat(points1.nativeRef, points2.nativeRef, cameraMatrix1.nativeRef, distCoeffs1.nativeRef, cameraMatrix2.nativeRef, distCoeffs2.nativeRef, method));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)findEssentialMat:(Mat*)points1 points2:(Mat*)points2 cameraMatrix1:(Mat*)cameraMatrix1 distCoeffs1:(Mat*)distCoeffs1 cameraMatrix2:(Mat*)cameraMatrix2 distCoeffs2:(Mat*)distCoeffs2 {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findEssentialMat(points1.nativeRef, points2.nativeRef, cameraMatrix1.nativeRef, distCoeffs1.nativeRef, cameraMatrix2.nativeRef, distCoeffs2.nativeRef));
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::findEssentialMat(Mat points1, Mat points2, Mat cameraMatrix1, Mat cameraMatrix2, Mat dist_coeff1, Mat dist_coeff2, Mat& mask, UsacParams params)
//
+ (Mat*)findEssentialMat:(Mat*)points1 points2:(Mat*)points2 cameraMatrix1:(Mat*)cameraMatrix1 cameraMatrix2:(Mat*)cameraMatrix2 dist_coeff1:(Mat*)dist_coeff1 dist_coeff2:(Mat*)dist_coeff2 mask:(Mat*)mask params:(UsacParams*)params {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::findEssentialMat(points1.nativeRef, points2.nativeRef, cameraMatrix1.nativeRef, cameraMatrix2.nativeRef, dist_coeff1.nativeRef, dist_coeff2.nativeRef, mask.nativeRef, *(params.nativePtr)));
    return [Mat fromNativePtr:retVal];
}


//
//  void cv::decomposeEssentialMat(Mat E, Mat& R1, Mat& R2, Mat& t)
//
+ (void)decomposeEssentialMat:(Mat*)E R1:(Mat*)R1 R2:(Mat*)R2 t:(Mat*)t {
    cv::decomposeEssentialMat(E.nativeRef, R1.nativeRef, R2.nativeRef, t.nativeRef);
}


//
//  int cv::recoverPose(Mat points1, Mat points2, Mat cameraMatrix1, Mat distCoeffs1, Mat cameraMatrix2, Mat distCoeffs2, Mat& E, Mat& R, Mat& t, int method = cv::RANSAC, double prob = 0.999, double threshold = 1.0, Mat& mask = Mat())
//
+ (int)recoverPose:(Mat*)points1 points2:(Mat*)points2 cameraMatrix1:(Mat*)cameraMatrix1 distCoeffs1:(Mat*)distCoeffs1 cameraMatrix2:(Mat*)cameraMatrix2 distCoeffs2:(Mat*)distCoeffs2 E:(Mat*)E R:(Mat*)R t:(Mat*)t method:(int)method prob:(double)prob threshold:(double)threshold mask:(Mat*)mask {
    int retVal = cv::recoverPose(points1.nativeRef, points2.nativeRef, cameraMatrix1.nativeRef, distCoeffs1.nativeRef, cameraMatrix2.nativeRef, distCoeffs2.nativeRef, E.nativeRef, R.nativeRef, t.nativeRef, method, prob, threshold, mask.nativeRef);
    return retVal;
}

+ (int)recoverPose:(Mat*)points1 points2:(Mat*)points2 cameraMatrix1:(Mat*)cameraMatrix1 distCoeffs1:(Mat*)distCoeffs1 cameraMatrix2:(Mat*)cameraMatrix2 distCoeffs2:(Mat*)distCoeffs2 E:(Mat*)E R:(Mat*)R t:(Mat*)t method:(int)method prob:(double)prob threshold:(double)threshold {
    int retVal = cv::recoverPose(points1.nativeRef, points2.nativeRef, cameraMatrix1.nativeRef, distCoeffs1.nativeRef, cameraMatrix2.nativeRef, distCoeffs2.nativeRef, E.nativeRef, R.nativeRef, t.nativeRef, method, prob, threshold);
    return retVal;
}

+ (int)recoverPose:(Mat*)points1 points2:(Mat*)points2 cameraMatrix1:(Mat*)cameraMatrix1 distCoeffs1:(Mat*)distCoeffs1 cameraMatrix2:(Mat*)cameraMatrix2 distCoeffs2:(Mat*)distCoeffs2 E:(Mat*)E R:(Mat*)R t:(Mat*)t method:(int)method prob:(double)prob {
    int retVal = cv::recoverPose(points1.nativeRef, points2.nativeRef, cameraMatrix1.nativeRef, distCoeffs1.nativeRef, cameraMatrix2.nativeRef, distCoeffs2.nativeRef, E.nativeRef, R.nativeRef, t.nativeRef, method, prob);
    return retVal;
}

+ (int)recoverPose:(Mat*)points1 points2:(Mat*)points2 cameraMatrix1:(Mat*)cameraMatrix1 distCoeffs1:(Mat*)distCoeffs1 cameraMatrix2:(Mat*)cameraMatrix2 distCoeffs2:(Mat*)distCoeffs2 E:(Mat*)E R:(Mat*)R t:(Mat*)t method:(int)method {
    int retVal = cv::recoverPose(points1.nativeRef, points2.nativeRef, cameraMatrix1.nativeRef, distCoeffs1.nativeRef, cameraMatrix2.nativeRef, distCoeffs2.nativeRef, E.nativeRef, R.nativeRef, t.nativeRef, method);
    return retVal;
}

+ (int)recoverPose:(Mat*)points1 points2:(Mat*)points2 cameraMatrix1:(Mat*)cameraMatrix1 distCoeffs1:(Mat*)distCoeffs1 cameraMatrix2:(Mat*)cameraMatrix2 distCoeffs2:(Mat*)distCoeffs2 E:(Mat*)E R:(Mat*)R t:(Mat*)t {
    int retVal = cv::recoverPose(points1.nativeRef, points2.nativeRef, cameraMatrix1.nativeRef, distCoeffs1.nativeRef, cameraMatrix2.nativeRef, distCoeffs2.nativeRef, E.nativeRef, R.nativeRef, t.nativeRef);
    return retVal;
}


//
//  int cv::recoverPose(Mat E, Mat points1, Mat points2, Mat cameraMatrix, Mat& R, Mat& t, Mat& mask = Mat())
//
+ (int)recoverPose:(Mat*)E points1:(Mat*)points1 points2:(Mat*)points2 cameraMatrix:(Mat*)cameraMatrix R:(Mat*)R t:(Mat*)t mask:(Mat*)mask {
    int retVal = cv::recoverPose(E.nativeRef, points1.nativeRef, points2.nativeRef, cameraMatrix.nativeRef, R.nativeRef, t.nativeRef, mask.nativeRef);
    return retVal;
}

+ (int)recoverPose:(Mat*)E points1:(Mat*)points1 points2:(Mat*)points2 cameraMatrix:(Mat*)cameraMatrix R:(Mat*)R t:(Mat*)t {
    int retVal = cv::recoverPose(E.nativeRef, points1.nativeRef, points2.nativeRef, cameraMatrix.nativeRef, R.nativeRef, t.nativeRef);
    return retVal;
}


//
//  int cv::recoverPose(Mat E, Mat points1, Mat points2, Mat& R, Mat& t, double focal = 1.0, Point2d pp = Point2d(0, 0), Mat& mask = Mat())
//
+ (int)recoverPose:(Mat*)E points1:(Mat*)points1 points2:(Mat*)points2 R:(Mat*)R t:(Mat*)t focal:(double)focal pp:(Point2d*)pp mask:(Mat*)mask {
    int retVal = cv::recoverPose(E.nativeRef, points1.nativeRef, points2.nativeRef, R.nativeRef, t.nativeRef, focal, pp.nativeRef, mask.nativeRef);
    return retVal;
}

+ (int)recoverPose:(Mat*)E points1:(Mat*)points1 points2:(Mat*)points2 R:(Mat*)R t:(Mat*)t focal:(double)focal pp:(Point2d*)pp {
    int retVal = cv::recoverPose(E.nativeRef, points1.nativeRef, points2.nativeRef, R.nativeRef, t.nativeRef, focal, pp.nativeRef);
    return retVal;
}

+ (int)recoverPose:(Mat*)E points1:(Mat*)points1 points2:(Mat*)points2 R:(Mat*)R t:(Mat*)t focal:(double)focal {
    int retVal = cv::recoverPose(E.nativeRef, points1.nativeRef, points2.nativeRef, R.nativeRef, t.nativeRef, focal);
    return retVal;
}

+ (int)recoverPose:(Mat*)E points1:(Mat*)points1 points2:(Mat*)points2 R:(Mat*)R t:(Mat*)t {
    int retVal = cv::recoverPose(E.nativeRef, points1.nativeRef, points2.nativeRef, R.nativeRef, t.nativeRef);
    return retVal;
}


//
//  int cv::recoverPose(Mat E, Mat points1, Mat points2, Mat cameraMatrix, Mat& R, Mat& t, double distanceThresh, Mat& mask = Mat(), Mat& triangulatedPoints = Mat())
//
+ (int)recoverPose:(Mat*)E points1:(Mat*)points1 points2:(Mat*)points2 cameraMatrix:(Mat*)cameraMatrix R:(Mat*)R t:(Mat*)t distanceThresh:(double)distanceThresh mask:(Mat*)mask triangulatedPoints:(Mat*)triangulatedPoints {
    int retVal = cv::recoverPose(E.nativeRef, points1.nativeRef, points2.nativeRef, cameraMatrix.nativeRef, R.nativeRef, t.nativeRef, distanceThresh, mask.nativeRef, triangulatedPoints.nativeRef);
    return retVal;
}

+ (int)recoverPose:(Mat*)E points1:(Mat*)points1 points2:(Mat*)points2 cameraMatrix:(Mat*)cameraMatrix R:(Mat*)R t:(Mat*)t distanceThresh:(double)distanceThresh mask:(Mat*)mask {
    int retVal = cv::recoverPose(E.nativeRef, points1.nativeRef, points2.nativeRef, cameraMatrix.nativeRef, R.nativeRef, t.nativeRef, distanceThresh, mask.nativeRef);
    return retVal;
}

+ (int)recoverPose:(Mat*)E points1:(Mat*)points1 points2:(Mat*)points2 cameraMatrix:(Mat*)cameraMatrix R:(Mat*)R t:(Mat*)t distanceThresh:(double)distanceThresh {
    int retVal = cv::recoverPose(E.nativeRef, points1.nativeRef, points2.nativeRef, cameraMatrix.nativeRef, R.nativeRef, t.nativeRef, distanceThresh);
    return retVal;
}


//
//  void cv::computeCorrespondEpilines(Mat points, int whichImage, Mat F, Mat& lines)
//
+ (void)computeCorrespondEpilines:(Mat*)points whichImage:(int)whichImage F:(Mat*)F lines:(Mat*)lines {
    cv::computeCorrespondEpilines(points.nativeRef, whichImage, F.nativeRef, lines.nativeRef);
}


//
//  void cv::triangulatePoints(Mat projMatr1, Mat projMatr2, Mat projPoints1, Mat projPoints2, Mat& points4D)
//
+ (void)triangulatePoints:(Mat*)projMatr1 projMatr2:(Mat*)projMatr2 projPoints1:(Mat*)projPoints1 projPoints2:(Mat*)projPoints2 points4D:(Mat*)points4D {
    cv::triangulatePoints(projMatr1.nativeRef, projMatr2.nativeRef, projPoints1.nativeRef, projPoints2.nativeRef, points4D.nativeRef);
}


//
//  void cv::correctMatches(Mat F, Mat points1, Mat points2, Mat& newPoints1, Mat& newPoints2)
//
+ (void)correctMatches:(Mat*)F points1:(Mat*)points1 points2:(Mat*)points2 newPoints1:(Mat*)newPoints1 newPoints2:(Mat*)newPoints2 {
    cv::correctMatches(F.nativeRef, points1.nativeRef, points2.nativeRef, newPoints1.nativeRef, newPoints2.nativeRef);
}


//
//  void cv::filterSpeckles(Mat& img, double newVal, int maxSpeckleSize, double maxDiff, Mat& buf = Mat())
//
+ (void)filterSpeckles:(Mat*)img newVal:(double)newVal maxSpeckleSize:(int)maxSpeckleSize maxDiff:(double)maxDiff buf:(Mat*)buf {
    cv::filterSpeckles(img.nativeRef, newVal, maxSpeckleSize, maxDiff, buf.nativeRef);
}

+ (void)filterSpeckles:(Mat*)img newVal:(double)newVal maxSpeckleSize:(int)maxSpeckleSize maxDiff:(double)maxDiff {
    cv::filterSpeckles(img.nativeRef, newVal, maxSpeckleSize, maxDiff);
}


//
//  Rect cv::getValidDisparityROI(Rect roi1, Rect roi2, int minDisparity, int numberOfDisparities, int blockSize)
//
+ (Rect2i*)getValidDisparityROI:(Rect2i*)roi1 roi2:(Rect2i*)roi2 minDisparity:(int)minDisparity numberOfDisparities:(int)numberOfDisparities blockSize:(int)blockSize {
    cv::Rect retVal = cv::getValidDisparityROI(roi1.nativeRef, roi2.nativeRef, minDisparity, numberOfDisparities, blockSize);
    return [Rect2i fromNative:retVal];
}


//
//  void cv::validateDisparity(Mat& disparity, Mat cost, int minDisparity, int numberOfDisparities, int disp12MaxDisp = 1)
//
+ (void)validateDisparity:(Mat*)disparity cost:(Mat*)cost minDisparity:(int)minDisparity numberOfDisparities:(int)numberOfDisparities disp12MaxDisp:(int)disp12MaxDisp {
    cv::validateDisparity(disparity.nativeRef, cost.nativeRef, minDisparity, numberOfDisparities, disp12MaxDisp);
}

+ (void)validateDisparity:(Mat*)disparity cost:(Mat*)cost minDisparity:(int)minDisparity numberOfDisparities:(int)numberOfDisparities {
    cv::validateDisparity(disparity.nativeRef, cost.nativeRef, minDisparity, numberOfDisparities);
}


//
//  void cv::reprojectImageTo3D(Mat disparity, Mat& _3dImage, Mat Q, bool handleMissingValues = false, int ddepth = -1)
//
+ (void)reprojectImageTo3D:(Mat*)disparity _3dImage:(Mat*)_3dImage Q:(Mat*)Q handleMissingValues:(BOOL)handleMissingValues ddepth:(int)ddepth {
    cv::reprojectImageTo3D(disparity.nativeRef, _3dImage.nativeRef, Q.nativeRef, (bool)handleMissingValues, ddepth);
}

+ (void)reprojectImageTo3D:(Mat*)disparity _3dImage:(Mat*)_3dImage Q:(Mat*)Q handleMissingValues:(BOOL)handleMissingValues {
    cv::reprojectImageTo3D(disparity.nativeRef, _3dImage.nativeRef, Q.nativeRef, (bool)handleMissingValues);
}

+ (void)reprojectImageTo3D:(Mat*)disparity _3dImage:(Mat*)_3dImage Q:(Mat*)Q {
    cv::reprojectImageTo3D(disparity.nativeRef, _3dImage.nativeRef, Q.nativeRef);
}


//
//  double cv::sampsonDistance(Mat pt1, Mat pt2, Mat F)
//
+ (double)sampsonDistance:(Mat*)pt1 pt2:(Mat*)pt2 F:(Mat*)F {
    double retVal = cv::sampsonDistance(pt1.nativeRef, pt2.nativeRef, F.nativeRef);
    return retVal;
}


//
//  int cv::estimateAffine3D(Mat src, Mat dst, Mat& out, Mat& inliers, double ransacThreshold = 3, double confidence = 0.99)
//
+ (int)estimateAffine3D:(Mat*)src dst:(Mat*)dst out:(Mat*)out inliers:(Mat*)inliers ransacThreshold:(double)ransacThreshold confidence:(double)confidence {
    int retVal = cv::estimateAffine3D(src.nativeRef, dst.nativeRef, out.nativeRef, inliers.nativeRef, ransacThreshold, confidence);
    return retVal;
}

+ (int)estimateAffine3D:(Mat*)src dst:(Mat*)dst out:(Mat*)out inliers:(Mat*)inliers ransacThreshold:(double)ransacThreshold {
    int retVal = cv::estimateAffine3D(src.nativeRef, dst.nativeRef, out.nativeRef, inliers.nativeRef, ransacThreshold);
    return retVal;
}

+ (int)estimateAffine3D:(Mat*)src dst:(Mat*)dst out:(Mat*)out inliers:(Mat*)inliers {
    int retVal = cv::estimateAffine3D(src.nativeRef, dst.nativeRef, out.nativeRef, inliers.nativeRef);
    return retVal;
}


//
//  Mat cv::estimateAffine3D(Mat src, Mat dst, double* scale = nullptr, bool force_rotation = true)
//
+ (Mat*)estimateAffine3D:(Mat*)src dst:(Mat*)dst scale:(double*)scale force_rotation:(BOOL)force_rotation {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::estimateAffine3D(src.nativeRef, dst.nativeRef, scale, (bool)force_rotation));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)estimateAffine3D:(Mat*)src dst:(Mat*)dst scale:(double*)scale {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::estimateAffine3D(src.nativeRef, dst.nativeRef, scale));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)estimateAffine3D:(Mat*)src dst:(Mat*)dst {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::estimateAffine3D(src.nativeRef, dst.nativeRef));
    return [Mat fromNativePtr:retVal];
}


//
//  int cv::estimateTranslation3D(Mat src, Mat dst, Mat& out, Mat& inliers, double ransacThreshold = 3, double confidence = 0.99)
//
+ (int)estimateTranslation3D:(Mat*)src dst:(Mat*)dst out:(Mat*)out inliers:(Mat*)inliers ransacThreshold:(double)ransacThreshold confidence:(double)confidence {
    int retVal = cv::estimateTranslation3D(src.nativeRef, dst.nativeRef, out.nativeRef, inliers.nativeRef, ransacThreshold, confidence);
    return retVal;
}

+ (int)estimateTranslation3D:(Mat*)src dst:(Mat*)dst out:(Mat*)out inliers:(Mat*)inliers ransacThreshold:(double)ransacThreshold {
    int retVal = cv::estimateTranslation3D(src.nativeRef, dst.nativeRef, out.nativeRef, inliers.nativeRef, ransacThreshold);
    return retVal;
}

+ (int)estimateTranslation3D:(Mat*)src dst:(Mat*)dst out:(Mat*)out inliers:(Mat*)inliers {
    int retVal = cv::estimateTranslation3D(src.nativeRef, dst.nativeRef, out.nativeRef, inliers.nativeRef);
    return retVal;
}


//
//  Mat cv::estimateAffine2D(Mat from, Mat to, Mat& inliers = Mat(), int method = RANSAC, double ransacReprojThreshold = 3, size_t maxIters = 2000, double confidence = 0.99, size_t refineIters = 10)
//
+ (Mat*)estimateAffine2D:(Mat*)from to:(Mat*)to inliers:(Mat*)inliers method:(int)method ransacReprojThreshold:(double)ransacReprojThreshold maxIters:(size_t)maxIters confidence:(double)confidence refineIters:(size_t)refineIters {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::estimateAffine2D(from.nativeRef, to.nativeRef, inliers.nativeRef, method, ransacReprojThreshold, maxIters, confidence, refineIters));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)estimateAffine2D:(Mat*)from to:(Mat*)to inliers:(Mat*)inliers method:(int)method ransacReprojThreshold:(double)ransacReprojThreshold maxIters:(size_t)maxIters confidence:(double)confidence {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::estimateAffine2D(from.nativeRef, to.nativeRef, inliers.nativeRef, method, ransacReprojThreshold, maxIters, confidence));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)estimateAffine2D:(Mat*)from to:(Mat*)to inliers:(Mat*)inliers method:(int)method ransacReprojThreshold:(double)ransacReprojThreshold maxIters:(size_t)maxIters {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::estimateAffine2D(from.nativeRef, to.nativeRef, inliers.nativeRef, method, ransacReprojThreshold, maxIters));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)estimateAffine2D:(Mat*)from to:(Mat*)to inliers:(Mat*)inliers method:(int)method ransacReprojThreshold:(double)ransacReprojThreshold {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::estimateAffine2D(from.nativeRef, to.nativeRef, inliers.nativeRef, method, ransacReprojThreshold));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)estimateAffine2D:(Mat*)from to:(Mat*)to inliers:(Mat*)inliers method:(int)method {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::estimateAffine2D(from.nativeRef, to.nativeRef, inliers.nativeRef, method));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)estimateAffine2D:(Mat*)from to:(Mat*)to inliers:(Mat*)inliers {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::estimateAffine2D(from.nativeRef, to.nativeRef, inliers.nativeRef));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)estimateAffine2D:(Mat*)from to:(Mat*)to {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::estimateAffine2D(from.nativeRef, to.nativeRef));
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::estimateAffine2D(Mat pts1, Mat pts2, Mat& inliers, UsacParams params)
//
+ (Mat*)estimateAffine2D:(Mat*)pts1 pts2:(Mat*)pts2 inliers:(Mat*)inliers params:(UsacParams*)params {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::estimateAffine2D(pts1.nativeRef, pts2.nativeRef, inliers.nativeRef, *(params.nativePtr)));
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::estimateAffinePartial2D(Mat from, Mat to, Mat& inliers = Mat(), int method = RANSAC, double ransacReprojThreshold = 3, size_t maxIters = 2000, double confidence = 0.99, size_t refineIters = 10)
//
+ (Mat*)estimateAffinePartial2D:(Mat*)from to:(Mat*)to inliers:(Mat*)inliers method:(int)method ransacReprojThreshold:(double)ransacReprojThreshold maxIters:(size_t)maxIters confidence:(double)confidence refineIters:(size_t)refineIters {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::estimateAffinePartial2D(from.nativeRef, to.nativeRef, inliers.nativeRef, method, ransacReprojThreshold, maxIters, confidence, refineIters));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)estimateAffinePartial2D:(Mat*)from to:(Mat*)to inliers:(Mat*)inliers method:(int)method ransacReprojThreshold:(double)ransacReprojThreshold maxIters:(size_t)maxIters confidence:(double)confidence {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::estimateAffinePartial2D(from.nativeRef, to.nativeRef, inliers.nativeRef, method, ransacReprojThreshold, maxIters, confidence));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)estimateAffinePartial2D:(Mat*)from to:(Mat*)to inliers:(Mat*)inliers method:(int)method ransacReprojThreshold:(double)ransacReprojThreshold maxIters:(size_t)maxIters {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::estimateAffinePartial2D(from.nativeRef, to.nativeRef, inliers.nativeRef, method, ransacReprojThreshold, maxIters));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)estimateAffinePartial2D:(Mat*)from to:(Mat*)to inliers:(Mat*)inliers method:(int)method ransacReprojThreshold:(double)ransacReprojThreshold {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::estimateAffinePartial2D(from.nativeRef, to.nativeRef, inliers.nativeRef, method, ransacReprojThreshold));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)estimateAffinePartial2D:(Mat*)from to:(Mat*)to inliers:(Mat*)inliers method:(int)method {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::estimateAffinePartial2D(from.nativeRef, to.nativeRef, inliers.nativeRef, method));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)estimateAffinePartial2D:(Mat*)from to:(Mat*)to inliers:(Mat*)inliers {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::estimateAffinePartial2D(from.nativeRef, to.nativeRef, inliers.nativeRef));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)estimateAffinePartial2D:(Mat*)from to:(Mat*)to {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::estimateAffinePartial2D(from.nativeRef, to.nativeRef));
    return [Mat fromNativePtr:retVal];
}


//
//  int cv::decomposeHomographyMat(Mat H, Mat K, vector_Mat& rotations, vector_Mat& translations, vector_Mat& normals)
//
+ (int)decomposeHomographyMat:(Mat*)H K:(Mat*)K rotations:(NSMutableArray<Mat*>*)rotations translations:(NSMutableArray<Mat*>*)translations normals:(NSMutableArray<Mat*>*)normals {
    OBJC2CV(cv::Mat, Mat, rotationsVector, rotations);
    OBJC2CV(cv::Mat, Mat, translationsVector, translations);
    OBJC2CV(cv::Mat, Mat, normalsVector, normals);
    int retVal = cv::decomposeHomographyMat(H.nativeRef, K.nativeRef, rotationsVector, translationsVector, normalsVector);
    CV2OBJC(cv::Mat, Mat, rotationsVector, rotations);
    CV2OBJC(cv::Mat, Mat, translationsVector, translations);
    CV2OBJC(cv::Mat, Mat, normalsVector, normals);
    return retVal;
}


//
//  void cv::filterHomographyDecompByVisibleRefpoints(vector_Mat rotations, vector_Mat normals, Mat beforePoints, Mat afterPoints, Mat& possibleSolutions, Mat pointsMask = Mat())
//
+ (void)filterHomographyDecompByVisibleRefpoints:(NSArray<Mat*>*)rotations normals:(NSArray<Mat*>*)normals beforePoints:(Mat*)beforePoints afterPoints:(Mat*)afterPoints possibleSolutions:(Mat*)possibleSolutions pointsMask:(Mat*)pointsMask {
    OBJC2CV(cv::Mat, Mat, rotationsVector, rotations);
    OBJC2CV(cv::Mat, Mat, normalsVector, normals);
    cv::filterHomographyDecompByVisibleRefpoints(rotationsVector, normalsVector, beforePoints.nativeRef, afterPoints.nativeRef, possibleSolutions.nativeRef, pointsMask.nativeRef);
}

+ (void)filterHomographyDecompByVisibleRefpoints:(NSArray<Mat*>*)rotations normals:(NSArray<Mat*>*)normals beforePoints:(Mat*)beforePoints afterPoints:(Mat*)afterPoints possibleSolutions:(Mat*)possibleSolutions {
    OBJC2CV(cv::Mat, Mat, rotationsVector, rotations);
    OBJC2CV(cv::Mat, Mat, normalsVector, normals);
    cv::filterHomographyDecompByVisibleRefpoints(rotationsVector, normalsVector, beforePoints.nativeRef, afterPoints.nativeRef, possibleSolutions.nativeRef);
}


//
//  void cv::undistort(Mat src, Mat& dst, Mat cameraMatrix, Mat distCoeffs, Mat newCameraMatrix = Mat())
//
+ (void)undistort:(Mat*)src dst:(Mat*)dst cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs newCameraMatrix:(Mat*)newCameraMatrix {
    cv::undistort(src.nativeRef, dst.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, newCameraMatrix.nativeRef);
}

+ (void)undistort:(Mat*)src dst:(Mat*)dst cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs {
    cv::undistort(src.nativeRef, dst.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef);
}


//
//  void cv::initUndistortRectifyMap(Mat cameraMatrix, Mat distCoeffs, Mat R, Mat newCameraMatrix, Size size, int m1type, Mat& map1, Mat& map2)
//
+ (void)initUndistortRectifyMap:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs R:(Mat*)R newCameraMatrix:(Mat*)newCameraMatrix size:(Size2i*)size m1type:(int)m1type map1:(Mat*)map1 map2:(Mat*)map2 {
    cv::initUndistortRectifyMap(cameraMatrix.nativeRef, distCoeffs.nativeRef, R.nativeRef, newCameraMatrix.nativeRef, size.nativeRef, m1type, map1.nativeRef, map2.nativeRef);
}


//
//  void cv::initInverseRectificationMap(Mat cameraMatrix, Mat distCoeffs, Mat R, Mat newCameraMatrix, Size size, int m1type, Mat& map1, Mat& map2)
//
+ (void)initInverseRectificationMap:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs R:(Mat*)R newCameraMatrix:(Mat*)newCameraMatrix size:(Size2i*)size m1type:(int)m1type map1:(Mat*)map1 map2:(Mat*)map2 {
    cv::initInverseRectificationMap(cameraMatrix.nativeRef, distCoeffs.nativeRef, R.nativeRef, newCameraMatrix.nativeRef, size.nativeRef, m1type, map1.nativeRef, map2.nativeRef);
}


//
//  Mat cv::getDefaultNewCameraMatrix(Mat cameraMatrix, Size imgsize = Size(), bool centerPrincipalPoint = false)
//
+ (Mat*)getDefaultNewCameraMatrix:(Mat*)cameraMatrix imgsize:(Size2i*)imgsize centerPrincipalPoint:(BOOL)centerPrincipalPoint {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::getDefaultNewCameraMatrix(cameraMatrix.nativeRef, imgsize.nativeRef, (bool)centerPrincipalPoint));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)getDefaultNewCameraMatrix:(Mat*)cameraMatrix imgsize:(Size2i*)imgsize {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::getDefaultNewCameraMatrix(cameraMatrix.nativeRef, imgsize.nativeRef));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)getDefaultNewCameraMatrix:(Mat*)cameraMatrix {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::getDefaultNewCameraMatrix(cameraMatrix.nativeRef));
    return [Mat fromNativePtr:retVal];
}


//
//  void cv::undistortPoints(Mat src, Mat& dst, Mat cameraMatrix, Mat distCoeffs, Mat R = Mat(), Mat P = Mat())
//
+ (void)undistortPoints:(Mat*)src dst:(Mat*)dst cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs R:(Mat*)R P:(Mat*)P {
    cv::undistortPoints(src.nativeRef, dst.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, R.nativeRef, P.nativeRef);
}

+ (void)undistortPoints:(Mat*)src dst:(Mat*)dst cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs R:(Mat*)R {
    cv::undistortPoints(src.nativeRef, dst.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, R.nativeRef);
}

+ (void)undistortPoints:(Mat*)src dst:(Mat*)dst cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs {
    cv::undistortPoints(src.nativeRef, dst.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef);
}


//
//  void cv::undistortPoints(Mat src, Mat& dst, Mat cameraMatrix, Mat distCoeffs, Mat R, Mat P, TermCriteria criteria)
//
+ (void)undistortPointsIter:(Mat*)src dst:(Mat*)dst cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs R:(Mat*)R P:(Mat*)P criteria:(TermCriteria*)criteria {
    cv::undistortPoints(src.nativeRef, dst.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, R.nativeRef, P.nativeRef, criteria.nativeRef);
}


//
//  void cv::undistortImagePoints(Mat src, Mat& dst, Mat cameraMatrix, Mat distCoeffs, TermCriteria arg1 = TermCriteria(TermCriteria::MAX_ITER + TermCriteria::EPS, 5, 0.01))
//
+ (void)undistortImagePoints:(Mat*)src dst:(Mat*)dst cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs arg1:(TermCriteria*)arg1 {
    cv::undistortImagePoints(src.nativeRef, dst.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, arg1.nativeRef);
}

+ (void)undistortImagePoints:(Mat*)src dst:(Mat*)dst cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs {
    cv::undistortImagePoints(src.nativeRef, dst.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef);
}


//
//  void cv::fisheye::projectPoints(Mat objectPoints, Mat& imagePoints, Mat rvec, Mat tvec, Mat K, Mat D, double alpha = 0, Mat& jacobian = Mat())
//
+ (void)fisheye_projectPoints:(Mat*)objectPoints imagePoints:(Mat*)imagePoints rvec:(Mat*)rvec tvec:(Mat*)tvec K:(Mat*)K D:(Mat*)D alpha:(double)alpha jacobian:(Mat*)jacobian {
    cv::fisheye::projectPoints(objectPoints.nativeRef, imagePoints.nativeRef, rvec.nativeRef, tvec.nativeRef, K.nativeRef, D.nativeRef, alpha, jacobian.nativeRef);
}

+ (void)fisheye_projectPoints:(Mat*)objectPoints imagePoints:(Mat*)imagePoints rvec:(Mat*)rvec tvec:(Mat*)tvec K:(Mat*)K D:(Mat*)D alpha:(double)alpha {
    cv::fisheye::projectPoints(objectPoints.nativeRef, imagePoints.nativeRef, rvec.nativeRef, tvec.nativeRef, K.nativeRef, D.nativeRef, alpha);
}

+ (void)fisheye_projectPoints:(Mat*)objectPoints imagePoints:(Mat*)imagePoints rvec:(Mat*)rvec tvec:(Mat*)tvec K:(Mat*)K D:(Mat*)D {
    cv::fisheye::projectPoints(objectPoints.nativeRef, imagePoints.nativeRef, rvec.nativeRef, tvec.nativeRef, K.nativeRef, D.nativeRef);
}


//
//  void cv::fisheye::distortPoints(Mat undistorted, Mat& distorted, Mat K, Mat D, double alpha = 0)
//
+ (void)fisheye_distortPoints:(Mat*)undistorted distorted:(Mat*)distorted K:(Mat*)K D:(Mat*)D alpha:(double)alpha {
    cv::fisheye::distortPoints(undistorted.nativeRef, distorted.nativeRef, K.nativeRef, D.nativeRef, alpha);
}

+ (void)fisheye_distortPoints:(Mat*)undistorted distorted:(Mat*)distorted K:(Mat*)K D:(Mat*)D {
    cv::fisheye::distortPoints(undistorted.nativeRef, distorted.nativeRef, K.nativeRef, D.nativeRef);
}


//
//  void cv::fisheye::undistortPoints(Mat distorted, Mat& undistorted, Mat K, Mat D, Mat R = Mat(), Mat P = Mat(), TermCriteria criteria = TermCriteria(TermCriteria::MAX_ITER + TermCriteria::EPS, 10, 1e-8))
//
+ (void)fisheye_undistortPoints:(Mat*)distorted undistorted:(Mat*)undistorted K:(Mat*)K D:(Mat*)D R:(Mat*)R P:(Mat*)P criteria:(TermCriteria*)criteria {
    cv::fisheye::undistortPoints(distorted.nativeRef, undistorted.nativeRef, K.nativeRef, D.nativeRef, R.nativeRef, P.nativeRef, criteria.nativeRef);
}

+ (void)fisheye_undistortPoints:(Mat*)distorted undistorted:(Mat*)undistorted K:(Mat*)K D:(Mat*)D R:(Mat*)R P:(Mat*)P {
    cv::fisheye::undistortPoints(distorted.nativeRef, undistorted.nativeRef, K.nativeRef, D.nativeRef, R.nativeRef, P.nativeRef);
}

+ (void)fisheye_undistortPoints:(Mat*)distorted undistorted:(Mat*)undistorted K:(Mat*)K D:(Mat*)D R:(Mat*)R {
    cv::fisheye::undistortPoints(distorted.nativeRef, undistorted.nativeRef, K.nativeRef, D.nativeRef, R.nativeRef);
}

+ (void)fisheye_undistortPoints:(Mat*)distorted undistorted:(Mat*)undistorted K:(Mat*)K D:(Mat*)D {
    cv::fisheye::undistortPoints(distorted.nativeRef, undistorted.nativeRef, K.nativeRef, D.nativeRef);
}


//
//  void cv::fisheye::initUndistortRectifyMap(Mat K, Mat D, Mat R, Mat P, Size size, int m1type, Mat& map1, Mat& map2)
//
+ (void)fisheye_initUndistortRectifyMap:(Mat*)K D:(Mat*)D R:(Mat*)R P:(Mat*)P size:(Size2i*)size m1type:(int)m1type map1:(Mat*)map1 map2:(Mat*)map2 {
    cv::fisheye::initUndistortRectifyMap(K.nativeRef, D.nativeRef, R.nativeRef, P.nativeRef, size.nativeRef, m1type, map1.nativeRef, map2.nativeRef);
}


//
//  void cv::fisheye::undistortImage(Mat distorted, Mat& undistorted, Mat K, Mat D, Mat Knew = cv::Mat(), Size new_size = Size())
//
+ (void)fisheye_undistortImage:(Mat*)distorted undistorted:(Mat*)undistorted K:(Mat*)K D:(Mat*)D Knew:(Mat*)Knew new_size:(Size2i*)new_size {
    cv::fisheye::undistortImage(distorted.nativeRef, undistorted.nativeRef, K.nativeRef, D.nativeRef, Knew.nativeRef, new_size.nativeRef);
}

+ (void)fisheye_undistortImage:(Mat*)distorted undistorted:(Mat*)undistorted K:(Mat*)K D:(Mat*)D Knew:(Mat*)Knew {
    cv::fisheye::undistortImage(distorted.nativeRef, undistorted.nativeRef, K.nativeRef, D.nativeRef, Knew.nativeRef);
}

+ (void)fisheye_undistortImage:(Mat*)distorted undistorted:(Mat*)undistorted K:(Mat*)K D:(Mat*)D {
    cv::fisheye::undistortImage(distorted.nativeRef, undistorted.nativeRef, K.nativeRef, D.nativeRef);
}


//
//  void cv::fisheye::estimateNewCameraMatrixForUndistortRectify(Mat K, Mat D, Size image_size, Mat R, Mat& P, double balance = 0.0, Size new_size = Size(), double fov_scale = 1.0)
//
+ (void)fisheye_estimateNewCameraMatrixForUndistortRectify:(Mat*)K D:(Mat*)D image_size:(Size2i*)image_size R:(Mat*)R P:(Mat*)P balance:(double)balance new_size:(Size2i*)new_size fov_scale:(double)fov_scale {
    cv::fisheye::estimateNewCameraMatrixForUndistortRectify(K.nativeRef, D.nativeRef, image_size.nativeRef, R.nativeRef, P.nativeRef, balance, new_size.nativeRef, fov_scale);
}

+ (void)fisheye_estimateNewCameraMatrixForUndistortRectify:(Mat*)K D:(Mat*)D image_size:(Size2i*)image_size R:(Mat*)R P:(Mat*)P balance:(double)balance new_size:(Size2i*)new_size {
    cv::fisheye::estimateNewCameraMatrixForUndistortRectify(K.nativeRef, D.nativeRef, image_size.nativeRef, R.nativeRef, P.nativeRef, balance, new_size.nativeRef);
}

+ (void)fisheye_estimateNewCameraMatrixForUndistortRectify:(Mat*)K D:(Mat*)D image_size:(Size2i*)image_size R:(Mat*)R P:(Mat*)P balance:(double)balance {
    cv::fisheye::estimateNewCameraMatrixForUndistortRectify(K.nativeRef, D.nativeRef, image_size.nativeRef, R.nativeRef, P.nativeRef, balance);
}

+ (void)fisheye_estimateNewCameraMatrixForUndistortRectify:(Mat*)K D:(Mat*)D image_size:(Size2i*)image_size R:(Mat*)R P:(Mat*)P {
    cv::fisheye::estimateNewCameraMatrixForUndistortRectify(K.nativeRef, D.nativeRef, image_size.nativeRef, R.nativeRef, P.nativeRef);
}


//
//  double cv::fisheye::calibrate(vector_Mat objectPoints, vector_Mat imagePoints, Size image_size, Mat& K, Mat& D, vector_Mat& rvecs, vector_Mat& tvecs, int flags = 0, TermCriteria criteria = TermCriteria(TermCriteria::COUNT + TermCriteria::EPS, 100, DBL_EPSILON))
//
+ (double)fisheye_calibrate:(NSArray<Mat*>*)objectPoints imagePoints:(NSArray<Mat*>*)imagePoints image_size:(Size2i*)image_size K:(Mat*)K D:(Mat*)D rvecs:(NSMutableArray<Mat*>*)rvecs tvecs:(NSMutableArray<Mat*>*)tvecs flags:(int)flags criteria:(TermCriteria*)criteria {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePointsVector, imagePoints);
    OBJC2CV(cv::Mat, Mat, rvecsVector, rvecs);
    OBJC2CV(cv::Mat, Mat, tvecsVector, tvecs);
    double retVal = cv::fisheye::calibrate(objectPointsVector, imagePointsVector, image_size.nativeRef, K.nativeRef, D.nativeRef, rvecsVector, tvecsVector, flags, criteria.nativeRef);
    CV2OBJC(cv::Mat, Mat, rvecsVector, rvecs);
    CV2OBJC(cv::Mat, Mat, tvecsVector, tvecs);
    return retVal;
}

+ (double)fisheye_calibrate:(NSArray<Mat*>*)objectPoints imagePoints:(NSArray<Mat*>*)imagePoints image_size:(Size2i*)image_size K:(Mat*)K D:(Mat*)D rvecs:(NSMutableArray<Mat*>*)rvecs tvecs:(NSMutableArray<Mat*>*)tvecs flags:(int)flags {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePointsVector, imagePoints);
    OBJC2CV(cv::Mat, Mat, rvecsVector, rvecs);
    OBJC2CV(cv::Mat, Mat, tvecsVector, tvecs);
    double retVal = cv::fisheye::calibrate(objectPointsVector, imagePointsVector, image_size.nativeRef, K.nativeRef, D.nativeRef, rvecsVector, tvecsVector, flags);
    CV2OBJC(cv::Mat, Mat, rvecsVector, rvecs);
    CV2OBJC(cv::Mat, Mat, tvecsVector, tvecs);
    return retVal;
}

+ (double)fisheye_calibrate:(NSArray<Mat*>*)objectPoints imagePoints:(NSArray<Mat*>*)imagePoints image_size:(Size2i*)image_size K:(Mat*)K D:(Mat*)D rvecs:(NSMutableArray<Mat*>*)rvecs tvecs:(NSMutableArray<Mat*>*)tvecs {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePointsVector, imagePoints);
    OBJC2CV(cv::Mat, Mat, rvecsVector, rvecs);
    OBJC2CV(cv::Mat, Mat, tvecsVector, tvecs);
    double retVal = cv::fisheye::calibrate(objectPointsVector, imagePointsVector, image_size.nativeRef, K.nativeRef, D.nativeRef, rvecsVector, tvecsVector);
    CV2OBJC(cv::Mat, Mat, rvecsVector, rvecs);
    CV2OBJC(cv::Mat, Mat, tvecsVector, tvecs);
    return retVal;
}


//
//  void cv::fisheye::stereoRectify(Mat K1, Mat D1, Mat K2, Mat D2, Size imageSize, Mat R, Mat tvec, Mat& R1, Mat& R2, Mat& P1, Mat& P2, Mat& Q, int flags, Size newImageSize = Size(), double balance = 0.0, double fov_scale = 1.0)
//
+ (void)fisheye_stereoRectify:(Mat*)K1 D1:(Mat*)D1 K2:(Mat*)K2 D2:(Mat*)D2 imageSize:(Size2i*)imageSize R:(Mat*)R tvec:(Mat*)tvec R1:(Mat*)R1 R2:(Mat*)R2 P1:(Mat*)P1 P2:(Mat*)P2 Q:(Mat*)Q flags:(int)flags newImageSize:(Size2i*)newImageSize balance:(double)balance fov_scale:(double)fov_scale {
    cv::fisheye::stereoRectify(K1.nativeRef, D1.nativeRef, K2.nativeRef, D2.nativeRef, imageSize.nativeRef, R.nativeRef, tvec.nativeRef, R1.nativeRef, R2.nativeRef, P1.nativeRef, P2.nativeRef, Q.nativeRef, flags, newImageSize.nativeRef, balance, fov_scale);
}

+ (void)fisheye_stereoRectify:(Mat*)K1 D1:(Mat*)D1 K2:(Mat*)K2 D2:(Mat*)D2 imageSize:(Size2i*)imageSize R:(Mat*)R tvec:(Mat*)tvec R1:(Mat*)R1 R2:(Mat*)R2 P1:(Mat*)P1 P2:(Mat*)P2 Q:(Mat*)Q flags:(int)flags newImageSize:(Size2i*)newImageSize balance:(double)balance {
    cv::fisheye::stereoRectify(K1.nativeRef, D1.nativeRef, K2.nativeRef, D2.nativeRef, imageSize.nativeRef, R.nativeRef, tvec.nativeRef, R1.nativeRef, R2.nativeRef, P1.nativeRef, P2.nativeRef, Q.nativeRef, flags, newImageSize.nativeRef, balance);
}

+ (void)fisheye_stereoRectify:(Mat*)K1 D1:(Mat*)D1 K2:(Mat*)K2 D2:(Mat*)D2 imageSize:(Size2i*)imageSize R:(Mat*)R tvec:(Mat*)tvec R1:(Mat*)R1 R2:(Mat*)R2 P1:(Mat*)P1 P2:(Mat*)P2 Q:(Mat*)Q flags:(int)flags newImageSize:(Size2i*)newImageSize {
    cv::fisheye::stereoRectify(K1.nativeRef, D1.nativeRef, K2.nativeRef, D2.nativeRef, imageSize.nativeRef, R.nativeRef, tvec.nativeRef, R1.nativeRef, R2.nativeRef, P1.nativeRef, P2.nativeRef, Q.nativeRef, flags, newImageSize.nativeRef);
}

+ (void)fisheye_stereoRectify:(Mat*)K1 D1:(Mat*)D1 K2:(Mat*)K2 D2:(Mat*)D2 imageSize:(Size2i*)imageSize R:(Mat*)R tvec:(Mat*)tvec R1:(Mat*)R1 R2:(Mat*)R2 P1:(Mat*)P1 P2:(Mat*)P2 Q:(Mat*)Q flags:(int)flags {
    cv::fisheye::stereoRectify(K1.nativeRef, D1.nativeRef, K2.nativeRef, D2.nativeRef, imageSize.nativeRef, R.nativeRef, tvec.nativeRef, R1.nativeRef, R2.nativeRef, P1.nativeRef, P2.nativeRef, Q.nativeRef, flags);
}


//
//  double cv::fisheye::stereoCalibrate(vector_Mat objectPoints, vector_Mat imagePoints1, vector_Mat imagePoints2, Mat& K1, Mat& D1, Mat& K2, Mat& D2, Size imageSize, Mat& R, Mat& T, vector_Mat& rvecs, vector_Mat& tvecs, int flags = fisheye::CALIB_FIX_INTRINSIC, TermCriteria criteria = TermCriteria(TermCriteria::COUNT + TermCriteria::EPS, 100, DBL_EPSILON))
//
+ (double)fisheye_stereoCalibrate:(NSArray<Mat*>*)objectPoints imagePoints1:(NSArray<Mat*>*)imagePoints1 imagePoints2:(NSArray<Mat*>*)imagePoints2 K1:(Mat*)K1 D1:(Mat*)D1 K2:(Mat*)K2 D2:(Mat*)D2 imageSize:(Size2i*)imageSize R:(Mat*)R T:(Mat*)T rvecs:(NSMutableArray<Mat*>*)rvecs tvecs:(NSMutableArray<Mat*>*)tvecs flags:(int)flags criteria:(TermCriteria*)criteria {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePoints1Vector, imagePoints1);
    OBJC2CV(cv::Mat, Mat, imagePoints2Vector, imagePoints2);
    OBJC2CV(cv::Mat, Mat, rvecsVector, rvecs);
    OBJC2CV(cv::Mat, Mat, tvecsVector, tvecs);
    double retVal = cv::fisheye::stereoCalibrate(objectPointsVector, imagePoints1Vector, imagePoints2Vector, K1.nativeRef, D1.nativeRef, K2.nativeRef, D2.nativeRef, imageSize.nativeRef, R.nativeRef, T.nativeRef, rvecsVector, tvecsVector, flags, criteria.nativeRef);
    CV2OBJC(cv::Mat, Mat, rvecsVector, rvecs);
    CV2OBJC(cv::Mat, Mat, tvecsVector, tvecs);
    return retVal;
}

+ (double)fisheye_stereoCalibrate:(NSArray<Mat*>*)objectPoints imagePoints1:(NSArray<Mat*>*)imagePoints1 imagePoints2:(NSArray<Mat*>*)imagePoints2 K1:(Mat*)K1 D1:(Mat*)D1 K2:(Mat*)K2 D2:(Mat*)D2 imageSize:(Size2i*)imageSize R:(Mat*)R T:(Mat*)T rvecs:(NSMutableArray<Mat*>*)rvecs tvecs:(NSMutableArray<Mat*>*)tvecs flags:(int)flags {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePoints1Vector, imagePoints1);
    OBJC2CV(cv::Mat, Mat, imagePoints2Vector, imagePoints2);
    OBJC2CV(cv::Mat, Mat, rvecsVector, rvecs);
    OBJC2CV(cv::Mat, Mat, tvecsVector, tvecs);
    double retVal = cv::fisheye::stereoCalibrate(objectPointsVector, imagePoints1Vector, imagePoints2Vector, K1.nativeRef, D1.nativeRef, K2.nativeRef, D2.nativeRef, imageSize.nativeRef, R.nativeRef, T.nativeRef, rvecsVector, tvecsVector, flags);
    CV2OBJC(cv::Mat, Mat, rvecsVector, rvecs);
    CV2OBJC(cv::Mat, Mat, tvecsVector, tvecs);
    return retVal;
}

+ (double)fisheye_stereoCalibrate:(NSArray<Mat*>*)objectPoints imagePoints1:(NSArray<Mat*>*)imagePoints1 imagePoints2:(NSArray<Mat*>*)imagePoints2 K1:(Mat*)K1 D1:(Mat*)D1 K2:(Mat*)K2 D2:(Mat*)D2 imageSize:(Size2i*)imageSize R:(Mat*)R T:(Mat*)T rvecs:(NSMutableArray<Mat*>*)rvecs tvecs:(NSMutableArray<Mat*>*)tvecs {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePoints1Vector, imagePoints1);
    OBJC2CV(cv::Mat, Mat, imagePoints2Vector, imagePoints2);
    OBJC2CV(cv::Mat, Mat, rvecsVector, rvecs);
    OBJC2CV(cv::Mat, Mat, tvecsVector, tvecs);
    double retVal = cv::fisheye::stereoCalibrate(objectPointsVector, imagePoints1Vector, imagePoints2Vector, K1.nativeRef, D1.nativeRef, K2.nativeRef, D2.nativeRef, imageSize.nativeRef, R.nativeRef, T.nativeRef, rvecsVector, tvecsVector);
    CV2OBJC(cv::Mat, Mat, rvecsVector, rvecs);
    CV2OBJC(cv::Mat, Mat, tvecsVector, tvecs);
    return retVal;
}


//
//  double cv::fisheye::stereoCalibrate(vector_Mat objectPoints, vector_Mat imagePoints1, vector_Mat imagePoints2, Mat& K1, Mat& D1, Mat& K2, Mat& D2, Size imageSize, Mat& R, Mat& T, int flags = fisheye::CALIB_FIX_INTRINSIC, TermCriteria criteria = TermCriteria(TermCriteria::COUNT + TermCriteria::EPS, 100, DBL_EPSILON))
//
+ (double)fisheye_stereoCalibrate:(NSArray<Mat*>*)objectPoints imagePoints1:(NSArray<Mat*>*)imagePoints1 imagePoints2:(NSArray<Mat*>*)imagePoints2 K1:(Mat*)K1 D1:(Mat*)D1 K2:(Mat*)K2 D2:(Mat*)D2 imageSize:(Size2i*)imageSize R:(Mat*)R T:(Mat*)T flags:(int)flags criteria:(TermCriteria*)criteria {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePoints1Vector, imagePoints1);
    OBJC2CV(cv::Mat, Mat, imagePoints2Vector, imagePoints2);
    double retVal = cv::fisheye::stereoCalibrate(objectPointsVector, imagePoints1Vector, imagePoints2Vector, K1.nativeRef, D1.nativeRef, K2.nativeRef, D2.nativeRef, imageSize.nativeRef, R.nativeRef, T.nativeRef, flags, criteria.nativeRef);
    return retVal;
}

+ (double)fisheye_stereoCalibrate:(NSArray<Mat*>*)objectPoints imagePoints1:(NSArray<Mat*>*)imagePoints1 imagePoints2:(NSArray<Mat*>*)imagePoints2 K1:(Mat*)K1 D1:(Mat*)D1 K2:(Mat*)K2 D2:(Mat*)D2 imageSize:(Size2i*)imageSize R:(Mat*)R T:(Mat*)T flags:(int)flags {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePoints1Vector, imagePoints1);
    OBJC2CV(cv::Mat, Mat, imagePoints2Vector, imagePoints2);
    double retVal = cv::fisheye::stereoCalibrate(objectPointsVector, imagePoints1Vector, imagePoints2Vector, K1.nativeRef, D1.nativeRef, K2.nativeRef, D2.nativeRef, imageSize.nativeRef, R.nativeRef, T.nativeRef, flags);
    return retVal;
}

+ (double)fisheye_stereoCalibrate:(NSArray<Mat*>*)objectPoints imagePoints1:(NSArray<Mat*>*)imagePoints1 imagePoints2:(NSArray<Mat*>*)imagePoints2 K1:(Mat*)K1 D1:(Mat*)D1 K2:(Mat*)K2 D2:(Mat*)D2 imageSize:(Size2i*)imageSize R:(Mat*)R T:(Mat*)T {
    OBJC2CV(cv::Mat, Mat, objectPointsVector, objectPoints);
    OBJC2CV(cv::Mat, Mat, imagePoints1Vector, imagePoints1);
    OBJC2CV(cv::Mat, Mat, imagePoints2Vector, imagePoints2);
    double retVal = cv::fisheye::stereoCalibrate(objectPointsVector, imagePoints1Vector, imagePoints2Vector, K1.nativeRef, D1.nativeRef, K2.nativeRef, D2.nativeRef, imageSize.nativeRef, R.nativeRef, T.nativeRef);
    return retVal;
}


//
//  bool cv::fisheye::solvePnP(Mat objectPoints, Mat imagePoints, Mat cameraMatrix, Mat distCoeffs, Mat& rvec, Mat& tvec, bool useExtrinsicGuess = false, int flags = SOLVEPNP_ITERATIVE, TermCriteria criteria = TermCriteria(TermCriteria::MAX_ITER + TermCriteria::EPS, 10, 1e-8))
//
+ (BOOL)fisheye_solvePnP:(Mat*)objectPoints imagePoints:(Mat*)imagePoints cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvec:(Mat*)rvec tvec:(Mat*)tvec useExtrinsicGuess:(BOOL)useExtrinsicGuess flags:(int)flags criteria:(TermCriteria*)criteria {
    bool retVal = cv::fisheye::solvePnP(objectPoints.nativeRef, imagePoints.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvec.nativeRef, tvec.nativeRef, (bool)useExtrinsicGuess, flags, criteria.nativeRef);
    return retVal;
}

+ (BOOL)fisheye_solvePnP:(Mat*)objectPoints imagePoints:(Mat*)imagePoints cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvec:(Mat*)rvec tvec:(Mat*)tvec useExtrinsicGuess:(BOOL)useExtrinsicGuess flags:(int)flags {
    bool retVal = cv::fisheye::solvePnP(objectPoints.nativeRef, imagePoints.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvec.nativeRef, tvec.nativeRef, (bool)useExtrinsicGuess, flags);
    return retVal;
}

+ (BOOL)fisheye_solvePnP:(Mat*)objectPoints imagePoints:(Mat*)imagePoints cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvec:(Mat*)rvec tvec:(Mat*)tvec useExtrinsicGuess:(BOOL)useExtrinsicGuess {
    bool retVal = cv::fisheye::solvePnP(objectPoints.nativeRef, imagePoints.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvec.nativeRef, tvec.nativeRef, (bool)useExtrinsicGuess);
    return retVal;
}

+ (BOOL)fisheye_solvePnP:(Mat*)objectPoints imagePoints:(Mat*)imagePoints cameraMatrix:(Mat*)cameraMatrix distCoeffs:(Mat*)distCoeffs rvec:(Mat*)rvec tvec:(Mat*)tvec {
    bool retVal = cv::fisheye::solvePnP(objectPoints.nativeRef, imagePoints.nativeRef, cameraMatrix.nativeRef, distCoeffs.nativeRef, rvec.nativeRef, tvec.nativeRef);
    return retVal;
}



@end



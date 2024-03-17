//
// This file is auto-generated. Please don't modify it!
//

#import "Core.h"
#import "CVObjcUtil.h"

#import "DoubleVector.h"
#import "IntVector.h"
#import "Mat.h"
#import "MinMaxLocResult.h"
#import "Point2i.h"
#import "Scalar.h"
#import "TermCriteria.h"

@implementation Core

+ (int)SVD_MODIFY_A {
    return 1;
}

+ (int)SVD_NO_UV {
    return 2;
}

+ (int)SVD_FULL_UV {
    return 4;
}

+ (int)FILLED {
    return -1;
}

+ (int)REDUCE_SUM {
    return 0;
}

+ (int)REDUCE_AVG {
    return 1;
}

+ (int)REDUCE_MAX {
    return 2;
}

+ (int)REDUCE_MIN {
    return 3;
}

+ (int)RNG_UNIFORM {
    return 0;
}

+ (int)RNG_NORMAL {
    return 1;
}


//
//  float cv::cubeRoot(float val)
//
+ (float)cubeRoot:(float)val {
    float retVal = cv::cubeRoot(val);
    return retVal;
}


//
//  float cv::fastAtan2(float y, float x)
//
+ (float)fastAtan2:(float)y x:(float)x {
    float retVal = cv::fastAtan2(y, x);
    return retVal;
}


//
//  bool cv::ipp::useIPP()
//
+ (BOOL)useIPP {
    bool retVal = cv::ipp::useIPP();
    return retVal;
}


//
//  void cv::ipp::setUseIPP(bool flag)
//
+ (void)setUseIPP:(BOOL)flag {
    cv::ipp::setUseIPP((bool)flag);
}


//
//  String cv::ipp::getIppVersion()
//
+ (NSString*)getIppVersion {
    cv::String retVal = cv::ipp::getIppVersion();
    return [NSString stringWithUTF8String:retVal.c_str()];
}


//
//  bool cv::ipp::useIPP_NotExact()
//
+ (BOOL)useIPP_NotExact {
    bool retVal = cv::ipp::useIPP_NotExact();
    return retVal;
}


//
//  void cv::ipp::setUseIPP_NotExact(bool flag)
//
+ (void)setUseIPP_NotExact:(BOOL)flag {
    cv::ipp::setUseIPP_NotExact((bool)flag);
}


//
//  int cv::borderInterpolate(int p, int len, BorderTypes borderType)
//
+ (int)borderInterpolate:(int)p len:(int)len borderType:(BorderTypes)borderType {
    int retVal = cv::borderInterpolate(p, len, (cv::BorderTypes)borderType);
    return retVal;
}


//
//  void cv::copyMakeBorder(Mat src, Mat& dst, int top, int bottom, int left, int right, BorderTypes borderType, Scalar value = Scalar())
//
+ (void)copyMakeBorder:(Mat*)src dst:(Mat*)dst top:(int)top bottom:(int)bottom left:(int)left right:(int)right borderType:(BorderTypes)borderType value:(Scalar*)value {
    cv::copyMakeBorder(src.nativeRef, dst.nativeRef, top, bottom, left, right, (cv::BorderTypes)borderType, value.nativeRef);
}

+ (void)copyMakeBorder:(Mat*)src dst:(Mat*)dst top:(int)top bottom:(int)bottom left:(int)left right:(int)right borderType:(BorderTypes)borderType {
    cv::copyMakeBorder(src.nativeRef, dst.nativeRef, top, bottom, left, right, (cv::BorderTypes)borderType);
}


//
//  void cv::add(Mat src1, Mat src2, Mat& dst, Mat mask = Mat(), int dtype = -1)
//
+ (void)add:(Mat*)src1 src2:(Mat*)src2 dst:(Mat*)dst mask:(Mat*)mask dtype:(int)dtype {
    cv::add(src1.nativeRef, src2.nativeRef, dst.nativeRef, mask.nativeRef, dtype);
}

+ (void)add:(Mat*)src1 src2:(Mat*)src2 dst:(Mat*)dst mask:(Mat*)mask {
    cv::add(src1.nativeRef, src2.nativeRef, dst.nativeRef, mask.nativeRef);
}

+ (void)add:(Mat*)src1 src2:(Mat*)src2 dst:(Mat*)dst {
    cv::add(src1.nativeRef, src2.nativeRef, dst.nativeRef);
}


//
//  void cv::subtract(Mat src1, Mat src2, Mat& dst, Mat mask = Mat(), int dtype = -1)
//
+ (void)subtract:(Mat*)src1 src2:(Mat*)src2 dst:(Mat*)dst mask:(Mat*)mask dtype:(int)dtype {
    cv::subtract(src1.nativeRef, src2.nativeRef, dst.nativeRef, mask.nativeRef, dtype);
}

+ (void)subtract:(Mat*)src1 src2:(Mat*)src2 dst:(Mat*)dst mask:(Mat*)mask {
    cv::subtract(src1.nativeRef, src2.nativeRef, dst.nativeRef, mask.nativeRef);
}

+ (void)subtract:(Mat*)src1 src2:(Mat*)src2 dst:(Mat*)dst {
    cv::subtract(src1.nativeRef, src2.nativeRef, dst.nativeRef);
}


//
//  void cv::multiply(Mat src1, Mat src2, Mat& dst, double scale = 1, int dtype = -1)
//
+ (void)multiply:(Mat*)src1 src2:(Mat*)src2 dst:(Mat*)dst scale:(double)scale dtype:(int)dtype {
    cv::multiply(src1.nativeRef, src2.nativeRef, dst.nativeRef, scale, dtype);
}

+ (void)multiply:(Mat*)src1 src2:(Mat*)src2 dst:(Mat*)dst scale:(double)scale {
    cv::multiply(src1.nativeRef, src2.nativeRef, dst.nativeRef, scale);
}

+ (void)multiply:(Mat*)src1 src2:(Mat*)src2 dst:(Mat*)dst {
    cv::multiply(src1.nativeRef, src2.nativeRef, dst.nativeRef);
}


//
//  void cv::divide(Mat src1, Mat src2, Mat& dst, double scale = 1, int dtype = -1)
//
+ (void)divide:(Mat*)src1 src2:(Mat*)src2 dst:(Mat*)dst scale:(double)scale dtype:(int)dtype {
    cv::divide(src1.nativeRef, src2.nativeRef, dst.nativeRef, scale, dtype);
}

+ (void)divide:(Mat*)src1 src2:(Mat*)src2 dst:(Mat*)dst scale:(double)scale {
    cv::divide(src1.nativeRef, src2.nativeRef, dst.nativeRef, scale);
}

+ (void)divide:(Mat*)src1 src2:(Mat*)src2 dst:(Mat*)dst {
    cv::divide(src1.nativeRef, src2.nativeRef, dst.nativeRef);
}


//
//  void cv::divide(double scale, Mat src, Mat& dst, int dtype = -1)
//
+ (void)divide:(double)scale src:(Mat*)src dst:(Mat*)dst dtype:(int)dtype {
    cv::divide(scale, src.nativeRef, dst.nativeRef, dtype);
}

+ (void)divide:(double)scale src:(Mat*)src dst:(Mat*)dst {
    cv::divide(scale, src.nativeRef, dst.nativeRef);
}


//
//  void cv::scaleAdd(Mat src1, double alpha, Mat src2, Mat& dst)
//
+ (void)scaleAdd:(Mat*)src1 alpha:(double)alpha src2:(Mat*)src2 dst:(Mat*)dst {
    cv::scaleAdd(src1.nativeRef, alpha, src2.nativeRef, dst.nativeRef);
}


//
//  void cv::addWeighted(Mat src1, double alpha, Mat src2, double beta, double gamma, Mat& dst, int dtype = -1)
//
+ (void)addWeighted:(Mat*)src1 alpha:(double)alpha src2:(Mat*)src2 beta:(double)beta gamma:(double)gamma dst:(Mat*)dst dtype:(int)dtype {
    cv::addWeighted(src1.nativeRef, alpha, src2.nativeRef, beta, gamma, dst.nativeRef, dtype);
}

+ (void)addWeighted:(Mat*)src1 alpha:(double)alpha src2:(Mat*)src2 beta:(double)beta gamma:(double)gamma dst:(Mat*)dst {
    cv::addWeighted(src1.nativeRef, alpha, src2.nativeRef, beta, gamma, dst.nativeRef);
}


//
//  void cv::convertScaleAbs(Mat src, Mat& dst, double alpha = 1, double beta = 0)
//
+ (void)convertScaleAbs:(Mat*)src dst:(Mat*)dst alpha:(double)alpha beta:(double)beta {
    cv::convertScaleAbs(src.nativeRef, dst.nativeRef, alpha, beta);
}

+ (void)convertScaleAbs:(Mat*)src dst:(Mat*)dst alpha:(double)alpha {
    cv::convertScaleAbs(src.nativeRef, dst.nativeRef, alpha);
}

+ (void)convertScaleAbs:(Mat*)src dst:(Mat*)dst {
    cv::convertScaleAbs(src.nativeRef, dst.nativeRef);
}


//
//  void cv::convertFp16(Mat src, Mat& dst)
//
+ (void)convertFp16:(Mat*)src dst:(Mat*)dst {
    cv::convertFp16(src.nativeRef, dst.nativeRef);
}


//
//  void cv::LUT(Mat src, Mat lut, Mat& dst)
//
+ (void)LUT:(Mat*)src lut:(Mat*)lut dst:(Mat*)dst {
    cv::LUT(src.nativeRef, lut.nativeRef, dst.nativeRef);
}


//
//  Scalar cv::sum(Mat src)
//
+ (Scalar*)sumElems:(Mat*)src {
    cv::Scalar retVal = cv::sum(src.nativeRef);
    return [Scalar fromNative:retVal];
}


//
//  bool cv::hasNonZero(Mat src)
//
+ (BOOL)hasNonZero:(Mat*)src {
    bool retVal = cv::hasNonZero(src.nativeRef);
    return retVal;
}


//
//  int cv::countNonZero(Mat src)
//
+ (int)countNonZero:(Mat*)src {
    int retVal = cv::countNonZero(src.nativeRef);
    return retVal;
}


//
//  void cv::findNonZero(Mat src, Mat& idx)
//
+ (void)findNonZero:(Mat*)src idx:(Mat*)idx {
    cv::findNonZero(src.nativeRef, idx.nativeRef);
}


//
//  Scalar cv::mean(Mat src, Mat mask = Mat())
//
+ (Scalar*)mean:(Mat*)src mask:(Mat*)mask {
    cv::Scalar retVal = cv::mean(src.nativeRef, mask.nativeRef);
    return [Scalar fromNative:retVal];
}

+ (Scalar*)mean:(Mat*)src {
    cv::Scalar retVal = cv::mean(src.nativeRef);
    return [Scalar fromNative:retVal];
}


//
//  void cv::meanStdDev(Mat src, vector_double& mean, vector_double& stddev, Mat mask = Mat())
//
+ (void)meanStdDev:(Mat*)src mean:(DoubleVector*)mean stddev:(DoubleVector*)stddev mask:(Mat*)mask {
    cv::meanStdDev(src.nativeRef, mean.nativeRef, stddev.nativeRef, mask.nativeRef);
}

+ (void)meanStdDev:(Mat*)src mean:(DoubleVector*)mean stddev:(DoubleVector*)stddev {
    cv::meanStdDev(src.nativeRef, mean.nativeRef, stddev.nativeRef);
}


//
//  double cv::norm(Mat src1, NormTypes normType = NORM_L2, Mat mask = Mat())
//
+ (double)norm:(Mat*)src1 normType:(NormTypes)normType mask:(Mat*)mask {
    double retVal = cv::norm(src1.nativeRef, (cv::NormTypes)normType, mask.nativeRef);
    return retVal;
}

+ (double)norm:(Mat*)src1 normType:(NormTypes)normType {
    double retVal = cv::norm(src1.nativeRef, (cv::NormTypes)normType);
    return retVal;
}

+ (double)norm:(Mat*)src1 {
    double retVal = cv::norm(src1.nativeRef);
    return retVal;
}


//
//  double cv::norm(Mat src1, Mat src2, NormTypes normType = NORM_L2, Mat mask = Mat())
//
+ (double)norm:(Mat*)src1 src2:(Mat*)src2 normType:(NormTypes)normType mask:(Mat*)mask {
    double retVal = cv::norm(src1.nativeRef, src2.nativeRef, (cv::NormTypes)normType, mask.nativeRef);
    return retVal;
}

+ (double)norm:(Mat*)src1 src2:(Mat*)src2 normType:(NormTypes)normType {
    double retVal = cv::norm(src1.nativeRef, src2.nativeRef, (cv::NormTypes)normType);
    return retVal;
}

+ (double)norm:(Mat*)src1 src2:(Mat*)src2 {
    double retVal = cv::norm(src1.nativeRef, src2.nativeRef);
    return retVal;
}


//
//  double cv::PSNR(Mat src1, Mat src2, double R = 255.)
//
+ (double)PSNR:(Mat*)src1 src2:(Mat*)src2 R:(double)R {
    double retVal = cv::PSNR(src1.nativeRef, src2.nativeRef, R);
    return retVal;
}

+ (double)PSNR:(Mat*)src1 src2:(Mat*)src2 {
    double retVal = cv::PSNR(src1.nativeRef, src2.nativeRef);
    return retVal;
}


//
//  void cv::batchDistance(Mat src1, Mat src2, Mat& dist, int dtype, Mat& nidx, NormTypes normType = NORM_L2, int K = 0, Mat mask = Mat(), int update = 0, bool crosscheck = false)
//
+ (void)batchDistance:(Mat*)src1 src2:(Mat*)src2 dist:(Mat*)dist dtype:(int)dtype nidx:(Mat*)nidx normType:(NormTypes)normType K:(int)K mask:(Mat*)mask update:(int)update crosscheck:(BOOL)crosscheck {
    cv::batchDistance(src1.nativeRef, src2.nativeRef, dist.nativeRef, dtype, nidx.nativeRef, (cv::NormTypes)normType, K, mask.nativeRef, update, (bool)crosscheck);
}

+ (void)batchDistance:(Mat*)src1 src2:(Mat*)src2 dist:(Mat*)dist dtype:(int)dtype nidx:(Mat*)nidx normType:(NormTypes)normType K:(int)K mask:(Mat*)mask update:(int)update {
    cv::batchDistance(src1.nativeRef, src2.nativeRef, dist.nativeRef, dtype, nidx.nativeRef, (cv::NormTypes)normType, K, mask.nativeRef, update);
}

+ (void)batchDistance:(Mat*)src1 src2:(Mat*)src2 dist:(Mat*)dist dtype:(int)dtype nidx:(Mat*)nidx normType:(NormTypes)normType K:(int)K mask:(Mat*)mask {
    cv::batchDistance(src1.nativeRef, src2.nativeRef, dist.nativeRef, dtype, nidx.nativeRef, (cv::NormTypes)normType, K, mask.nativeRef);
}

+ (void)batchDistance:(Mat*)src1 src2:(Mat*)src2 dist:(Mat*)dist dtype:(int)dtype nidx:(Mat*)nidx normType:(NormTypes)normType K:(int)K {
    cv::batchDistance(src1.nativeRef, src2.nativeRef, dist.nativeRef, dtype, nidx.nativeRef, (cv::NormTypes)normType, K);
}

+ (void)batchDistance:(Mat*)src1 src2:(Mat*)src2 dist:(Mat*)dist dtype:(int)dtype nidx:(Mat*)nidx normType:(NormTypes)normType {
    cv::batchDistance(src1.nativeRef, src2.nativeRef, dist.nativeRef, dtype, nidx.nativeRef, (cv::NormTypes)normType);
}

+ (void)batchDistance:(Mat*)src1 src2:(Mat*)src2 dist:(Mat*)dist dtype:(int)dtype nidx:(Mat*)nidx {
    cv::batchDistance(src1.nativeRef, src2.nativeRef, dist.nativeRef, dtype, nidx.nativeRef);
}


//
//  void cv::normalize(Mat src, Mat& dst, double alpha = 1, double beta = 0, NormTypes norm_type = NORM_L2, int dtype = -1, Mat mask = Mat())
//
+ (void)normalize:(Mat*)src dst:(Mat*)dst alpha:(double)alpha beta:(double)beta norm_type:(NormTypes)norm_type dtype:(int)dtype mask:(Mat*)mask {
    cv::normalize(src.nativeRef, dst.nativeRef, alpha, beta, (cv::NormTypes)norm_type, dtype, mask.nativeRef);
}

+ (void)normalize:(Mat*)src dst:(Mat*)dst alpha:(double)alpha beta:(double)beta norm_type:(NormTypes)norm_type dtype:(int)dtype {
    cv::normalize(src.nativeRef, dst.nativeRef, alpha, beta, (cv::NormTypes)norm_type, dtype);
}

+ (void)normalize:(Mat*)src dst:(Mat*)dst alpha:(double)alpha beta:(double)beta norm_type:(NormTypes)norm_type {
    cv::normalize(src.nativeRef, dst.nativeRef, alpha, beta, (cv::NormTypes)norm_type);
}

+ (void)normalize:(Mat*)src dst:(Mat*)dst alpha:(double)alpha beta:(double)beta {
    cv::normalize(src.nativeRef, dst.nativeRef, alpha, beta);
}

+ (void)normalize:(Mat*)src dst:(Mat*)dst alpha:(double)alpha {
    cv::normalize(src.nativeRef, dst.nativeRef, alpha);
}

+ (void)normalize:(Mat*)src dst:(Mat*)dst {
    cv::normalize(src.nativeRef, dst.nativeRef);
}


//
//  void cv::reduceArgMin(Mat src, Mat& dst, int axis, bool lastIndex = false)
//
+ (void)reduceArgMin:(Mat*)src dst:(Mat*)dst axis:(int)axis lastIndex:(BOOL)lastIndex {
    cv::reduceArgMin(src.nativeRef, dst.nativeRef, axis, (bool)lastIndex);
}

+ (void)reduceArgMin:(Mat*)src dst:(Mat*)dst axis:(int)axis {
    cv::reduceArgMin(src.nativeRef, dst.nativeRef, axis);
}


//
//  void cv::reduceArgMax(Mat src, Mat& dst, int axis, bool lastIndex = false)
//
+ (void)reduceArgMax:(Mat*)src dst:(Mat*)dst axis:(int)axis lastIndex:(BOOL)lastIndex {
    cv::reduceArgMax(src.nativeRef, dst.nativeRef, axis, (bool)lastIndex);
}

+ (void)reduceArgMax:(Mat*)src dst:(Mat*)dst axis:(int)axis {
    cv::reduceArgMax(src.nativeRef, dst.nativeRef, axis);
}


//
//  void cv::reduce(Mat src, Mat& dst, int dim, int rtype, int dtype = -1)
//
+ (void)reduce:(Mat*)src dst:(Mat*)dst dim:(int)dim rtype:(int)rtype dtype:(int)dtype {
    cv::reduce(src.nativeRef, dst.nativeRef, dim, rtype, dtype);
}

+ (void)reduce:(Mat*)src dst:(Mat*)dst dim:(int)dim rtype:(int)rtype {
    cv::reduce(src.nativeRef, dst.nativeRef, dim, rtype);
}


//
//  void cv::merge(vector_Mat mv, Mat& dst)
//
+ (void)merge:(NSArray<Mat*>*)mv dst:(Mat*)dst {
    OBJC2CV(cv::Mat, Mat, mvVector, mv);
    cv::merge(mvVector, dst.nativeRef);
}


//
//  void cv::split(Mat m, vector_Mat& mv)
//
+ (void)split:(Mat*)m mv:(NSMutableArray<Mat*>*)mv {
    OBJC2CV(cv::Mat, Mat, mvVector, mv);
    cv::split(m.nativeRef, mvVector);
    CV2OBJC(cv::Mat, Mat, mvVector, mv);
}


//
//  void cv::mixChannels(vector_Mat src, vector_Mat dst, vector_int fromTo)
//
+ (void)mixChannels:(NSArray<Mat*>*)src dst:(NSArray<Mat*>*)dst fromTo:(IntVector*)fromTo {
    OBJC2CV(cv::Mat, Mat, srcVector, src);
    OBJC2CV(cv::Mat, Mat, dstVector, dst);
    cv::mixChannels(srcVector, dstVector, fromTo.nativeRef);
}


//
//  void cv::extractChannel(Mat src, Mat& dst, int coi)
//
+ (void)extractChannel:(Mat*)src dst:(Mat*)dst coi:(int)coi {
    cv::extractChannel(src.nativeRef, dst.nativeRef, coi);
}


//
//  void cv::insertChannel(Mat src, Mat& dst, int coi)
//
+ (void)insertChannel:(Mat*)src dst:(Mat*)dst coi:(int)coi {
    cv::insertChannel(src.nativeRef, dst.nativeRef, coi);
}


//
//  void cv::flip(Mat src, Mat& dst, int flipCode)
//
+ (void)flip:(Mat*)src dst:(Mat*)dst flipCode:(int)flipCode {
    cv::flip(src.nativeRef, dst.nativeRef, flipCode);
}


//
//  void cv::flipND(Mat src, Mat& dst, int axis)
//
+ (void)flipND:(Mat*)src dst:(Mat*)dst axis:(int)axis {
    cv::flipND(src.nativeRef, dst.nativeRef, axis);
}


//
//  void cv::broadcast(Mat src, Mat shape, Mat& dst)
//
+ (void)broadcast:(Mat*)src shape:(Mat*)shape dst:(Mat*)dst {
    cv::broadcast(src.nativeRef, shape.nativeRef, dst.nativeRef);
}


//
//  void cv::rotate(Mat src, Mat& dst, RotateFlags rotateCode)
//
+ (void)rotate:(Mat*)src dst:(Mat*)dst rotateCode:(RotateFlags)rotateCode {
    cv::rotate(src.nativeRef, dst.nativeRef, (cv::RotateFlags)rotateCode);
}


//
//  void cv::repeat(Mat src, int ny, int nx, Mat& dst)
//
+ (void)repeat:(Mat*)src ny:(int)ny nx:(int)nx dst:(Mat*)dst {
    cv::repeat(src.nativeRef, ny, nx, dst.nativeRef);
}


//
//  void cv::hconcat(vector_Mat src, Mat& dst)
//
+ (void)hconcat:(NSArray<Mat*>*)src dst:(Mat*)dst {
    OBJC2CV(cv::Mat, Mat, srcVector, src);
    cv::hconcat(srcVector, dst.nativeRef);
}


//
//  void cv::vconcat(vector_Mat src, Mat& dst)
//
+ (void)vconcat:(NSArray<Mat*>*)src dst:(Mat*)dst {
    OBJC2CV(cv::Mat, Mat, srcVector, src);
    cv::vconcat(srcVector, dst.nativeRef);
}


//
//  void cv::bitwise_and(Mat src1, Mat src2, Mat& dst, Mat mask = Mat())
//
+ (void)bitwise_and:(Mat*)src1 src2:(Mat*)src2 dst:(Mat*)dst mask:(Mat*)mask {
    cv::bitwise_and(src1.nativeRef, src2.nativeRef, dst.nativeRef, mask.nativeRef);
}

+ (void)bitwise_and:(Mat*)src1 src2:(Mat*)src2 dst:(Mat*)dst {
    cv::bitwise_and(src1.nativeRef, src2.nativeRef, dst.nativeRef);
}


//
//  void cv::bitwise_or(Mat src1, Mat src2, Mat& dst, Mat mask = Mat())
//
+ (void)bitwise_or:(Mat*)src1 src2:(Mat*)src2 dst:(Mat*)dst mask:(Mat*)mask {
    cv::bitwise_or(src1.nativeRef, src2.nativeRef, dst.nativeRef, mask.nativeRef);
}

+ (void)bitwise_or:(Mat*)src1 src2:(Mat*)src2 dst:(Mat*)dst {
    cv::bitwise_or(src1.nativeRef, src2.nativeRef, dst.nativeRef);
}


//
//  void cv::bitwise_xor(Mat src1, Mat src2, Mat& dst, Mat mask = Mat())
//
+ (void)bitwise_xor:(Mat*)src1 src2:(Mat*)src2 dst:(Mat*)dst mask:(Mat*)mask {
    cv::bitwise_xor(src1.nativeRef, src2.nativeRef, dst.nativeRef, mask.nativeRef);
}

+ (void)bitwise_xor:(Mat*)src1 src2:(Mat*)src2 dst:(Mat*)dst {
    cv::bitwise_xor(src1.nativeRef, src2.nativeRef, dst.nativeRef);
}


//
//  void cv::bitwise_not(Mat src, Mat& dst, Mat mask = Mat())
//
+ (void)bitwise_not:(Mat*)src dst:(Mat*)dst mask:(Mat*)mask {
    cv::bitwise_not(src.nativeRef, dst.nativeRef, mask.nativeRef);
}

+ (void)bitwise_not:(Mat*)src dst:(Mat*)dst {
    cv::bitwise_not(src.nativeRef, dst.nativeRef);
}


//
//  void cv::absdiff(Mat src1, Mat src2, Mat& dst)
//
+ (void)absdiff:(Mat*)src1 src2:(Mat*)src2 dst:(Mat*)dst {
    cv::absdiff(src1.nativeRef, src2.nativeRef, dst.nativeRef);
}


//
//  void cv::copyTo(Mat src, Mat& dst, Mat mask)
//
+ (void)copyTo:(Mat*)src dst:(Mat*)dst mask:(Mat*)mask {
    cv::copyTo(src.nativeRef, dst.nativeRef, mask.nativeRef);
}


//
//  void cv::inRange(Mat src, Scalar lowerb, Scalar upperb, Mat& dst)
//
+ (void)inRange:(Mat*)src lowerb:(Scalar*)lowerb upperb:(Scalar*)upperb dst:(Mat*)dst {
    cv::inRange(src.nativeRef, lowerb.nativeRef, upperb.nativeRef, dst.nativeRef);
}


//
//  void cv::compare(Mat src1, Mat src2, Mat& dst, CmpTypes cmpop)
//
+ (void)compare:(Mat*)src1 src2:(Mat*)src2 dst:(Mat*)dst cmpop:(CmpTypes)cmpop {
    cv::compare(src1.nativeRef, src2.nativeRef, dst.nativeRef, (cv::CmpTypes)cmpop);
}


//
//  void cv::min(Mat src1, Mat src2, Mat& dst)
//
+ (void)min:(Mat*)src1 src2:(Mat*)src2 dst:(Mat*)dst {
    cv::min(src1.nativeRef, src2.nativeRef, dst.nativeRef);
}


//
//  void cv::max(Mat src1, Mat src2, Mat& dst)
//
+ (void)max:(Mat*)src1 src2:(Mat*)src2 dst:(Mat*)dst {
    cv::max(src1.nativeRef, src2.nativeRef, dst.nativeRef);
}


//
//  void cv::sqrt(Mat src, Mat& dst)
//
+ (void)sqrt:(Mat*)src dst:(Mat*)dst {
    cv::sqrt(src.nativeRef, dst.nativeRef);
}


//
//  void cv::pow(Mat src, double power, Mat& dst)
//
+ (void)pow:(Mat*)src power:(double)power dst:(Mat*)dst {
    cv::pow(src.nativeRef, power, dst.nativeRef);
}


//
//  void cv::exp(Mat src, Mat& dst)
//
+ (void)exp:(Mat*)src dst:(Mat*)dst {
    cv::exp(src.nativeRef, dst.nativeRef);
}


//
//  void cv::log(Mat src, Mat& dst)
//
+ (void)log:(Mat*)src dst:(Mat*)dst {
    cv::log(src.nativeRef, dst.nativeRef);
}


//
//  void cv::polarToCart(Mat magnitude, Mat angle, Mat& x, Mat& y, bool angleInDegrees = false)
//
+ (void)polarToCart:(Mat*)magnitude angle:(Mat*)angle x:(Mat*)x y:(Mat*)y angleInDegrees:(BOOL)angleInDegrees {
    cv::polarToCart(magnitude.nativeRef, angle.nativeRef, x.nativeRef, y.nativeRef, (bool)angleInDegrees);
}

+ (void)polarToCart:(Mat*)magnitude angle:(Mat*)angle x:(Mat*)x y:(Mat*)y {
    cv::polarToCart(magnitude.nativeRef, angle.nativeRef, x.nativeRef, y.nativeRef);
}


//
//  void cv::cartToPolar(Mat x, Mat y, Mat& magnitude, Mat& angle, bool angleInDegrees = false)
//
+ (void)cartToPolar:(Mat*)x y:(Mat*)y magnitude:(Mat*)magnitude angle:(Mat*)angle angleInDegrees:(BOOL)angleInDegrees {
    cv::cartToPolar(x.nativeRef, y.nativeRef, magnitude.nativeRef, angle.nativeRef, (bool)angleInDegrees);
}

+ (void)cartToPolar:(Mat*)x y:(Mat*)y magnitude:(Mat*)magnitude angle:(Mat*)angle {
    cv::cartToPolar(x.nativeRef, y.nativeRef, magnitude.nativeRef, angle.nativeRef);
}


//
//  void cv::phase(Mat x, Mat y, Mat& angle, bool angleInDegrees = false)
//
+ (void)phase:(Mat*)x y:(Mat*)y angle:(Mat*)angle angleInDegrees:(BOOL)angleInDegrees {
    cv::phase(x.nativeRef, y.nativeRef, angle.nativeRef, (bool)angleInDegrees);
}

+ (void)phase:(Mat*)x y:(Mat*)y angle:(Mat*)angle {
    cv::phase(x.nativeRef, y.nativeRef, angle.nativeRef);
}


//
//  void cv::magnitude(Mat x, Mat y, Mat& magnitude)
//
+ (void)magnitude:(Mat*)x y:(Mat*)y magnitude:(Mat*)magnitude {
    cv::magnitude(x.nativeRef, y.nativeRef, magnitude.nativeRef);
}


//
//  bool cv::checkRange(Mat a, bool quiet = true,  _hidden_ * pos = 0, double minVal = -DBL_MAX, double maxVal = DBL_MAX)
//
+ (BOOL)checkRange:(Mat*)a quiet:(BOOL)quiet minVal:(double)minVal maxVal:(double)maxVal {
    bool retVal = cv::checkRange(a.nativeRef, (bool)quiet, 0, minVal, maxVal);
    return retVal;
}

+ (BOOL)checkRange:(Mat*)a quiet:(BOOL)quiet minVal:(double)minVal {
    bool retVal = cv::checkRange(a.nativeRef, (bool)quiet, 0, minVal);
    return retVal;
}

+ (BOOL)checkRange:(Mat*)a quiet:(BOOL)quiet {
    bool retVal = cv::checkRange(a.nativeRef, (bool)quiet, 0);
    return retVal;
}

+ (BOOL)checkRange:(Mat*)a {
    bool retVal = cv::checkRange(a.nativeRef);
    return retVal;
}


//
//  void cv::patchNaNs(Mat& a, double val = 0)
//
+ (void)patchNaNs:(Mat*)a val:(double)val {
    cv::patchNaNs(a.nativeRef, val);
}

+ (void)patchNaNs:(Mat*)a {
    cv::patchNaNs(a.nativeRef);
}


//
//  void cv::gemm(Mat src1, Mat src2, double alpha, Mat src3, double beta, Mat& dst, int flags = 0)
//
+ (void)gemm:(Mat*)src1 src2:(Mat*)src2 alpha:(double)alpha src3:(Mat*)src3 beta:(double)beta dst:(Mat*)dst flags:(int)flags {
    cv::gemm(src1.nativeRef, src2.nativeRef, alpha, src3.nativeRef, beta, dst.nativeRef, flags);
}

+ (void)gemm:(Mat*)src1 src2:(Mat*)src2 alpha:(double)alpha src3:(Mat*)src3 beta:(double)beta dst:(Mat*)dst {
    cv::gemm(src1.nativeRef, src2.nativeRef, alpha, src3.nativeRef, beta, dst.nativeRef);
}


//
//  void cv::mulTransposed(Mat src, Mat& dst, bool aTa, Mat delta = Mat(), double scale = 1, int dtype = -1)
//
+ (void)mulTransposed:(Mat*)src dst:(Mat*)dst aTa:(BOOL)aTa delta:(Mat*)delta scale:(double)scale dtype:(int)dtype {
    cv::mulTransposed(src.nativeRef, dst.nativeRef, (bool)aTa, delta.nativeRef, scale, dtype);
}

+ (void)mulTransposed:(Mat*)src dst:(Mat*)dst aTa:(BOOL)aTa delta:(Mat*)delta scale:(double)scale {
    cv::mulTransposed(src.nativeRef, dst.nativeRef, (bool)aTa, delta.nativeRef, scale);
}

+ (void)mulTransposed:(Mat*)src dst:(Mat*)dst aTa:(BOOL)aTa delta:(Mat*)delta {
    cv::mulTransposed(src.nativeRef, dst.nativeRef, (bool)aTa, delta.nativeRef);
}

+ (void)mulTransposed:(Mat*)src dst:(Mat*)dst aTa:(BOOL)aTa {
    cv::mulTransposed(src.nativeRef, dst.nativeRef, (bool)aTa);
}


//
//  void cv::transpose(Mat src, Mat& dst)
//
+ (void)transpose:(Mat*)src dst:(Mat*)dst {
    cv::transpose(src.nativeRef, dst.nativeRef);
}


//
//  void cv::transposeND(Mat src, vector_int order, Mat& dst)
//
+ (void)transposeND:(Mat*)src order:(IntVector*)order dst:(Mat*)dst {
    cv::transposeND(src.nativeRef, order.nativeRef, dst.nativeRef);
}


//
//  void cv::transform(Mat src, Mat& dst, Mat m)
//
+ (void)transform:(Mat*)src dst:(Mat*)dst m:(Mat*)m {
    cv::transform(src.nativeRef, dst.nativeRef, m.nativeRef);
}


//
//  void cv::perspectiveTransform(Mat src, Mat& dst, Mat m)
//
+ (void)perspectiveTransform:(Mat*)src dst:(Mat*)dst m:(Mat*)m {
    cv::perspectiveTransform(src.nativeRef, dst.nativeRef, m.nativeRef);
}


//
//  void cv::completeSymm(Mat& m, bool lowerToUpper = false)
//
+ (void)completeSymm:(Mat*)m lowerToUpper:(BOOL)lowerToUpper {
    cv::completeSymm(m.nativeRef, (bool)lowerToUpper);
}

+ (void)completeSymm:(Mat*)m {
    cv::completeSymm(m.nativeRef);
}


//
//  void cv::setIdentity(Mat& mtx, Scalar s = Scalar(1))
//
+ (void)setIdentity:(Mat*)mtx s:(Scalar*)s {
    cv::setIdentity(mtx.nativeRef, s.nativeRef);
}

+ (void)setIdentity:(Mat*)mtx {
    cv::setIdentity(mtx.nativeRef);
}


//
//  double cv::determinant(Mat mtx)
//
+ (double)determinant:(Mat*)mtx {
    double retVal = cv::determinant(mtx.nativeRef);
    return retVal;
}


//
//  Scalar cv::trace(Mat mtx)
//
+ (Scalar*)trace:(Mat*)mtx {
    cv::Scalar retVal = cv::trace(mtx.nativeRef);
    return [Scalar fromNative:retVal];
}


//
//  double cv::invert(Mat src, Mat& dst, int flags = DECOMP_LU)
//
+ (double)invert:(Mat*)src dst:(Mat*)dst flags:(int)flags {
    double retVal = cv::invert(src.nativeRef, dst.nativeRef, flags);
    return retVal;
}

+ (double)invert:(Mat*)src dst:(Mat*)dst {
    double retVal = cv::invert(src.nativeRef, dst.nativeRef);
    return retVal;
}


//
//  bool cv::solve(Mat src1, Mat src2, Mat& dst, int flags = DECOMP_LU)
//
+ (BOOL)solve:(Mat*)src1 src2:(Mat*)src2 dst:(Mat*)dst flags:(int)flags {
    bool retVal = cv::solve(src1.nativeRef, src2.nativeRef, dst.nativeRef, flags);
    return retVal;
}

+ (BOOL)solve:(Mat*)src1 src2:(Mat*)src2 dst:(Mat*)dst {
    bool retVal = cv::solve(src1.nativeRef, src2.nativeRef, dst.nativeRef);
    return retVal;
}


//
//  void cv::sort(Mat src, Mat& dst, int flags)
//
+ (void)sort:(Mat*)src dst:(Mat*)dst flags:(int)flags {
    cv::sort(src.nativeRef, dst.nativeRef, flags);
}


//
//  void cv::sortIdx(Mat src, Mat& dst, int flags)
//
+ (void)sortIdx:(Mat*)src dst:(Mat*)dst flags:(int)flags {
    cv::sortIdx(src.nativeRef, dst.nativeRef, flags);
}


//
//  int cv::solveCubic(Mat coeffs, Mat& roots)
//
+ (int)solveCubic:(Mat*)coeffs roots:(Mat*)roots {
    int retVal = cv::solveCubic(coeffs.nativeRef, roots.nativeRef);
    return retVal;
}


//
//  double cv::solvePoly(Mat coeffs, Mat& roots, int maxIters = 300)
//
+ (double)solvePoly:(Mat*)coeffs roots:(Mat*)roots maxIters:(int)maxIters {
    double retVal = cv::solvePoly(coeffs.nativeRef, roots.nativeRef, maxIters);
    return retVal;
}

+ (double)solvePoly:(Mat*)coeffs roots:(Mat*)roots {
    double retVal = cv::solvePoly(coeffs.nativeRef, roots.nativeRef);
    return retVal;
}


//
//  bool cv::eigen(Mat src, Mat& eigenvalues, Mat& eigenvectors = Mat())
//
+ (BOOL)eigen:(Mat*)src eigenvalues:(Mat*)eigenvalues eigenvectors:(Mat*)eigenvectors {
    bool retVal = cv::eigen(src.nativeRef, eigenvalues.nativeRef, eigenvectors.nativeRef);
    return retVal;
}

+ (BOOL)eigen:(Mat*)src eigenvalues:(Mat*)eigenvalues {
    bool retVal = cv::eigen(src.nativeRef, eigenvalues.nativeRef);
    return retVal;
}


//
//  void cv::eigenNonSymmetric(Mat src, Mat& eigenvalues, Mat& eigenvectors)
//
+ (void)eigenNonSymmetric:(Mat*)src eigenvalues:(Mat*)eigenvalues eigenvectors:(Mat*)eigenvectors {
    cv::eigenNonSymmetric(src.nativeRef, eigenvalues.nativeRef, eigenvectors.nativeRef);
}


//
//  void cv::calcCovarMatrix(Mat samples, Mat& covar, Mat& mean, int flags, int ctype = CV_64F)
//
+ (void)calcCovarMatrix:(Mat*)samples covar:(Mat*)covar mean:(Mat*)mean flags:(int)flags ctype:(int)ctype {
    cv::calcCovarMatrix(samples.nativeRef, covar.nativeRef, mean.nativeRef, flags, ctype);
}

+ (void)calcCovarMatrix:(Mat*)samples covar:(Mat*)covar mean:(Mat*)mean flags:(int)flags {
    cv::calcCovarMatrix(samples.nativeRef, covar.nativeRef, mean.nativeRef, flags);
}


//
//  void cv::PCACompute(Mat data, Mat& mean, Mat& eigenvectors, int maxComponents = 0)
//
+ (void)PCACompute:(Mat*)data mean:(Mat*)mean eigenvectors:(Mat*)eigenvectors maxComponents:(int)maxComponents {
    cv::PCACompute(data.nativeRef, mean.nativeRef, eigenvectors.nativeRef, maxComponents);
}

+ (void)PCACompute:(Mat*)data mean:(Mat*)mean eigenvectors:(Mat*)eigenvectors {
    cv::PCACompute(data.nativeRef, mean.nativeRef, eigenvectors.nativeRef);
}


//
//  void cv::PCACompute(Mat data, Mat& mean, Mat& eigenvectors, Mat& eigenvalues, int maxComponents = 0)
//
+ (void)PCACompute2:(Mat*)data mean:(Mat*)mean eigenvectors:(Mat*)eigenvectors eigenvalues:(Mat*)eigenvalues maxComponents:(int)maxComponents {
    cv::PCACompute(data.nativeRef, mean.nativeRef, eigenvectors.nativeRef, eigenvalues.nativeRef, maxComponents);
}

+ (void)PCACompute2:(Mat*)data mean:(Mat*)mean eigenvectors:(Mat*)eigenvectors eigenvalues:(Mat*)eigenvalues {
    cv::PCACompute(data.nativeRef, mean.nativeRef, eigenvectors.nativeRef, eigenvalues.nativeRef);
}


//
//  void cv::PCACompute(Mat data, Mat& mean, Mat& eigenvectors, double retainedVariance)
//
+ (void)PCACompute:(Mat*)data mean:(Mat*)mean eigenvectors:(Mat*)eigenvectors retainedVariance:(double)retainedVariance {
    cv::PCACompute(data.nativeRef, mean.nativeRef, eigenvectors.nativeRef, retainedVariance);
}


//
//  void cv::PCACompute(Mat data, Mat& mean, Mat& eigenvectors, Mat& eigenvalues, double retainedVariance)
//
+ (void)PCACompute2:(Mat*)data mean:(Mat*)mean eigenvectors:(Mat*)eigenvectors eigenvalues:(Mat*)eigenvalues retainedVariance:(double)retainedVariance {
    cv::PCACompute(data.nativeRef, mean.nativeRef, eigenvectors.nativeRef, eigenvalues.nativeRef, retainedVariance);
}


//
//  void cv::PCAProject(Mat data, Mat mean, Mat eigenvectors, Mat& result)
//
+ (void)PCAProject:(Mat*)data mean:(Mat*)mean eigenvectors:(Mat*)eigenvectors result:(Mat*)result {
    cv::PCAProject(data.nativeRef, mean.nativeRef, eigenvectors.nativeRef, result.nativeRef);
}


//
//  void cv::PCABackProject(Mat data, Mat mean, Mat eigenvectors, Mat& result)
//
+ (void)PCABackProject:(Mat*)data mean:(Mat*)mean eigenvectors:(Mat*)eigenvectors result:(Mat*)result {
    cv::PCABackProject(data.nativeRef, mean.nativeRef, eigenvectors.nativeRef, result.nativeRef);
}


//
//  void cv::SVDecomp(Mat src, Mat& w, Mat& u, Mat& vt, int flags = 0)
//
+ (void)SVDecomp:(Mat*)src w:(Mat*)w u:(Mat*)u vt:(Mat*)vt flags:(int)flags {
    cv::SVDecomp(src.nativeRef, w.nativeRef, u.nativeRef, vt.nativeRef, flags);
}

+ (void)SVDecomp:(Mat*)src w:(Mat*)w u:(Mat*)u vt:(Mat*)vt {
    cv::SVDecomp(src.nativeRef, w.nativeRef, u.nativeRef, vt.nativeRef);
}


//
//  void cv::SVBackSubst(Mat w, Mat u, Mat vt, Mat rhs, Mat& dst)
//
+ (void)SVBackSubst:(Mat*)w u:(Mat*)u vt:(Mat*)vt rhs:(Mat*)rhs dst:(Mat*)dst {
    cv::SVBackSubst(w.nativeRef, u.nativeRef, vt.nativeRef, rhs.nativeRef, dst.nativeRef);
}


//
//  double cv::Mahalanobis(Mat v1, Mat v2, Mat icovar)
//
+ (double)Mahalanobis:(Mat*)v1 v2:(Mat*)v2 icovar:(Mat*)icovar {
    double retVal = cv::Mahalanobis(v1.nativeRef, v2.nativeRef, icovar.nativeRef);
    return retVal;
}


//
//  void cv::dft(Mat src, Mat& dst, int flags = 0, int nonzeroRows = 0)
//
+ (void)dft:(Mat*)src dst:(Mat*)dst flags:(int)flags nonzeroRows:(int)nonzeroRows {
    cv::dft(src.nativeRef, dst.nativeRef, flags, nonzeroRows);
}

+ (void)dft:(Mat*)src dst:(Mat*)dst flags:(int)flags {
    cv::dft(src.nativeRef, dst.nativeRef, flags);
}

+ (void)dft:(Mat*)src dst:(Mat*)dst {
    cv::dft(src.nativeRef, dst.nativeRef);
}


//
//  void cv::idft(Mat src, Mat& dst, int flags = 0, int nonzeroRows = 0)
//
+ (void)idft:(Mat*)src dst:(Mat*)dst flags:(int)flags nonzeroRows:(int)nonzeroRows {
    cv::idft(src.nativeRef, dst.nativeRef, flags, nonzeroRows);
}

+ (void)idft:(Mat*)src dst:(Mat*)dst flags:(int)flags {
    cv::idft(src.nativeRef, dst.nativeRef, flags);
}

+ (void)idft:(Mat*)src dst:(Mat*)dst {
    cv::idft(src.nativeRef, dst.nativeRef);
}


//
//  void cv::dct(Mat src, Mat& dst, int flags = 0)
//
+ (void)dct:(Mat*)src dst:(Mat*)dst flags:(int)flags {
    cv::dct(src.nativeRef, dst.nativeRef, flags);
}

+ (void)dct:(Mat*)src dst:(Mat*)dst {
    cv::dct(src.nativeRef, dst.nativeRef);
}


//
//  void cv::idct(Mat src, Mat& dst, int flags = 0)
//
+ (void)idct:(Mat*)src dst:(Mat*)dst flags:(int)flags {
    cv::idct(src.nativeRef, dst.nativeRef, flags);
}

+ (void)idct:(Mat*)src dst:(Mat*)dst {
    cv::idct(src.nativeRef, dst.nativeRef);
}


//
//  void cv::mulSpectrums(Mat a, Mat b, Mat& c, int flags, bool conjB = false)
//
+ (void)mulSpectrums:(Mat*)a b:(Mat*)b c:(Mat*)c flags:(int)flags conjB:(BOOL)conjB {
    cv::mulSpectrums(a.nativeRef, b.nativeRef, c.nativeRef, flags, (bool)conjB);
}

+ (void)mulSpectrums:(Mat*)a b:(Mat*)b c:(Mat*)c flags:(int)flags {
    cv::mulSpectrums(a.nativeRef, b.nativeRef, c.nativeRef, flags);
}


//
//  int cv::getOptimalDFTSize(int vecsize)
//
+ (int)getOptimalDFTSize:(int)vecsize {
    int retVal = cv::getOptimalDFTSize(vecsize);
    return retVal;
}


//
//  void cv::setRNGSeed(int seed)
//
+ (void)setRNGSeed:(int)seed {
    cv::setRNGSeed(seed);
}


//
//  void cv::randu(Mat& dst, double low, double high)
//
+ (void)randu:(Mat*)dst low:(double)low high:(double)high {
    cv::randu(dst.nativeRef, low, high);
}


//
//  void cv::randn(Mat& dst, double mean, double stddev)
//
+ (void)randn:(Mat*)dst mean:(double)mean stddev:(double)stddev {
    cv::randn(dst.nativeRef, mean, stddev);
}


//
//  void cv::randShuffle(Mat& dst, double iterFactor = 1.,  _hidden_ * rng = 0)
//
+ (void)randShuffle:(Mat*)dst iterFactor:(double)iterFactor {
    cv::randShuffle(dst.nativeRef, iterFactor, 0);
}

+ (void)randShuffle:(Mat*)dst {
    cv::randShuffle(dst.nativeRef);
}


//
//  double cv::kmeans(Mat data, int K, Mat& bestLabels, TermCriteria criteria, int attempts, int flags, Mat& centers = Mat())
//
+ (double)kmeans:(Mat*)data K:(int)K bestLabels:(Mat*)bestLabels criteria:(TermCriteria*)criteria attempts:(int)attempts flags:(int)flags centers:(Mat*)centers {
    double retVal = cv::kmeans(data.nativeRef, K, bestLabels.nativeRef, criteria.nativeRef, attempts, flags, centers.nativeRef);
    return retVal;
}

+ (double)kmeans:(Mat*)data K:(int)K bestLabels:(Mat*)bestLabels criteria:(TermCriteria*)criteria attempts:(int)attempts flags:(int)flags {
    double retVal = cv::kmeans(data.nativeRef, K, bestLabels.nativeRef, criteria.nativeRef, attempts, flags);
    return retVal;
}


//
//  void cv::setNumThreads(int nthreads)
//
+ (void)setNumThreads:(int)nthreads {
    cv::setNumThreads(nthreads);
}


//
//  int cv::getNumThreads()
//
+ (int)getNumThreads {
    int retVal = cv::getNumThreads();
    return retVal;
}


//
//  int cv::getThreadNum()
//
+ (int)getThreadNum {
    int retVal = cv::getThreadNum();
    return retVal;
}


//
//  String cv::getBuildInformation()
//
+ (NSString*)getBuildInformation {
    cv::String retVal = cv::getBuildInformation();
    return [NSString stringWithUTF8String:retVal.c_str()];
}


//
//  String cv::getVersionString()
//
+ (NSString*)getVersionString {
    cv::String retVal = cv::getVersionString();
    return [NSString stringWithUTF8String:retVal.c_str()];
}


//
//  int cv::getVersionMajor()
//
+ (int)getVersionMajor {
    int retVal = cv::getVersionMajor();
    return retVal;
}


//
//  int cv::getVersionMinor()
//
+ (int)getVersionMinor {
    int retVal = cv::getVersionMinor();
    return retVal;
}


//
//  int cv::getVersionRevision()
//
+ (int)getVersionRevision {
    int retVal = cv::getVersionRevision();
    return retVal;
}


//
//  int64 cv::getTickCount()
//
+ (long)getTickCount {
    int64 retVal = cv::getTickCount();
    return retVal;
}


//
//  double cv::getTickFrequency()
//
+ (double)getTickFrequency {
    double retVal = cv::getTickFrequency();
    return retVal;
}


//
//  int64 cv::getCPUTickCount()
//
+ (long)getCPUTickCount {
    int64 retVal = cv::getCPUTickCount();
    return retVal;
}


//
//  String cv::getHardwareFeatureName(int feature)
//
+ (NSString*)getHardwareFeatureName:(int)feature {
    cv::String retVal = cv::getHardwareFeatureName(feature);
    return [NSString stringWithUTF8String:retVal.c_str()];
}


//
//  string cv::getCPUFeaturesLine()
//
+ (NSString*)getCPUFeaturesLine {
    std::string retVal = cv::getCPUFeaturesLine();
    return [NSString stringWithUTF8String:retVal.c_str()];
}


//
//  int cv::getNumberOfCPUs()
//
+ (int)getNumberOfCPUs {
    int retVal = cv::getNumberOfCPUs();
    return retVal;
}


//
//  String cv::samples::findFile(String relative_path, bool required = true, bool silentMode = false)
//
+ (NSString*)findFile:(NSString*)relative_path required:(BOOL)required silentMode:(BOOL)silentMode {
    cv::String retVal = cv::samples::findFile(cv::String(relative_path.UTF8String), (bool)required, (bool)silentMode);
    return [NSString stringWithUTF8String:retVal.c_str()];
}

+ (NSString*)findFile:(NSString*)relative_path required:(BOOL)required {
    cv::String retVal = cv::samples::findFile(cv::String(relative_path.UTF8String), (bool)required);
    return [NSString stringWithUTF8String:retVal.c_str()];
}

+ (NSString*)findFile:(NSString*)relative_path {
    cv::String retVal = cv::samples::findFile(cv::String(relative_path.UTF8String));
    return [NSString stringWithUTF8String:retVal.c_str()];
}


//
//  String cv::samples::findFileOrKeep(String relative_path, bool silentMode = false)
//
+ (NSString*)findFileOrKeep:(NSString*)relative_path silentMode:(BOOL)silentMode {
    cv::String retVal = cv::samples::findFileOrKeep(cv::String(relative_path.UTF8String), (bool)silentMode);
    return [NSString stringWithUTF8String:retVal.c_str()];
}

+ (NSString*)findFileOrKeep:(NSString*)relative_path {
    cv::String retVal = cv::samples::findFileOrKeep(cv::String(relative_path.UTF8String));
    return [NSString stringWithUTF8String:retVal.c_str()];
}


//
//  void cv::samples::addSamplesDataSearchPath(String path)
//
+ (void)addSamplesDataSearchPath:(NSString*)path {
    cv::samples::addSamplesDataSearchPath(cv::String(path.UTF8String));
}


//
//  void cv::samples::addSamplesDataSearchSubDirectory(String subdir)
//
+ (void)addSamplesDataSearchSubDirectory:(NSString*)subdir {
    cv::samples::addSamplesDataSearchSubDirectory(cv::String(subdir.UTF8String));
}


//
//  void cv::add(Mat src1, Scalar srcScalar, Mat& dst, Mat mask = Mat(), int dtype = -1)
//
+ (void)add:(Mat*)src1 srcScalar:(Scalar*)srcScalar dst:(Mat*)dst mask:(Mat*)mask dtype:(int)dtype {
    cv::add(src1.nativeRef, srcScalar.nativeRef, dst.nativeRef, mask.nativeRef, dtype);
}

+ (void)add:(Mat*)src1 srcScalar:(Scalar*)srcScalar dst:(Mat*)dst mask:(Mat*)mask {
    cv::add(src1.nativeRef, srcScalar.nativeRef, dst.nativeRef, mask.nativeRef);
}

+ (void)add:(Mat*)src1 srcScalar:(Scalar*)srcScalar dst:(Mat*)dst {
    cv::add(src1.nativeRef, srcScalar.nativeRef, dst.nativeRef);
}


//
//  void cv::subtract(Mat src1, Scalar srcScalar, Mat& dst, Mat mask = Mat(), int dtype = -1)
//
+ (void)subtract:(Mat*)src1 srcScalar:(Scalar*)srcScalar dst:(Mat*)dst mask:(Mat*)mask dtype:(int)dtype {
    cv::subtract(src1.nativeRef, srcScalar.nativeRef, dst.nativeRef, mask.nativeRef, dtype);
}

+ (void)subtract:(Mat*)src1 srcScalar:(Scalar*)srcScalar dst:(Mat*)dst mask:(Mat*)mask {
    cv::subtract(src1.nativeRef, srcScalar.nativeRef, dst.nativeRef, mask.nativeRef);
}

+ (void)subtract:(Mat*)src1 srcScalar:(Scalar*)srcScalar dst:(Mat*)dst {
    cv::subtract(src1.nativeRef, srcScalar.nativeRef, dst.nativeRef);
}


//
//  void cv::multiply(Mat src1, Scalar srcScalar, Mat& dst, double scale = 1, int dtype = -1)
//
+ (void)multiply:(Mat*)src1 srcScalar:(Scalar*)srcScalar dst:(Mat*)dst scale:(double)scale dtype:(int)dtype {
    cv::multiply(src1.nativeRef, srcScalar.nativeRef, dst.nativeRef, scale, dtype);
}

+ (void)multiply:(Mat*)src1 srcScalar:(Scalar*)srcScalar dst:(Mat*)dst scale:(double)scale {
    cv::multiply(src1.nativeRef, srcScalar.nativeRef, dst.nativeRef, scale);
}

+ (void)multiply:(Mat*)src1 srcScalar:(Scalar*)srcScalar dst:(Mat*)dst {
    cv::multiply(src1.nativeRef, srcScalar.nativeRef, dst.nativeRef);
}


//
//  void cv::divide(Mat src1, Scalar srcScalar, Mat& dst, double scale = 1, int dtype = -1)
//
+ (void)divide:(Mat*)src1 srcScalar:(Scalar*)srcScalar dst:(Mat*)dst scale:(double)scale dtype:(int)dtype {
    cv::divide(src1.nativeRef, srcScalar.nativeRef, dst.nativeRef, scale, dtype);
}

+ (void)divide:(Mat*)src1 srcScalar:(Scalar*)srcScalar dst:(Mat*)dst scale:(double)scale {
    cv::divide(src1.nativeRef, srcScalar.nativeRef, dst.nativeRef, scale);
}

+ (void)divide:(Mat*)src1 srcScalar:(Scalar*)srcScalar dst:(Mat*)dst {
    cv::divide(src1.nativeRef, srcScalar.nativeRef, dst.nativeRef);
}


//
//  void cv::absdiff(Mat src1, Scalar srcScalar, Mat& dst)
//
+ (void)absdiff:(Mat*)src1 srcScalar:(Scalar*)srcScalar dst:(Mat*)dst {
    cv::absdiff(src1.nativeRef, srcScalar.nativeRef, dst.nativeRef);
}


//
//  void cv::compare(Mat src1, Scalar srcScalar, Mat& dst, CmpTypes cmpop)
//
+ (void)compare:(Mat*)src1 srcScalar:(Scalar*)srcScalar dst:(Mat*)dst cmpop:(CmpTypes)cmpop {
    cv::compare(src1.nativeRef, srcScalar.nativeRef, dst.nativeRef, (cv::CmpTypes)cmpop);
}


//
//  void cv::min(Mat src1, Scalar srcScalar, Mat& dst)
//
+ (void)min:(Mat*)src1 srcScalar:(Scalar*)srcScalar dst:(Mat*)dst {
    cv::min(src1.nativeRef, srcScalar.nativeRef, dst.nativeRef);
}


//
//  void cv::max(Mat src1, Scalar srcScalar, Mat& dst)
//
+ (void)max:(Mat*)src1 srcScalar:(Scalar*)srcScalar dst:(Mat*)dst {
    cv::max(src1.nativeRef, srcScalar.nativeRef, dst.nativeRef);
}

// C++: minMaxLoc(Mat src, double* minVal, double* maxVal=0, Point* minLoc=0, Point* maxLoc=0, InputArray mask=noArray())
+ (MinMaxLocResult*)minMaxLoc:(Mat*)src mask:(nullable Mat*)mask {
    double minVal, maxVal;
    cv::Point minLoc, maxLoc;
    cv::Mat& rSrc = src.nativeRef;
    if (mask != nil) {
        cv::Mat& rMask = mask.nativeRef;
        cv::minMaxLoc(rSrc, &minVal, &maxVal, &minLoc, &maxLoc, rMask);
    } else {
        cv::minMaxLoc(rSrc, &minVal, &maxVal, &minLoc, &maxLoc);
    }
    return [[MinMaxLocResult alloc] initWithMinval:minVal maxVal:maxVal minLoc:[Point2i fromNative:minLoc] maxLoc:[Point2i fromNative:maxLoc]];
}


+ (MinMaxLocResult*)minMaxLoc:(Mat*)src {
    return [self minMaxLoc:src mask:nil];
}



@end



//
// This file is auto-generated. Please don't modify it!
//

#import "Photo.h"
#import "CVObjcUtil.h"

#import "AlignMTB.h"
#import "CalibrateDebevec.h"
#import "CalibrateRobertson.h"
#import "FloatVector.h"
#import "Mat.h"
#import "MergeDebevec.h"
#import "MergeMertens.h"
#import "MergeRobertson.h"
#import "Point2i.h"
#import "Tonemap.h"
#import "TonemapDrago.h"
#import "TonemapMantiuk.h"
#import "TonemapReinhard.h"

@implementation Photo

+ (int)INPAINT_NS {
    return 0;
}

+ (int)INPAINT_TELEA {
    return 1;
}

+ (int)LDR_SIZE {
    return 256;
}

+ (int)NORMAL_CLONE {
    return 1;
}

+ (int)MIXED_CLONE {
    return 2;
}

+ (int)MONOCHROME_TRANSFER {
    return 3;
}

+ (int)RECURS_FILTER {
    return 1;
}

+ (int)NORMCONV_FILTER {
    return 2;
}


//
//  void cv::inpaint(Mat src, Mat inpaintMask, Mat& dst, double inpaintRadius, int flags)
//
+ (void)inpaint:(Mat*)src inpaintMask:(Mat*)inpaintMask dst:(Mat*)dst inpaintRadius:(double)inpaintRadius flags:(int)flags {
    cv::inpaint(src.nativeRef, inpaintMask.nativeRef, dst.nativeRef, inpaintRadius, flags);
}


//
//  void cv::fastNlMeansDenoising(Mat src, Mat& dst, float h = 3, int templateWindowSize = 7, int searchWindowSize = 21)
//
+ (void)fastNlMeansDenoising:(Mat*)src dst:(Mat*)dst h:(float)h templateWindowSize:(int)templateWindowSize searchWindowSize:(int)searchWindowSize {
    cv::fastNlMeansDenoising(src.nativeRef, dst.nativeRef, h, templateWindowSize, searchWindowSize);
}

+ (void)fastNlMeansDenoising:(Mat*)src dst:(Mat*)dst h:(float)h templateWindowSize:(int)templateWindowSize {
    cv::fastNlMeansDenoising(src.nativeRef, dst.nativeRef, h, templateWindowSize);
}

+ (void)fastNlMeansDenoising:(Mat*)src dst:(Mat*)dst h:(float)h {
    cv::fastNlMeansDenoising(src.nativeRef, dst.nativeRef, h);
}

+ (void)fastNlMeansDenoising:(Mat*)src dst:(Mat*)dst {
    cv::fastNlMeansDenoising(src.nativeRef, dst.nativeRef);
}


//
//  void cv::fastNlMeansDenoising(Mat src, Mat& dst, vector_float hVector, int templateWindowSize = 7, int searchWindowSize = 21, int normType = NORM_L2)
//
+ (void)fastNlMeansDenoising:(Mat*)src dst:(Mat*)dst hVector:(FloatVector*)hVector templateWindowSize:(int)templateWindowSize searchWindowSize:(int)searchWindowSize normType:(int)normType {
    cv::fastNlMeansDenoising(src.nativeRef, dst.nativeRef, hVector.nativeRef, templateWindowSize, searchWindowSize, normType);
}

+ (void)fastNlMeansDenoising:(Mat*)src dst:(Mat*)dst hVector:(FloatVector*)hVector templateWindowSize:(int)templateWindowSize searchWindowSize:(int)searchWindowSize {
    cv::fastNlMeansDenoising(src.nativeRef, dst.nativeRef, hVector.nativeRef, templateWindowSize, searchWindowSize);
}

+ (void)fastNlMeansDenoising:(Mat*)src dst:(Mat*)dst hVector:(FloatVector*)hVector templateWindowSize:(int)templateWindowSize {
    cv::fastNlMeansDenoising(src.nativeRef, dst.nativeRef, hVector.nativeRef, templateWindowSize);
}

+ (void)fastNlMeansDenoising:(Mat*)src dst:(Mat*)dst hVector:(FloatVector*)hVector {
    cv::fastNlMeansDenoising(src.nativeRef, dst.nativeRef, hVector.nativeRef);
}


//
//  void cv::fastNlMeansDenoisingColored(Mat src, Mat& dst, float h = 3, float hColor = 3, int templateWindowSize = 7, int searchWindowSize = 21)
//
+ (void)fastNlMeansDenoisingColored:(Mat*)src dst:(Mat*)dst h:(float)h hColor:(float)hColor templateWindowSize:(int)templateWindowSize searchWindowSize:(int)searchWindowSize {
    cv::fastNlMeansDenoisingColored(src.nativeRef, dst.nativeRef, h, hColor, templateWindowSize, searchWindowSize);
}

+ (void)fastNlMeansDenoisingColored:(Mat*)src dst:(Mat*)dst h:(float)h hColor:(float)hColor templateWindowSize:(int)templateWindowSize {
    cv::fastNlMeansDenoisingColored(src.nativeRef, dst.nativeRef, h, hColor, templateWindowSize);
}

+ (void)fastNlMeansDenoisingColored:(Mat*)src dst:(Mat*)dst h:(float)h hColor:(float)hColor {
    cv::fastNlMeansDenoisingColored(src.nativeRef, dst.nativeRef, h, hColor);
}

+ (void)fastNlMeansDenoisingColored:(Mat*)src dst:(Mat*)dst h:(float)h {
    cv::fastNlMeansDenoisingColored(src.nativeRef, dst.nativeRef, h);
}

+ (void)fastNlMeansDenoisingColored:(Mat*)src dst:(Mat*)dst {
    cv::fastNlMeansDenoisingColored(src.nativeRef, dst.nativeRef);
}


//
//  void cv::fastNlMeansDenoisingMulti(vector_Mat srcImgs, Mat& dst, int imgToDenoiseIndex, int temporalWindowSize, float h = 3, int templateWindowSize = 7, int searchWindowSize = 21)
//
+ (void)fastNlMeansDenoisingMulti:(NSArray<Mat*>*)srcImgs dst:(Mat*)dst imgToDenoiseIndex:(int)imgToDenoiseIndex temporalWindowSize:(int)temporalWindowSize h:(float)h templateWindowSize:(int)templateWindowSize searchWindowSize:(int)searchWindowSize {
    OBJC2CV(cv::Mat, Mat, srcImgsVector, srcImgs);
    cv::fastNlMeansDenoisingMulti(srcImgsVector, dst.nativeRef, imgToDenoiseIndex, temporalWindowSize, h, templateWindowSize, searchWindowSize);
}

+ (void)fastNlMeansDenoisingMulti:(NSArray<Mat*>*)srcImgs dst:(Mat*)dst imgToDenoiseIndex:(int)imgToDenoiseIndex temporalWindowSize:(int)temporalWindowSize h:(float)h templateWindowSize:(int)templateWindowSize {
    OBJC2CV(cv::Mat, Mat, srcImgsVector, srcImgs);
    cv::fastNlMeansDenoisingMulti(srcImgsVector, dst.nativeRef, imgToDenoiseIndex, temporalWindowSize, h, templateWindowSize);
}

+ (void)fastNlMeansDenoisingMulti:(NSArray<Mat*>*)srcImgs dst:(Mat*)dst imgToDenoiseIndex:(int)imgToDenoiseIndex temporalWindowSize:(int)temporalWindowSize h:(float)h {
    OBJC2CV(cv::Mat, Mat, srcImgsVector, srcImgs);
    cv::fastNlMeansDenoisingMulti(srcImgsVector, dst.nativeRef, imgToDenoiseIndex, temporalWindowSize, h);
}

+ (void)fastNlMeansDenoisingMulti:(NSArray<Mat*>*)srcImgs dst:(Mat*)dst imgToDenoiseIndex:(int)imgToDenoiseIndex temporalWindowSize:(int)temporalWindowSize {
    OBJC2CV(cv::Mat, Mat, srcImgsVector, srcImgs);
    cv::fastNlMeansDenoisingMulti(srcImgsVector, dst.nativeRef, imgToDenoiseIndex, temporalWindowSize);
}


//
//  void cv::fastNlMeansDenoisingMulti(vector_Mat srcImgs, Mat& dst, int imgToDenoiseIndex, int temporalWindowSize, vector_float hVector, int templateWindowSize = 7, int searchWindowSize = 21, int normType = NORM_L2)
//
+ (void)fastNlMeansDenoisingMulti:(NSArray<Mat*>*)srcImgs dst:(Mat*)dst imgToDenoiseIndex:(int)imgToDenoiseIndex temporalWindowSize:(int)temporalWindowSize hVector:(FloatVector*)hVector templateWindowSize:(int)templateWindowSize searchWindowSize:(int)searchWindowSize normType:(int)normType {
    OBJC2CV(cv::Mat, Mat, srcImgsVector, srcImgs);
    cv::fastNlMeansDenoisingMulti(srcImgsVector, dst.nativeRef, imgToDenoiseIndex, temporalWindowSize, hVector.nativeRef, templateWindowSize, searchWindowSize, normType);
}

+ (void)fastNlMeansDenoisingMulti:(NSArray<Mat*>*)srcImgs dst:(Mat*)dst imgToDenoiseIndex:(int)imgToDenoiseIndex temporalWindowSize:(int)temporalWindowSize hVector:(FloatVector*)hVector templateWindowSize:(int)templateWindowSize searchWindowSize:(int)searchWindowSize {
    OBJC2CV(cv::Mat, Mat, srcImgsVector, srcImgs);
    cv::fastNlMeansDenoisingMulti(srcImgsVector, dst.nativeRef, imgToDenoiseIndex, temporalWindowSize, hVector.nativeRef, templateWindowSize, searchWindowSize);
}

+ (void)fastNlMeansDenoisingMulti:(NSArray<Mat*>*)srcImgs dst:(Mat*)dst imgToDenoiseIndex:(int)imgToDenoiseIndex temporalWindowSize:(int)temporalWindowSize hVector:(FloatVector*)hVector templateWindowSize:(int)templateWindowSize {
    OBJC2CV(cv::Mat, Mat, srcImgsVector, srcImgs);
    cv::fastNlMeansDenoisingMulti(srcImgsVector, dst.nativeRef, imgToDenoiseIndex, temporalWindowSize, hVector.nativeRef, templateWindowSize);
}

+ (void)fastNlMeansDenoisingMulti:(NSArray<Mat*>*)srcImgs dst:(Mat*)dst imgToDenoiseIndex:(int)imgToDenoiseIndex temporalWindowSize:(int)temporalWindowSize hVector:(FloatVector*)hVector {
    OBJC2CV(cv::Mat, Mat, srcImgsVector, srcImgs);
    cv::fastNlMeansDenoisingMulti(srcImgsVector, dst.nativeRef, imgToDenoiseIndex, temporalWindowSize, hVector.nativeRef);
}


//
//  void cv::fastNlMeansDenoisingColoredMulti(vector_Mat srcImgs, Mat& dst, int imgToDenoiseIndex, int temporalWindowSize, float h = 3, float hColor = 3, int templateWindowSize = 7, int searchWindowSize = 21)
//
+ (void)fastNlMeansDenoisingColoredMulti:(NSArray<Mat*>*)srcImgs dst:(Mat*)dst imgToDenoiseIndex:(int)imgToDenoiseIndex temporalWindowSize:(int)temporalWindowSize h:(float)h hColor:(float)hColor templateWindowSize:(int)templateWindowSize searchWindowSize:(int)searchWindowSize {
    OBJC2CV(cv::Mat, Mat, srcImgsVector, srcImgs);
    cv::fastNlMeansDenoisingColoredMulti(srcImgsVector, dst.nativeRef, imgToDenoiseIndex, temporalWindowSize, h, hColor, templateWindowSize, searchWindowSize);
}

+ (void)fastNlMeansDenoisingColoredMulti:(NSArray<Mat*>*)srcImgs dst:(Mat*)dst imgToDenoiseIndex:(int)imgToDenoiseIndex temporalWindowSize:(int)temporalWindowSize h:(float)h hColor:(float)hColor templateWindowSize:(int)templateWindowSize {
    OBJC2CV(cv::Mat, Mat, srcImgsVector, srcImgs);
    cv::fastNlMeansDenoisingColoredMulti(srcImgsVector, dst.nativeRef, imgToDenoiseIndex, temporalWindowSize, h, hColor, templateWindowSize);
}

+ (void)fastNlMeansDenoisingColoredMulti:(NSArray<Mat*>*)srcImgs dst:(Mat*)dst imgToDenoiseIndex:(int)imgToDenoiseIndex temporalWindowSize:(int)temporalWindowSize h:(float)h hColor:(float)hColor {
    OBJC2CV(cv::Mat, Mat, srcImgsVector, srcImgs);
    cv::fastNlMeansDenoisingColoredMulti(srcImgsVector, dst.nativeRef, imgToDenoiseIndex, temporalWindowSize, h, hColor);
}

+ (void)fastNlMeansDenoisingColoredMulti:(NSArray<Mat*>*)srcImgs dst:(Mat*)dst imgToDenoiseIndex:(int)imgToDenoiseIndex temporalWindowSize:(int)temporalWindowSize h:(float)h {
    OBJC2CV(cv::Mat, Mat, srcImgsVector, srcImgs);
    cv::fastNlMeansDenoisingColoredMulti(srcImgsVector, dst.nativeRef, imgToDenoiseIndex, temporalWindowSize, h);
}

+ (void)fastNlMeansDenoisingColoredMulti:(NSArray<Mat*>*)srcImgs dst:(Mat*)dst imgToDenoiseIndex:(int)imgToDenoiseIndex temporalWindowSize:(int)temporalWindowSize {
    OBJC2CV(cv::Mat, Mat, srcImgsVector, srcImgs);
    cv::fastNlMeansDenoisingColoredMulti(srcImgsVector, dst.nativeRef, imgToDenoiseIndex, temporalWindowSize);
}


//
//  void cv::denoise_TVL1(vector_Mat observations, Mat result, double lambda = 1.0, int niters = 30)
//
+ (void)denoise_TVL1:(NSArray<Mat*>*)observations result:(Mat*)result lambda:(double)lambda niters:(int)niters {
    OBJC2CV(cv::Mat, Mat, observationsVector, observations);
    cv::denoise_TVL1(observationsVector, result.nativeRef, lambda, niters);
}

+ (void)denoise_TVL1:(NSArray<Mat*>*)observations result:(Mat*)result lambda:(double)lambda {
    OBJC2CV(cv::Mat, Mat, observationsVector, observations);
    cv::denoise_TVL1(observationsVector, result.nativeRef, lambda);
}

+ (void)denoise_TVL1:(NSArray<Mat*>*)observations result:(Mat*)result {
    OBJC2CV(cv::Mat, Mat, observationsVector, observations);
    cv::denoise_TVL1(observationsVector, result.nativeRef);
}


//
//  Ptr_Tonemap cv::createTonemap(float gamma = 1.0f)
//
+ (Tonemap*)createTonemap:(float)gamma {
    cv::Ptr<cv::Tonemap> retVal = cv::createTonemap(gamma);
    return [Tonemap fromNative:retVal];
}

+ (Tonemap*)createTonemap {
    cv::Ptr<cv::Tonemap> retVal = cv::createTonemap();
    return [Tonemap fromNative:retVal];
}


//
//  Ptr_TonemapDrago cv::createTonemapDrago(float gamma = 1.0f, float saturation = 1.0f, float bias = 0.85f)
//
+ (TonemapDrago*)createTonemapDrago:(float)gamma saturation:(float)saturation bias:(float)bias {
    cv::Ptr<cv::TonemapDrago> retVal = cv::createTonemapDrago(gamma, saturation, bias);
    return [TonemapDrago fromNative:retVal];
}

+ (TonemapDrago*)createTonemapDrago:(float)gamma saturation:(float)saturation {
    cv::Ptr<cv::TonemapDrago> retVal = cv::createTonemapDrago(gamma, saturation);
    return [TonemapDrago fromNative:retVal];
}

+ (TonemapDrago*)createTonemapDrago:(float)gamma {
    cv::Ptr<cv::TonemapDrago> retVal = cv::createTonemapDrago(gamma);
    return [TonemapDrago fromNative:retVal];
}

+ (TonemapDrago*)createTonemapDrago {
    cv::Ptr<cv::TonemapDrago> retVal = cv::createTonemapDrago();
    return [TonemapDrago fromNative:retVal];
}


//
//  Ptr_TonemapReinhard cv::createTonemapReinhard(float gamma = 1.0f, float intensity = 0.0f, float light_adapt = 1.0f, float color_adapt = 0.0f)
//
+ (TonemapReinhard*)createTonemapReinhard:(float)gamma intensity:(float)intensity light_adapt:(float)light_adapt color_adapt:(float)color_adapt {
    cv::Ptr<cv::TonemapReinhard> retVal = cv::createTonemapReinhard(gamma, intensity, light_adapt, color_adapt);
    return [TonemapReinhard fromNative:retVal];
}

+ (TonemapReinhard*)createTonemapReinhard:(float)gamma intensity:(float)intensity light_adapt:(float)light_adapt {
    cv::Ptr<cv::TonemapReinhard> retVal = cv::createTonemapReinhard(gamma, intensity, light_adapt);
    return [TonemapReinhard fromNative:retVal];
}

+ (TonemapReinhard*)createTonemapReinhard:(float)gamma intensity:(float)intensity {
    cv::Ptr<cv::TonemapReinhard> retVal = cv::createTonemapReinhard(gamma, intensity);
    return [TonemapReinhard fromNative:retVal];
}

+ (TonemapReinhard*)createTonemapReinhard:(float)gamma {
    cv::Ptr<cv::TonemapReinhard> retVal = cv::createTonemapReinhard(gamma);
    return [TonemapReinhard fromNative:retVal];
}

+ (TonemapReinhard*)createTonemapReinhard {
    cv::Ptr<cv::TonemapReinhard> retVal = cv::createTonemapReinhard();
    return [TonemapReinhard fromNative:retVal];
}


//
//  Ptr_TonemapMantiuk cv::createTonemapMantiuk(float gamma = 1.0f, float scale = 0.7f, float saturation = 1.0f)
//
+ (TonemapMantiuk*)createTonemapMantiuk:(float)gamma scale:(float)scale saturation:(float)saturation {
    cv::Ptr<cv::TonemapMantiuk> retVal = cv::createTonemapMantiuk(gamma, scale, saturation);
    return [TonemapMantiuk fromNative:retVal];
}

+ (TonemapMantiuk*)createTonemapMantiuk:(float)gamma scale:(float)scale {
    cv::Ptr<cv::TonemapMantiuk> retVal = cv::createTonemapMantiuk(gamma, scale);
    return [TonemapMantiuk fromNative:retVal];
}

+ (TonemapMantiuk*)createTonemapMantiuk:(float)gamma {
    cv::Ptr<cv::TonemapMantiuk> retVal = cv::createTonemapMantiuk(gamma);
    return [TonemapMantiuk fromNative:retVal];
}

+ (TonemapMantiuk*)createTonemapMantiuk {
    cv::Ptr<cv::TonemapMantiuk> retVal = cv::createTonemapMantiuk();
    return [TonemapMantiuk fromNative:retVal];
}


//
//  Ptr_AlignMTB cv::createAlignMTB(int max_bits = 6, int exclude_range = 4, bool cut = true)
//
+ (AlignMTB*)createAlignMTB:(int)max_bits exclude_range:(int)exclude_range cut:(BOOL)cut {
    cv::Ptr<cv::AlignMTB> retVal = cv::createAlignMTB(max_bits, exclude_range, (bool)cut);
    return [AlignMTB fromNative:retVal];
}

+ (AlignMTB*)createAlignMTB:(int)max_bits exclude_range:(int)exclude_range {
    cv::Ptr<cv::AlignMTB> retVal = cv::createAlignMTB(max_bits, exclude_range);
    return [AlignMTB fromNative:retVal];
}

+ (AlignMTB*)createAlignMTB:(int)max_bits {
    cv::Ptr<cv::AlignMTB> retVal = cv::createAlignMTB(max_bits);
    return [AlignMTB fromNative:retVal];
}

+ (AlignMTB*)createAlignMTB {
    cv::Ptr<cv::AlignMTB> retVal = cv::createAlignMTB();
    return [AlignMTB fromNative:retVal];
}


//
//  Ptr_CalibrateDebevec cv::createCalibrateDebevec(int samples = 70, float lambda = 10.0f, bool random = false)
//
+ (CalibrateDebevec*)createCalibrateDebevec:(int)samples lambda:(float)lambda random:(BOOL)random {
    cv::Ptr<cv::CalibrateDebevec> retVal = cv::createCalibrateDebevec(samples, lambda, (bool)random);
    return [CalibrateDebevec fromNative:retVal];
}

+ (CalibrateDebevec*)createCalibrateDebevec:(int)samples lambda:(float)lambda {
    cv::Ptr<cv::CalibrateDebevec> retVal = cv::createCalibrateDebevec(samples, lambda);
    return [CalibrateDebevec fromNative:retVal];
}

+ (CalibrateDebevec*)createCalibrateDebevec:(int)samples {
    cv::Ptr<cv::CalibrateDebevec> retVal = cv::createCalibrateDebevec(samples);
    return [CalibrateDebevec fromNative:retVal];
}

+ (CalibrateDebevec*)createCalibrateDebevec {
    cv::Ptr<cv::CalibrateDebevec> retVal = cv::createCalibrateDebevec();
    return [CalibrateDebevec fromNative:retVal];
}


//
//  Ptr_CalibrateRobertson cv::createCalibrateRobertson(int max_iter = 30, float threshold = 0.01f)
//
+ (CalibrateRobertson*)createCalibrateRobertson:(int)max_iter threshold:(float)threshold {
    cv::Ptr<cv::CalibrateRobertson> retVal = cv::createCalibrateRobertson(max_iter, threshold);
    return [CalibrateRobertson fromNative:retVal];
}

+ (CalibrateRobertson*)createCalibrateRobertson:(int)max_iter {
    cv::Ptr<cv::CalibrateRobertson> retVal = cv::createCalibrateRobertson(max_iter);
    return [CalibrateRobertson fromNative:retVal];
}

+ (CalibrateRobertson*)createCalibrateRobertson {
    cv::Ptr<cv::CalibrateRobertson> retVal = cv::createCalibrateRobertson();
    return [CalibrateRobertson fromNative:retVal];
}


//
//  Ptr_MergeDebevec cv::createMergeDebevec()
//
+ (MergeDebevec*)createMergeDebevec {
    cv::Ptr<cv::MergeDebevec> retVal = cv::createMergeDebevec();
    return [MergeDebevec fromNative:retVal];
}


//
//  Ptr_MergeMertens cv::createMergeMertens(float contrast_weight = 1.0f, float saturation_weight = 1.0f, float exposure_weight = 0.0f)
//
+ (MergeMertens*)createMergeMertens:(float)contrast_weight saturation_weight:(float)saturation_weight exposure_weight:(float)exposure_weight {
    cv::Ptr<cv::MergeMertens> retVal = cv::createMergeMertens(contrast_weight, saturation_weight, exposure_weight);
    return [MergeMertens fromNative:retVal];
}

+ (MergeMertens*)createMergeMertens:(float)contrast_weight saturation_weight:(float)saturation_weight {
    cv::Ptr<cv::MergeMertens> retVal = cv::createMergeMertens(contrast_weight, saturation_weight);
    return [MergeMertens fromNative:retVal];
}

+ (MergeMertens*)createMergeMertens:(float)contrast_weight {
    cv::Ptr<cv::MergeMertens> retVal = cv::createMergeMertens(contrast_weight);
    return [MergeMertens fromNative:retVal];
}

+ (MergeMertens*)createMergeMertens {
    cv::Ptr<cv::MergeMertens> retVal = cv::createMergeMertens();
    return [MergeMertens fromNative:retVal];
}


//
//  Ptr_MergeRobertson cv::createMergeRobertson()
//
+ (MergeRobertson*)createMergeRobertson {
    cv::Ptr<cv::MergeRobertson> retVal = cv::createMergeRobertson();
    return [MergeRobertson fromNative:retVal];
}


//
//  void cv::decolor(Mat src, Mat& grayscale, Mat& color_boost)
//
+ (void)decolor:(Mat*)src grayscale:(Mat*)grayscale color_boost:(Mat*)color_boost {
    cv::decolor(src.nativeRef, grayscale.nativeRef, color_boost.nativeRef);
}


//
//  void cv::seamlessClone(Mat src, Mat dst, Mat mask, Point p, Mat& blend, int flags)
//
+ (void)seamlessClone:(Mat*)src dst:(Mat*)dst mask:(Mat*)mask p:(Point2i*)p blend:(Mat*)blend flags:(int)flags {
    cv::seamlessClone(src.nativeRef, dst.nativeRef, mask.nativeRef, p.nativeRef, blend.nativeRef, flags);
}


//
//  void cv::colorChange(Mat src, Mat mask, Mat& dst, float red_mul = 1.0f, float green_mul = 1.0f, float blue_mul = 1.0f)
//
+ (void)colorChange:(Mat*)src mask:(Mat*)mask dst:(Mat*)dst red_mul:(float)red_mul green_mul:(float)green_mul blue_mul:(float)blue_mul {
    cv::colorChange(src.nativeRef, mask.nativeRef, dst.nativeRef, red_mul, green_mul, blue_mul);
}

+ (void)colorChange:(Mat*)src mask:(Mat*)mask dst:(Mat*)dst red_mul:(float)red_mul green_mul:(float)green_mul {
    cv::colorChange(src.nativeRef, mask.nativeRef, dst.nativeRef, red_mul, green_mul);
}

+ (void)colorChange:(Mat*)src mask:(Mat*)mask dst:(Mat*)dst red_mul:(float)red_mul {
    cv::colorChange(src.nativeRef, mask.nativeRef, dst.nativeRef, red_mul);
}

+ (void)colorChange:(Mat*)src mask:(Mat*)mask dst:(Mat*)dst {
    cv::colorChange(src.nativeRef, mask.nativeRef, dst.nativeRef);
}


//
//  void cv::illuminationChange(Mat src, Mat mask, Mat& dst, float alpha = 0.2f, float beta = 0.4f)
//
+ (void)illuminationChange:(Mat*)src mask:(Mat*)mask dst:(Mat*)dst alpha:(float)alpha beta:(float)beta {
    cv::illuminationChange(src.nativeRef, mask.nativeRef, dst.nativeRef, alpha, beta);
}

+ (void)illuminationChange:(Mat*)src mask:(Mat*)mask dst:(Mat*)dst alpha:(float)alpha {
    cv::illuminationChange(src.nativeRef, mask.nativeRef, dst.nativeRef, alpha);
}

+ (void)illuminationChange:(Mat*)src mask:(Mat*)mask dst:(Mat*)dst {
    cv::illuminationChange(src.nativeRef, mask.nativeRef, dst.nativeRef);
}


//
//  void cv::textureFlattening(Mat src, Mat mask, Mat& dst, float low_threshold = 30, float high_threshold = 45, int kernel_size = 3)
//
+ (void)textureFlattening:(Mat*)src mask:(Mat*)mask dst:(Mat*)dst low_threshold:(float)low_threshold high_threshold:(float)high_threshold kernel_size:(int)kernel_size {
    cv::textureFlattening(src.nativeRef, mask.nativeRef, dst.nativeRef, low_threshold, high_threshold, kernel_size);
}

+ (void)textureFlattening:(Mat*)src mask:(Mat*)mask dst:(Mat*)dst low_threshold:(float)low_threshold high_threshold:(float)high_threshold {
    cv::textureFlattening(src.nativeRef, mask.nativeRef, dst.nativeRef, low_threshold, high_threshold);
}

+ (void)textureFlattening:(Mat*)src mask:(Mat*)mask dst:(Mat*)dst low_threshold:(float)low_threshold {
    cv::textureFlattening(src.nativeRef, mask.nativeRef, dst.nativeRef, low_threshold);
}

+ (void)textureFlattening:(Mat*)src mask:(Mat*)mask dst:(Mat*)dst {
    cv::textureFlattening(src.nativeRef, mask.nativeRef, dst.nativeRef);
}


//
//  void cv::edgePreservingFilter(Mat src, Mat& dst, int flags = 1, float sigma_s = 60, float sigma_r = 0.4f)
//
+ (void)edgePreservingFilter:(Mat*)src dst:(Mat*)dst flags:(int)flags sigma_s:(float)sigma_s sigma_r:(float)sigma_r {
    cv::edgePreservingFilter(src.nativeRef, dst.nativeRef, flags, sigma_s, sigma_r);
}

+ (void)edgePreservingFilter:(Mat*)src dst:(Mat*)dst flags:(int)flags sigma_s:(float)sigma_s {
    cv::edgePreservingFilter(src.nativeRef, dst.nativeRef, flags, sigma_s);
}

+ (void)edgePreservingFilter:(Mat*)src dst:(Mat*)dst flags:(int)flags {
    cv::edgePreservingFilter(src.nativeRef, dst.nativeRef, flags);
}

+ (void)edgePreservingFilter:(Mat*)src dst:(Mat*)dst {
    cv::edgePreservingFilter(src.nativeRef, dst.nativeRef);
}


//
//  void cv::detailEnhance(Mat src, Mat& dst, float sigma_s = 10, float sigma_r = 0.15f)
//
+ (void)detailEnhance:(Mat*)src dst:(Mat*)dst sigma_s:(float)sigma_s sigma_r:(float)sigma_r {
    cv::detailEnhance(src.nativeRef, dst.nativeRef, sigma_s, sigma_r);
}

+ (void)detailEnhance:(Mat*)src dst:(Mat*)dst sigma_s:(float)sigma_s {
    cv::detailEnhance(src.nativeRef, dst.nativeRef, sigma_s);
}

+ (void)detailEnhance:(Mat*)src dst:(Mat*)dst {
    cv::detailEnhance(src.nativeRef, dst.nativeRef);
}


//
//  void cv::pencilSketch(Mat src, Mat& dst1, Mat& dst2, float sigma_s = 60, float sigma_r = 0.07f, float shade_factor = 0.02f)
//
+ (void)pencilSketch:(Mat*)src dst1:(Mat*)dst1 dst2:(Mat*)dst2 sigma_s:(float)sigma_s sigma_r:(float)sigma_r shade_factor:(float)shade_factor {
    cv::pencilSketch(src.nativeRef, dst1.nativeRef, dst2.nativeRef, sigma_s, sigma_r, shade_factor);
}

+ (void)pencilSketch:(Mat*)src dst1:(Mat*)dst1 dst2:(Mat*)dst2 sigma_s:(float)sigma_s sigma_r:(float)sigma_r {
    cv::pencilSketch(src.nativeRef, dst1.nativeRef, dst2.nativeRef, sigma_s, sigma_r);
}

+ (void)pencilSketch:(Mat*)src dst1:(Mat*)dst1 dst2:(Mat*)dst2 sigma_s:(float)sigma_s {
    cv::pencilSketch(src.nativeRef, dst1.nativeRef, dst2.nativeRef, sigma_s);
}

+ (void)pencilSketch:(Mat*)src dst1:(Mat*)dst1 dst2:(Mat*)dst2 {
    cv::pencilSketch(src.nativeRef, dst1.nativeRef, dst2.nativeRef);
}


//
//  void cv::stylization(Mat src, Mat& dst, float sigma_s = 60, float sigma_r = 0.45f)
//
+ (void)stylization:(Mat*)src dst:(Mat*)dst sigma_s:(float)sigma_s sigma_r:(float)sigma_r {
    cv::stylization(src.nativeRef, dst.nativeRef, sigma_s, sigma_r);
}

+ (void)stylization:(Mat*)src dst:(Mat*)dst sigma_s:(float)sigma_s {
    cv::stylization(src.nativeRef, dst.nativeRef, sigma_s);
}

+ (void)stylization:(Mat*)src dst:(Mat*)dst {
    cv::stylization(src.nativeRef, dst.nativeRef);
}


//
//  void cv::cuda::nonLocalMeans(GpuMat src, GpuMat& dst, float h, int search_window = 21, int block_size = 7, int borderMode = BORDER_DEFAULT,  _hidden_  stream = Stream::Null())
//

//
//  void cv::cuda::fastNlMeansDenoising(GpuMat src, GpuMat& dst, float h, int search_window = 21, int block_size = 7, Stream stream = Stream::Null())
//

//
//  void cv::cuda::fastNlMeansDenoisingColored(GpuMat src, GpuMat& dst, float h_luminance, float photo_render, int search_window = 21, int block_size = 7, Stream stream = Stream::Null())
//


@end



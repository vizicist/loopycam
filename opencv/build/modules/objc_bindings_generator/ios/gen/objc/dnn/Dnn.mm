//
// This file is auto-generated. Please don't modify it!
//

#import "Dnn.h"
#import "CVObjcUtil.h"

#import "ByteVector.h"
#import "FloatVector.h"
#import "Image2BlobParams.h"
#import "IntVector.h"
#import "Mat.h"
#import "Net.h"
#import "Rect2d.h"
#import "Rect2i.h"
#import "RotatedRect.h"
#import "Scalar.h"
#import "Size2i.h"

@implementation Dnn


//
//  vector_Target cv::dnn::getAvailableTargets(dnn_Backend be)
//

//
//  Net cv::dnn::readNetFromDarknet(String cfgFile, String darknetModel = String())
//
+ (Net*)readNetFromDarknetFile:(NSString*)cfgFile darknetModel:(NSString*)darknetModel {
    cv::Ptr<cv::dnn::Net> retVal = new cv::dnn::Net(cv::dnn::readNetFromDarknet(cv::String(cfgFile.UTF8String), cv::String(darknetModel.UTF8String)));
    return [Net fromNative:retVal];
}

+ (Net*)readNetFromDarknetFile:(NSString*)cfgFile {
    cv::Ptr<cv::dnn::Net> retVal = new cv::dnn::Net(cv::dnn::readNetFromDarknet(cv::String(cfgFile.UTF8String)));
    return [Net fromNative:retVal];
}


//
//  Net cv::dnn::readNetFromDarknet(vector_uchar bufferCfg, vector_uchar bufferModel = std::vector<uchar>())
//
+ (Net*)readNetFromDarknetBuffer:(ByteVector*)bufferCfg bufferModel:(ByteVector*)bufferModel {
    cv::Ptr<cv::dnn::Net> retVal = new cv::dnn::Net(cv::dnn::readNetFromDarknet((std::vector<uchar>&)bufferCfg.nativeRef, (std::vector<uchar>&)bufferModel.nativeRef));
    return [Net fromNative:retVal];
}

+ (Net*)readNetFromDarknetBuffer:(ByteVector*)bufferCfg {
    cv::Ptr<cv::dnn::Net> retVal = new cv::dnn::Net(cv::dnn::readNetFromDarknet((std::vector<uchar>&)bufferCfg.nativeRef));
    return [Net fromNative:retVal];
}


//
//  Net cv::dnn::readNetFromCaffe(String prototxt, String caffeModel = String())
//
+ (Net*)readNetFromCaffeFile:(NSString*)prototxt caffeModel:(NSString*)caffeModel {
    cv::Ptr<cv::dnn::Net> retVal = new cv::dnn::Net(cv::dnn::readNetFromCaffe(cv::String(prototxt.UTF8String), cv::String(caffeModel.UTF8String)));
    return [Net fromNative:retVal];
}

+ (Net*)readNetFromCaffeFile:(NSString*)prototxt {
    cv::Ptr<cv::dnn::Net> retVal = new cv::dnn::Net(cv::dnn::readNetFromCaffe(cv::String(prototxt.UTF8String)));
    return [Net fromNative:retVal];
}


//
//  Net cv::dnn::readNetFromCaffe(vector_uchar bufferProto, vector_uchar bufferModel = std::vector<uchar>())
//
+ (Net*)readNetFromCaffeBuffer:(ByteVector*)bufferProto bufferModel:(ByteVector*)bufferModel {
    cv::Ptr<cv::dnn::Net> retVal = new cv::dnn::Net(cv::dnn::readNetFromCaffe((std::vector<uchar>&)bufferProto.nativeRef, (std::vector<uchar>&)bufferModel.nativeRef));
    return [Net fromNative:retVal];
}

+ (Net*)readNetFromCaffeBuffer:(ByteVector*)bufferProto {
    cv::Ptr<cv::dnn::Net> retVal = new cv::dnn::Net(cv::dnn::readNetFromCaffe((std::vector<uchar>&)bufferProto.nativeRef));
    return [Net fromNative:retVal];
}


//
//  Net cv::dnn::readNetFromTensorflow(String model, String config = String())
//
+ (Net*)readNetFromTensorflowFile:(NSString*)model config:(NSString*)config {
    cv::Ptr<cv::dnn::Net> retVal = new cv::dnn::Net(cv::dnn::readNetFromTensorflow(cv::String(model.UTF8String), cv::String(config.UTF8String)));
    return [Net fromNative:retVal];
}

+ (Net*)readNetFromTensorflowFile:(NSString*)model {
    cv::Ptr<cv::dnn::Net> retVal = new cv::dnn::Net(cv::dnn::readNetFromTensorflow(cv::String(model.UTF8String)));
    return [Net fromNative:retVal];
}


//
//  Net cv::dnn::readNetFromTensorflow(vector_uchar bufferModel, vector_uchar bufferConfig = std::vector<uchar>())
//
+ (Net*)readNetFromTensorflowBuffer:(ByteVector*)bufferModel bufferConfig:(ByteVector*)bufferConfig {
    cv::Ptr<cv::dnn::Net> retVal = new cv::dnn::Net(cv::dnn::readNetFromTensorflow((std::vector<uchar>&)bufferModel.nativeRef, (std::vector<uchar>&)bufferConfig.nativeRef));
    return [Net fromNative:retVal];
}

+ (Net*)readNetFromTensorflowBuffer:(ByteVector*)bufferModel {
    cv::Ptr<cv::dnn::Net> retVal = new cv::dnn::Net(cv::dnn::readNetFromTensorflow((std::vector<uchar>&)bufferModel.nativeRef));
    return [Net fromNative:retVal];
}


//
//  Net cv::dnn::readNetFromTFLite(String model)
//
+ (Net*)readNetFromTFLiteFile:(NSString*)model {
    cv::Ptr<cv::dnn::Net> retVal = new cv::dnn::Net(cv::dnn::readNetFromTFLite(cv::String(model.UTF8String)));
    return [Net fromNative:retVal];
}


//
//  Net cv::dnn::readNetFromTFLite(vector_uchar bufferModel)
//
+ (Net*)readNetFromTFLite:(ByteVector*)bufferModel {
    cv::Ptr<cv::dnn::Net> retVal = new cv::dnn::Net(cv::dnn::readNetFromTFLite((std::vector<uchar>&)bufferModel.nativeRef));
    return [Net fromNative:retVal];
}


//
//  Net cv::dnn::readNetFromTorch(String model, bool isBinary = true, bool evaluate = true)
//
+ (Net*)readNetFromTorch:(NSString*)model isBinary:(BOOL)isBinary evaluate:(BOOL)evaluate {
    cv::Ptr<cv::dnn::Net> retVal = new cv::dnn::Net(cv::dnn::readNetFromTorch(cv::String(model.UTF8String), (bool)isBinary, (bool)evaluate));
    return [Net fromNative:retVal];
}

+ (Net*)readNetFromTorch:(NSString*)model isBinary:(BOOL)isBinary {
    cv::Ptr<cv::dnn::Net> retVal = new cv::dnn::Net(cv::dnn::readNetFromTorch(cv::String(model.UTF8String), (bool)isBinary));
    return [Net fromNative:retVal];
}

+ (Net*)readNetFromTorch:(NSString*)model {
    cv::Ptr<cv::dnn::Net> retVal = new cv::dnn::Net(cv::dnn::readNetFromTorch(cv::String(model.UTF8String)));
    return [Net fromNative:retVal];
}


//
//  Net cv::dnn::readNet(String model, String config = "", String framework = "")
//
+ (Net*)readNet:(NSString*)model config:(NSString*)config framework:(NSString*)framework {
    cv::Ptr<cv::dnn::Net> retVal = new cv::dnn::Net(cv::dnn::readNet(cv::String(model.UTF8String), cv::String(config.UTF8String), cv::String(framework.UTF8String)));
    return [Net fromNative:retVal];
}

+ (Net*)readNet:(NSString*)model config:(NSString*)config {
    cv::Ptr<cv::dnn::Net> retVal = new cv::dnn::Net(cv::dnn::readNet(cv::String(model.UTF8String), cv::String(config.UTF8String)));
    return [Net fromNative:retVal];
}

+ (Net*)readNet:(NSString*)model {
    cv::Ptr<cv::dnn::Net> retVal = new cv::dnn::Net(cv::dnn::readNet(cv::String(model.UTF8String)));
    return [Net fromNative:retVal];
}


//
//  Net cv::dnn::readNet(String framework, vector_uchar bufferModel, vector_uchar bufferConfig = std::vector<uchar>())
//
+ (Net*)readNet:(NSString*)framework bufferModel:(ByteVector*)bufferModel bufferConfig:(ByteVector*)bufferConfig {
    cv::Ptr<cv::dnn::Net> retVal = new cv::dnn::Net(cv::dnn::readNet(cv::String(framework.UTF8String), (std::vector<uchar>&)bufferModel.nativeRef, (std::vector<uchar>&)bufferConfig.nativeRef));
    return [Net fromNative:retVal];
}

+ (Net*)readNet:(NSString*)framework bufferModel:(ByteVector*)bufferModel {
    cv::Ptr<cv::dnn::Net> retVal = new cv::dnn::Net(cv::dnn::readNet(cv::String(framework.UTF8String), (std::vector<uchar>&)bufferModel.nativeRef));
    return [Net fromNative:retVal];
}


//
//  Mat cv::dnn::readTorchBlob(String filename, bool isBinary = true)
//
+ (Mat*)readTorchBlob:(NSString*)filename isBinary:(BOOL)isBinary {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::dnn::readTorchBlob(cv::String(filename.UTF8String), (bool)isBinary));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)readTorchBlob:(NSString*)filename {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::dnn::readTorchBlob(cv::String(filename.UTF8String)));
    return [Mat fromNativePtr:retVal];
}


//
//  Net cv::dnn::readNetFromModelOptimizer(String xml, String bin = "")
//
+ (Net*)readNetFromModelOptimizer:(NSString*)xml bin:(NSString*)bin {
    cv::Ptr<cv::dnn::Net> retVal = new cv::dnn::Net(cv::dnn::readNetFromModelOptimizer(cv::String(xml.UTF8String), cv::String(bin.UTF8String)));
    return [Net fromNative:retVal];
}

+ (Net*)readNetFromModelOptimizer:(NSString*)xml {
    cv::Ptr<cv::dnn::Net> retVal = new cv::dnn::Net(cv::dnn::readNetFromModelOptimizer(cv::String(xml.UTF8String)));
    return [Net fromNative:retVal];
}


//
//  Net cv::dnn::readNetFromModelOptimizer(vector_uchar bufferModelConfig, vector_uchar bufferWeights)
//
+ (Net*)readNetFromModelOptimizer:(ByteVector*)bufferModelConfig bufferWeights:(ByteVector*)bufferWeights {
    cv::Ptr<cv::dnn::Net> retVal = new cv::dnn::Net(cv::dnn::readNetFromModelOptimizer((std::vector<uchar>&)bufferModelConfig.nativeRef, (std::vector<uchar>&)bufferWeights.nativeRef));
    return [Net fromNative:retVal];
}


//
//  Net cv::dnn::readNetFromONNX(String onnxFile)
//
+ (Net*)readNetFromONNXFile:(NSString*)onnxFile {
    cv::Ptr<cv::dnn::Net> retVal = new cv::dnn::Net(cv::dnn::readNetFromONNX(cv::String(onnxFile.UTF8String)));
    return [Net fromNative:retVal];
}


//
//  Net cv::dnn::readNetFromONNX(vector_uchar buffer)
//
+ (Net*)readNetFromONNXBuffer:(ByteVector*)buffer {
    cv::Ptr<cv::dnn::Net> retVal = new cv::dnn::Net(cv::dnn::readNetFromONNX((std::vector<uchar>&)buffer.nativeRef));
    return [Net fromNative:retVal];
}


//
//  Mat cv::dnn::readTensorFromONNX(String path)
//
+ (Mat*)readTensorFromONNX:(NSString*)path {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::dnn::readTensorFromONNX(cv::String(path.UTF8String)));
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::dnn::blobFromImage(Mat image, double scalefactor = 1.0, Size size = Size(), Scalar mean = Scalar(), bool swapRB = false, bool crop = false, int ddepth = CV_32F)
//
+ (Mat*)blobFromImage:(Mat*)image scalefactor:(double)scalefactor size:(Size2i*)size mean:(Scalar*)mean swapRB:(BOOL)swapRB crop:(BOOL)crop ddepth:(int)ddepth {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::dnn::blobFromImage(image.nativeRef, scalefactor, size.nativeRef, mean.nativeRef, (bool)swapRB, (bool)crop, ddepth));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)blobFromImage:(Mat*)image scalefactor:(double)scalefactor size:(Size2i*)size mean:(Scalar*)mean swapRB:(BOOL)swapRB crop:(BOOL)crop {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::dnn::blobFromImage(image.nativeRef, scalefactor, size.nativeRef, mean.nativeRef, (bool)swapRB, (bool)crop));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)blobFromImage:(Mat*)image scalefactor:(double)scalefactor size:(Size2i*)size mean:(Scalar*)mean swapRB:(BOOL)swapRB {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::dnn::blobFromImage(image.nativeRef, scalefactor, size.nativeRef, mean.nativeRef, (bool)swapRB));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)blobFromImage:(Mat*)image scalefactor:(double)scalefactor size:(Size2i*)size mean:(Scalar*)mean {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::dnn::blobFromImage(image.nativeRef, scalefactor, size.nativeRef, mean.nativeRef));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)blobFromImage:(Mat*)image scalefactor:(double)scalefactor size:(Size2i*)size {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::dnn::blobFromImage(image.nativeRef, scalefactor, size.nativeRef));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)blobFromImage:(Mat*)image scalefactor:(double)scalefactor {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::dnn::blobFromImage(image.nativeRef, scalefactor));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)blobFromImage:(Mat*)image {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::dnn::blobFromImage(image.nativeRef));
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::dnn::blobFromImages(vector_Mat images, double scalefactor = 1.0, Size size = Size(), Scalar mean = Scalar(), bool swapRB = false, bool crop = false, int ddepth = CV_32F)
//
+ (Mat*)blobFromImages:(NSArray<Mat*>*)images scalefactor:(double)scalefactor size:(Size2i*)size mean:(Scalar*)mean swapRB:(BOOL)swapRB crop:(BOOL)crop ddepth:(int)ddepth {
    OBJC2CV(cv::Mat, Mat, imagesVector, images);
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::dnn::blobFromImages(imagesVector, scalefactor, size.nativeRef, mean.nativeRef, (bool)swapRB, (bool)crop, ddepth));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)blobFromImages:(NSArray<Mat*>*)images scalefactor:(double)scalefactor size:(Size2i*)size mean:(Scalar*)mean swapRB:(BOOL)swapRB crop:(BOOL)crop {
    OBJC2CV(cv::Mat, Mat, imagesVector, images);
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::dnn::blobFromImages(imagesVector, scalefactor, size.nativeRef, mean.nativeRef, (bool)swapRB, (bool)crop));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)blobFromImages:(NSArray<Mat*>*)images scalefactor:(double)scalefactor size:(Size2i*)size mean:(Scalar*)mean swapRB:(BOOL)swapRB {
    OBJC2CV(cv::Mat, Mat, imagesVector, images);
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::dnn::blobFromImages(imagesVector, scalefactor, size.nativeRef, mean.nativeRef, (bool)swapRB));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)blobFromImages:(NSArray<Mat*>*)images scalefactor:(double)scalefactor size:(Size2i*)size mean:(Scalar*)mean {
    OBJC2CV(cv::Mat, Mat, imagesVector, images);
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::dnn::blobFromImages(imagesVector, scalefactor, size.nativeRef, mean.nativeRef));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)blobFromImages:(NSArray<Mat*>*)images scalefactor:(double)scalefactor size:(Size2i*)size {
    OBJC2CV(cv::Mat, Mat, imagesVector, images);
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::dnn::blobFromImages(imagesVector, scalefactor, size.nativeRef));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)blobFromImages:(NSArray<Mat*>*)images scalefactor:(double)scalefactor {
    OBJC2CV(cv::Mat, Mat, imagesVector, images);
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::dnn::blobFromImages(imagesVector, scalefactor));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)blobFromImages:(NSArray<Mat*>*)images {
    OBJC2CV(cv::Mat, Mat, imagesVector, images);
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::dnn::blobFromImages(imagesVector));
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::dnn::blobFromImageWithParams(Mat image, Image2BlobParams param = Image2BlobParams())
//
+ (Mat*)blobFromImageWithParams:(Mat*)image param:(Image2BlobParams*)param {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::dnn::blobFromImageWithParams(image.nativeRef, *(param.nativePtr)));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)blobFromImageWithParams:(Mat*)image {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::dnn::blobFromImageWithParams(image.nativeRef));
    return [Mat fromNativePtr:retVal];
}


//
//  void cv::dnn::blobFromImageWithParams(Mat image, Mat& blob, Image2BlobParams param = Image2BlobParams())
//
+ (void)blobFromImageWithParams:(Mat*)image blob:(Mat*)blob param:(Image2BlobParams*)param {
    cv::dnn::blobFromImageWithParams(image.nativeRef, blob.nativeRef, *(param.nativePtr));
}

+ (void)blobFromImageWithParams:(Mat*)image blob:(Mat*)blob {
    cv::dnn::blobFromImageWithParams(image.nativeRef, blob.nativeRef);
}


//
//  Mat cv::dnn::blobFromImagesWithParams(vector_Mat images, Image2BlobParams param = Image2BlobParams())
//
+ (Mat*)blobFromImagesWithParams:(NSArray<Mat*>*)images param:(Image2BlobParams*)param {
    OBJC2CV(cv::Mat, Mat, imagesVector, images);
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::dnn::blobFromImagesWithParams(imagesVector, *(param.nativePtr)));
    return [Mat fromNativePtr:retVal];
}

+ (Mat*)blobFromImagesWithParams:(NSArray<Mat*>*)images {
    OBJC2CV(cv::Mat, Mat, imagesVector, images);
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::dnn::blobFromImagesWithParams(imagesVector));
    return [Mat fromNativePtr:retVal];
}


//
//  void cv::dnn::blobFromImagesWithParams(vector_Mat images, Mat& blob, Image2BlobParams param = Image2BlobParams())
//
+ (void)blobFromImagesWithParams:(NSArray<Mat*>*)images blob:(Mat*)blob param:(Image2BlobParams*)param {
    OBJC2CV(cv::Mat, Mat, imagesVector, images);
    cv::dnn::blobFromImagesWithParams(imagesVector, blob.nativeRef, *(param.nativePtr));
}

+ (void)blobFromImagesWithParams:(NSArray<Mat*>*)images blob:(Mat*)blob {
    OBJC2CV(cv::Mat, Mat, imagesVector, images);
    cv::dnn::blobFromImagesWithParams(imagesVector, blob.nativeRef);
}


//
//  void cv::dnn::imagesFromBlob(Mat blob_, vector_Mat& images_)
//
+ (void)imagesFromBlob:(Mat*)blob_ images_:(NSMutableArray<Mat*>*)images_ {
    OBJC2CV(cv::Mat, Mat, images_Vector, images_);
    cv::dnn::imagesFromBlob(blob_.nativeRef, images_Vector);
    CV2OBJC(cv::Mat, Mat, images_Vector, images_);
}


//
//  void cv::dnn::shrinkCaffeModel(String src, String dst, vector_String layersTypes = std::vector<String>())
//
+ (void)shrinkCaffeModel:(NSString*)src dst:(NSString*)dst layersTypes:(NSArray<NSString*>*)layersTypes {
    #define CONV_layersTypes(e) cv::String(e.UTF8String)
    OBJC2CV_CUSTOM(cv::String, NSString, layersTypesVector, layersTypes, CONV_layersTypes);
    #undef CONV_layersTypes
    cv::dnn::shrinkCaffeModel(cv::String(src.UTF8String), cv::String(dst.UTF8String), layersTypesVector);
}

+ (void)shrinkCaffeModel:(NSString*)src dst:(NSString*)dst {
    cv::dnn::shrinkCaffeModel(cv::String(src.UTF8String), cv::String(dst.UTF8String));
}


//
//  void cv::dnn::writeTextGraph(String model, String output)
//
+ (void)writeTextGraph:(NSString*)model output:(NSString*)output {
    cv::dnn::writeTextGraph(cv::String(model.UTF8String), cv::String(output.UTF8String));
}


//
//  void cv::dnn::NMSBoxes(vector_Rect2d bboxes, vector_float scores, float score_threshold, float nms_threshold, vector_int& indices, float eta = 1.f, int top_k = 0)
//
+ (void)NMSBoxes:(NSArray<Rect2d*>*)bboxes scores:(FloatVector*)scores score_threshold:(float)score_threshold nms_threshold:(float)nms_threshold indices:(IntVector*)indices eta:(float)eta top_k:(int)top_k {
    OBJC2CV(cv::Rect2d, Rect2d, bboxesVector, bboxes);
    cv::dnn::NMSBoxes(bboxesVector, scores.nativeRef, score_threshold, nms_threshold, indices.nativeRef, eta, top_k);
}

+ (void)NMSBoxes:(NSArray<Rect2d*>*)bboxes scores:(FloatVector*)scores score_threshold:(float)score_threshold nms_threshold:(float)nms_threshold indices:(IntVector*)indices eta:(float)eta {
    OBJC2CV(cv::Rect2d, Rect2d, bboxesVector, bboxes);
    cv::dnn::NMSBoxes(bboxesVector, scores.nativeRef, score_threshold, nms_threshold, indices.nativeRef, eta);
}

+ (void)NMSBoxes:(NSArray<Rect2d*>*)bboxes scores:(FloatVector*)scores score_threshold:(float)score_threshold nms_threshold:(float)nms_threshold indices:(IntVector*)indices {
    OBJC2CV(cv::Rect2d, Rect2d, bboxesVector, bboxes);
    cv::dnn::NMSBoxes(bboxesVector, scores.nativeRef, score_threshold, nms_threshold, indices.nativeRef);
}


//
//  void cv::dnn::NMSBoxes(vector_RotatedRect bboxes, vector_float scores, float score_threshold, float nms_threshold, vector_int& indices, float eta = 1.f, int top_k = 0)
//
+ (void)NMSBoxesRotated:(NSArray<RotatedRect*>*)bboxes scores:(FloatVector*)scores score_threshold:(float)score_threshold nms_threshold:(float)nms_threshold indices:(IntVector*)indices eta:(float)eta top_k:(int)top_k {
    OBJC2CV(cv::RotatedRect, RotatedRect, bboxesVector, bboxes);
    cv::dnn::NMSBoxes(bboxesVector, scores.nativeRef, score_threshold, nms_threshold, indices.nativeRef, eta, top_k);
}

+ (void)NMSBoxesRotated:(NSArray<RotatedRect*>*)bboxes scores:(FloatVector*)scores score_threshold:(float)score_threshold nms_threshold:(float)nms_threshold indices:(IntVector*)indices eta:(float)eta {
    OBJC2CV(cv::RotatedRect, RotatedRect, bboxesVector, bboxes);
    cv::dnn::NMSBoxes(bboxesVector, scores.nativeRef, score_threshold, nms_threshold, indices.nativeRef, eta);
}

+ (void)NMSBoxesRotated:(NSArray<RotatedRect*>*)bboxes scores:(FloatVector*)scores score_threshold:(float)score_threshold nms_threshold:(float)nms_threshold indices:(IntVector*)indices {
    OBJC2CV(cv::RotatedRect, RotatedRect, bboxesVector, bboxes);
    cv::dnn::NMSBoxes(bboxesVector, scores.nativeRef, score_threshold, nms_threshold, indices.nativeRef);
}


//
//  void cv::dnn::NMSBoxesBatched(vector_Rect2d bboxes, vector_float scores, vector_int class_ids, float score_threshold, float nms_threshold, vector_int& indices, float eta = 1.f, int top_k = 0)
//
+ (void)NMSBoxesBatched:(NSArray<Rect2d*>*)bboxes scores:(FloatVector*)scores class_ids:(IntVector*)class_ids score_threshold:(float)score_threshold nms_threshold:(float)nms_threshold indices:(IntVector*)indices eta:(float)eta top_k:(int)top_k {
    OBJC2CV(cv::Rect2d, Rect2d, bboxesVector, bboxes);
    cv::dnn::NMSBoxesBatched(bboxesVector, scores.nativeRef, class_ids.nativeRef, score_threshold, nms_threshold, indices.nativeRef, eta, top_k);
}

+ (void)NMSBoxesBatched:(NSArray<Rect2d*>*)bboxes scores:(FloatVector*)scores class_ids:(IntVector*)class_ids score_threshold:(float)score_threshold nms_threshold:(float)nms_threshold indices:(IntVector*)indices eta:(float)eta {
    OBJC2CV(cv::Rect2d, Rect2d, bboxesVector, bboxes);
    cv::dnn::NMSBoxesBatched(bboxesVector, scores.nativeRef, class_ids.nativeRef, score_threshold, nms_threshold, indices.nativeRef, eta);
}

+ (void)NMSBoxesBatched:(NSArray<Rect2d*>*)bboxes scores:(FloatVector*)scores class_ids:(IntVector*)class_ids score_threshold:(float)score_threshold nms_threshold:(float)nms_threshold indices:(IntVector*)indices {
    OBJC2CV(cv::Rect2d, Rect2d, bboxesVector, bboxes);
    cv::dnn::NMSBoxesBatched(bboxesVector, scores.nativeRef, class_ids.nativeRef, score_threshold, nms_threshold, indices.nativeRef);
}


//
//  void cv::dnn::softNMSBoxes(vector_Rect bboxes, vector_float scores, vector_float& updated_scores, float score_threshold, float nms_threshold, vector_int& indices, size_t top_k = 0, float sigma = 0.5, SoftNMSMethod method = SoftNMSMethod::SOFTNMS_GAUSSIAN)
//
+ (void)softNMSBoxes:(NSArray<Rect2i*>*)bboxes scores:(FloatVector*)scores updated_scores:(FloatVector*)updated_scores score_threshold:(float)score_threshold nms_threshold:(float)nms_threshold indices:(IntVector*)indices top_k:(size_t)top_k sigma:(float)sigma method:(SoftNMSMethod)method {
    OBJC2CV(cv::Rect2i, Rect2i, bboxesVector, bboxes);
    cv::dnn::softNMSBoxes(bboxesVector, scores.nativeRef, updated_scores.nativeRef, score_threshold, nms_threshold, indices.nativeRef, top_k, sigma, (cv::dnn::SoftNMSMethod)method);
}

+ (void)softNMSBoxes:(NSArray<Rect2i*>*)bboxes scores:(FloatVector*)scores updated_scores:(FloatVector*)updated_scores score_threshold:(float)score_threshold nms_threshold:(float)nms_threshold indices:(IntVector*)indices top_k:(size_t)top_k sigma:(float)sigma {
    OBJC2CV(cv::Rect2i, Rect2i, bboxesVector, bboxes);
    cv::dnn::softNMSBoxes(bboxesVector, scores.nativeRef, updated_scores.nativeRef, score_threshold, nms_threshold, indices.nativeRef, top_k, sigma);
}

+ (void)softNMSBoxes:(NSArray<Rect2i*>*)bboxes scores:(FloatVector*)scores updated_scores:(FloatVector*)updated_scores score_threshold:(float)score_threshold nms_threshold:(float)nms_threshold indices:(IntVector*)indices top_k:(size_t)top_k {
    OBJC2CV(cv::Rect2i, Rect2i, bboxesVector, bboxes);
    cv::dnn::softNMSBoxes(bboxesVector, scores.nativeRef, updated_scores.nativeRef, score_threshold, nms_threshold, indices.nativeRef, top_k);
}

+ (void)softNMSBoxes:(NSArray<Rect2i*>*)bboxes scores:(FloatVector*)scores updated_scores:(FloatVector*)updated_scores score_threshold:(float)score_threshold nms_threshold:(float)nms_threshold indices:(IntVector*)indices {
    OBJC2CV(cv::Rect2i, Rect2i, bboxesVector, bboxes);
    cv::dnn::softNMSBoxes(bboxesVector, scores.nativeRef, updated_scores.nativeRef, score_threshold, nms_threshold, indices.nativeRef);
}


//
//  String cv::dnn::getInferenceEngineBackendType()
//
+ (NSString*)getInferenceEngineBackendType {
    cv::String retVal = cv::dnn::getInferenceEngineBackendType();
    return [NSString stringWithUTF8String:retVal.c_str()];
}


//
//  String cv::dnn::setInferenceEngineBackendType(String newBackendType)
//
+ (NSString*)setInferenceEngineBackendType:(NSString*)newBackendType {
    cv::String retVal = cv::dnn::setInferenceEngineBackendType(cv::String(newBackendType.UTF8String));
    return [NSString stringWithUTF8String:retVal.c_str()];
}


//
//  void cv::dnn::resetMyriadDevice()
//
+ (void)resetMyriadDevice {
    cv::dnn::resetMyriadDevice();
}


//
//  String cv::dnn::getInferenceEngineVPUType()
//
+ (NSString*)getInferenceEngineVPUType {
    cv::String retVal = cv::dnn::getInferenceEngineVPUType();
    return [NSString stringWithUTF8String:retVal.c_str()];
}


//
//  String cv::dnn::getInferenceEngineCPUType()
//
+ (NSString*)getInferenceEngineCPUType {
    cv::String retVal = cv::dnn::getInferenceEngineCPUType();
    return [NSString stringWithUTF8String:retVal.c_str()];
}


//
//  void cv::dnn::releaseHDDLPlugin()
//
+ (void)releaseHDDLPlugin {
    cv::dnn::releaseHDDLPlugin();
}



@end



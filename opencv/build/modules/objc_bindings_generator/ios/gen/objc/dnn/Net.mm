//
// This file is auto-generated. Please don't modify it!
//

#import "Net.h"
#import "CVObjcUtil.h"

#import "ByteVector.h"
#import "DictValue.h"
#import "DoubleVector.h"
#import "FloatVector.h"
#import "IntVector.h"
#import "Layer.h"
#import "Mat.h"
#import "Scalar.h"

@implementation Net


- (instancetype)initWithNativePtr:(cv::Ptr<cv::dnn::Net>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::dnn::Net>)nativePtr {
    return [[Net alloc] initWithNativePtr:nativePtr];
}



//
//   cv::dnn::Net::Net()
//
- (instancetype)init {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::Net>(new cv::dnn::Net())];
}


//
// static Net cv::dnn::Net::readFromModelOptimizer(String xml, String bin)
//
+ (Net*)readFromModelOptimizer:(NSString*)xml bin:(NSString*)bin {
    cv::Ptr<cv::dnn::Net> retVal = new cv::dnn::Net(cv::dnn::Net::readFromModelOptimizer(cv::String(xml.UTF8String), cv::String(bin.UTF8String)));
    return [Net fromNative:retVal];
}


//
// static Net cv::dnn::Net::readFromModelOptimizer(vector_uchar bufferModelConfig, vector_uchar bufferWeights)
//
+ (Net*)readFromModelOptimizer:(ByteVector*)bufferModelConfig bufferWeights:(ByteVector*)bufferWeights {
    cv::Ptr<cv::dnn::Net> retVal = new cv::dnn::Net(cv::dnn::Net::readFromModelOptimizer((std::vector<uchar>&)bufferModelConfig.nativeRef, (std::vector<uchar>&)bufferWeights.nativeRef));
    return [Net fromNative:retVal];
}


//
//  bool cv::dnn::Net::empty()
//
- (BOOL)empty {
    bool retVal = self.nativePtr->empty();
    return retVal;
}


//
//  String cv::dnn::Net::dump()
//
- (NSString*)dump {
    cv::String retVal = self.nativePtr->dump();
    return [NSString stringWithUTF8String:retVal.c_str()];
}


//
//  void cv::dnn::Net::dumpToFile(String path)
//
- (void)dumpToFile:(NSString*)path {
    self.nativePtr->dumpToFile(cv::String(path.UTF8String));
}


//
//  int cv::dnn::Net::getLayerId(String layer)
//
- (int)getLayerId:(NSString*)layer {
    int retVal = self.nativePtr->getLayerId(cv::String(layer.UTF8String));
    return retVal;
}


//
//  vector_String cv::dnn::Net::getLayerNames()
//
- (NSArray<NSString*>*)getLayerNames {
    NSMutableArray<NSString*>* retVal = [NSMutableArray new];
    std::vector<cv::String> retValVector = self.nativePtr->getLayerNames();
    #define UNCONV_retVal(e) [NSString stringWithUTF8String:e.c_str()]
    CV2OBJC_CUSTOM(cv::String, NSString, retValVector, retVal, UNCONV_retVal);
    #undef UNCONV_retVal
    return retVal;
}


//
//  Ptr_Layer cv::dnn::Net::getLayer(int layerId)
//
- (Layer*)getLayer:(int)layerId {
    cv::Ptr<cv::dnn::Layer> retVal = self.nativePtr->getLayer(layerId);
    return [Layer fromNative:retVal];
}


//
//  Ptr_Layer cv::dnn::Net::getLayer(String layerName)
//
- (Layer*)getLayerByName:(NSString*)layerName {
    cv::Ptr<cv::dnn::Layer> retVal = self.nativePtr->getLayer(cv::String(layerName.UTF8String));
    return [Layer fromNative:retVal];
}


//
//  Ptr_Layer cv::dnn::Net::getLayer(LayerId layerId)
//
- (Layer*)getLayerByDictValue:(DictValue*)layerId {
    cv::Ptr<cv::dnn::Layer> retVal = self.nativePtr->getLayer(*(cv::dnn::DictValue*)(layerId.nativePtr));
    return [Layer fromNative:retVal];
}


//
//  void cv::dnn::Net::connect(String outPin, String inpPin)
//
- (void)connect:(NSString*)outPin inpPin:(NSString*)inpPin {
    self.nativePtr->connect(cv::String(outPin.UTF8String), cv::String(inpPin.UTF8String));
}


//
//  void cv::dnn::Net::setInputsNames(vector_String inputBlobNames)
//
- (void)setInputsNames:(NSArray<NSString*>*)inputBlobNames {
    #define CONV_inputBlobNames(e) cv::String(e.UTF8String)
    OBJC2CV_CUSTOM(cv::String, NSString, inputBlobNamesVector, inputBlobNames, CONV_inputBlobNames);
    #undef CONV_inputBlobNames
    self.nativePtr->setInputsNames(inputBlobNamesVector);
}


//
//  void cv::dnn::Net::setInputShape(String inputName, MatShape shape)
//
- (void)setInputShape:(NSString*)inputName shape:(IntVector*)shape {
    self.nativePtr->setInputShape(cv::String(inputName.UTF8String), shape.nativeRef);
}


//
//  Mat cv::dnn::Net::forward(String outputName = String())
//
- (Mat*)forward:(NSString*)outputName {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->forward(cv::String(outputName.UTF8String)));
    return [Mat fromNativePtr:retVal];
}

- (Mat*)forward {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->forward());
    return [Mat fromNativePtr:retVal];
}


//
//  AsyncArray cv::dnn::Net::forwardAsync(String outputName = String())
//

//
//  void cv::dnn::Net::forward(vector_Mat& outputBlobs, String outputName = String())
//
- (void)forwardOutputBlobs:(NSMutableArray<Mat*>*)outputBlobs outputName:(NSString*)outputName {
    OBJC2CV(cv::Mat, Mat, outputBlobsVector, outputBlobs);
    self.nativePtr->forward(outputBlobsVector, cv::String(outputName.UTF8String));
    CV2OBJC(cv::Mat, Mat, outputBlobsVector, outputBlobs);
}

- (void)forwardOutputBlobs:(NSMutableArray<Mat*>*)outputBlobs {
    OBJC2CV(cv::Mat, Mat, outputBlobsVector, outputBlobs);
    self.nativePtr->forward(outputBlobsVector);
    CV2OBJC(cv::Mat, Mat, outputBlobsVector, outputBlobs);
}


//
//  void cv::dnn::Net::forward(vector_Mat& outputBlobs, vector_String outBlobNames)
//
- (void)forwardOutputBlobs:(NSMutableArray<Mat*>*)outputBlobs outBlobNames:(NSArray<NSString*>*)outBlobNames {
    OBJC2CV(cv::Mat, Mat, outputBlobsVector, outputBlobs);
    #define CONV_outBlobNames(e) cv::String(e.UTF8String)
    OBJC2CV_CUSTOM(cv::String, NSString, outBlobNamesVector, outBlobNames, CONV_outBlobNames);
    #undef CONV_outBlobNames
    self.nativePtr->forward(outputBlobsVector, outBlobNamesVector);
    CV2OBJC(cv::Mat, Mat, outputBlobsVector, outputBlobs);
}


//
//  void cv::dnn::Net::forward(vector_vector_Mat& outputBlobs, vector_String outBlobNames)
//
- (void)forwardAndRetrieve:(NSMutableArray<NSMutableArray<Mat*>*>*)outputBlobs outBlobNames:(NSArray<NSString*>*)outBlobNames {
    OBJC2CV2(cv::Mat, Mat, outputBlobsVector2, outputBlobs);
    #define CONV_outBlobNames(e) cv::String(e.UTF8String)
    OBJC2CV_CUSTOM(cv::String, NSString, outBlobNamesVector, outBlobNames, CONV_outBlobNames);
    #undef CONV_outBlobNames
    self.nativePtr->forward(outputBlobsVector2, outBlobNamesVector);
    CV2OBJC2(cv::Mat, Mat, outputBlobsVector2, outputBlobs);
}


//
//  Net cv::dnn::Net::quantize(vector_Mat calibData, int inputsDtype, int outputsDtype, bool perChannel = true)
//
- (Net*)quantize:(NSArray<Mat*>*)calibData inputsDtype:(int)inputsDtype outputsDtype:(int)outputsDtype perChannel:(BOOL)perChannel {
    OBJC2CV(cv::Mat, Mat, calibDataVector, calibData);
    cv::Ptr<cv::dnn::Net> retVal = new cv::dnn::Net(self.nativePtr->quantize(calibDataVector, inputsDtype, outputsDtype, (bool)perChannel));
    return [Net fromNative:retVal];
}

- (Net*)quantize:(NSArray<Mat*>*)calibData inputsDtype:(int)inputsDtype outputsDtype:(int)outputsDtype {
    OBJC2CV(cv::Mat, Mat, calibDataVector, calibData);
    cv::Ptr<cv::dnn::Net> retVal = new cv::dnn::Net(self.nativePtr->quantize(calibDataVector, inputsDtype, outputsDtype));
    return [Net fromNative:retVal];
}


//
//  void cv::dnn::Net::getInputDetails(vector_float& scales, vector_int& zeropoints)
//
- (void)getInputDetails:(FloatVector*)scales zeropoints:(IntVector*)zeropoints {
    self.nativePtr->getInputDetails(scales.nativeRef, zeropoints.nativeRef);
}


//
//  void cv::dnn::Net::getOutputDetails(vector_float& scales, vector_int& zeropoints)
//
- (void)getOutputDetails:(FloatVector*)scales zeropoints:(IntVector*)zeropoints {
    self.nativePtr->getOutputDetails(scales.nativeRef, zeropoints.nativeRef);
}


//
//  void cv::dnn::Net::setHalideScheduler(String scheduler)
//
- (void)setHalideScheduler:(NSString*)scheduler {
    self.nativePtr->setHalideScheduler(cv::String(scheduler.UTF8String));
}


//
//  void cv::dnn::Net::setPreferableBackend(int backendId)
//
- (void)setPreferableBackend:(int)backendId {
    self.nativePtr->setPreferableBackend(backendId);
}


//
//  void cv::dnn::Net::setPreferableTarget(int targetId)
//
- (void)setPreferableTarget:(int)targetId {
    self.nativePtr->setPreferableTarget(targetId);
}


//
//  void cv::dnn::Net::setInput(Mat blob, String name = "", double scalefactor = 1.0, Scalar mean = Scalar())
//
- (void)setInput:(Mat*)blob name:(NSString*)name scalefactor:(double)scalefactor mean:(Scalar*)mean {
    self.nativePtr->setInput(blob.nativeRef, cv::String(name.UTF8String), scalefactor, mean.nativeRef);
}

- (void)setInput:(Mat*)blob name:(NSString*)name scalefactor:(double)scalefactor {
    self.nativePtr->setInput(blob.nativeRef, cv::String(name.UTF8String), scalefactor);
}

- (void)setInput:(Mat*)blob name:(NSString*)name {
    self.nativePtr->setInput(blob.nativeRef, cv::String(name.UTF8String));
}

- (void)setInput:(Mat*)blob {
    self.nativePtr->setInput(blob.nativeRef);
}


//
//  void cv::dnn::Net::setParam(int layer, int numParam, Mat blob)
//
- (void)setParam:(int)layer numParam:(int)numParam blob:(Mat*)blob {
    self.nativePtr->setParam(layer, numParam, blob.nativeRef);
}


//
//  void cv::dnn::Net::setParam(String layerName, int numParam, Mat blob)
//
- (void)setParamByName:(NSString*)layerName numParam:(int)numParam blob:(Mat*)blob {
    self.nativePtr->setParam(cv::String(layerName.UTF8String), numParam, blob.nativeRef);
}


//
//  Mat cv::dnn::Net::getParam(int layer, int numParam = 0)
//
- (Mat*)getParam:(int)layer numParam:(int)numParam {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->getParam(layer, numParam));
    return [Mat fromNativePtr:retVal];
}

- (Mat*)getParam:(int)layer {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->getParam(layer));
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::dnn::Net::getParam(String layerName, int numParam = 0)
//
- (Mat*)getParamByName:(NSString*)layerName numParam:(int)numParam {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->getParam(cv::String(layerName.UTF8String), numParam));
    return [Mat fromNativePtr:retVal];
}

- (Mat*)getParamByName:(NSString*)layerName {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->getParam(cv::String(layerName.UTF8String)));
    return [Mat fromNativePtr:retVal];
}


//
//  vector_int cv::dnn::Net::getUnconnectedOutLayers()
//
- (IntVector*)getUnconnectedOutLayers {
    std::vector<int> retVal = self.nativePtr->getUnconnectedOutLayers();
    return [IntVector fromNative:retVal];
}


//
//  vector_String cv::dnn::Net::getUnconnectedOutLayersNames()
//
- (NSArray<NSString*>*)getUnconnectedOutLayersNames {
    NSMutableArray<NSString*>* retVal = [NSMutableArray new];
    std::vector<cv::String> retValVector = self.nativePtr->getUnconnectedOutLayersNames();
    #define UNCONV_retVal(e) [NSString stringWithUTF8String:e.c_str()]
    CV2OBJC_CUSTOM(cv::String, NSString, retValVector, retVal, UNCONV_retVal);
    #undef UNCONV_retVal
    return retVal;
}


//
//  void cv::dnn::Net::getLayersShapes(vector_MatShape netInputShapes, vector_int& layersIds, vector_vector_MatShape& inLayersShapes, vector_vector_MatShape& outLayersShapes)
//
- (void)getLayersShapesWithNetInputShapes:(NSArray<IntVector*>*)netInputShapes layersIds:(IntVector*)layersIds inLayersShapes:(NSMutableArray<NSMutableArray<IntVector*>*>*)inLayersShapes outLayersShapes:(NSMutableArray<NSMutableArray<IntVector*>*>*)outLayersShapes {
    OBJC2CV(std::vector<int>, IntVector, netInputShapesVector, netInputShapes);
    OBJC2CV2(std::vector<int>, IntVector, inLayersShapesVector2, inLayersShapes);
    OBJC2CV2(std::vector<int>, IntVector, outLayersShapesVector2, outLayersShapes);
    self.nativePtr->getLayersShapes(netInputShapesVector, layersIds.nativeRef, inLayersShapesVector2, outLayersShapesVector2);
    CV2OBJC2(std::vector<int>, IntVector, inLayersShapesVector2, inLayersShapes);
    CV2OBJC2(std::vector<int>, IntVector, outLayersShapesVector2, outLayersShapes);
}


//
//  void cv::dnn::Net::getLayersShapes(MatShape netInputShape, vector_int& layersIds, vector_vector_MatShape& inLayersShapes, vector_vector_MatShape& outLayersShapes)
//
- (void)getLayersShapesWithNetInputShape:(IntVector*)netInputShape layersIds:(IntVector*)layersIds inLayersShapes:(NSMutableArray<NSMutableArray<IntVector*>*>*)inLayersShapes outLayersShapes:(NSMutableArray<NSMutableArray<IntVector*>*>*)outLayersShapes {
    OBJC2CV2(std::vector<int>, IntVector, inLayersShapesVector2, inLayersShapes);
    OBJC2CV2(std::vector<int>, IntVector, outLayersShapesVector2, outLayersShapes);
    self.nativePtr->getLayersShapes(netInputShape.nativeRef, layersIds.nativeRef, inLayersShapesVector2, outLayersShapesVector2);
    CV2OBJC2(std::vector<int>, IntVector, inLayersShapesVector2, inLayersShapes);
    CV2OBJC2(std::vector<int>, IntVector, outLayersShapesVector2, outLayersShapes);
}


//
//  int64 cv::dnn::Net::getFLOPS(vector_MatShape netInputShapes)
//
- (long)getFLOPSWithNetInputShapes:(NSArray<IntVector*>*)netInputShapes {
    OBJC2CV(std::vector<int>, IntVector, netInputShapesVector, netInputShapes);
    int64 retVal = self.nativePtr->getFLOPS(netInputShapesVector);
    return retVal;
}


//
//  int64 cv::dnn::Net::getFLOPS(MatShape netInputShape)
//
- (long)getFLOPSWithNetInputShape:(IntVector*)netInputShape {
    int64 retVal = self.nativePtr->getFLOPS(netInputShape.nativeRef);
    return retVal;
}


//
//  int64 cv::dnn::Net::getFLOPS(int layerId, vector_MatShape netInputShapes)
//
- (long)getFLOPSWithLayerId:(int)layerId netInputShapes:(NSArray<IntVector*>*)netInputShapes {
    OBJC2CV(std::vector<int>, IntVector, netInputShapesVector, netInputShapes);
    int64 retVal = self.nativePtr->getFLOPS(layerId, netInputShapesVector);
    return retVal;
}


//
//  int64 cv::dnn::Net::getFLOPS(int layerId, MatShape netInputShape)
//
- (long)getFLOPSWithLayerId:(int)layerId netInputShape:(IntVector*)netInputShape {
    int64 retVal = self.nativePtr->getFLOPS(layerId, netInputShape.nativeRef);
    return retVal;
}


//
//  void cv::dnn::Net::getLayerTypes(vector_String& layersTypes)
//
- (void)getLayerTypes:(NSMutableArray<NSString*>*)layersTypes {
    #define CONV_layersTypes(e) cv::String(e.UTF8String)
    OBJC2CV_CUSTOM(cv::String, NSString, layersTypesVector, layersTypes, CONV_layersTypes);
    #undef CONV_layersTypes
    self.nativePtr->getLayerTypes(layersTypesVector);
    #define UNCONV_layersTypes(e) [NSString stringWithUTF8String:e.c_str()]
    CV2OBJC_CUSTOM(cv::String, NSString, layersTypesVector, layersTypes, UNCONV_layersTypes);
    #undef UNCONV_layersTypes
}


//
//  int cv::dnn::Net::getLayersCount(String layerType)
//
- (int)getLayersCount:(NSString*)layerType {
    int retVal = self.nativePtr->getLayersCount(cv::String(layerType.UTF8String));
    return retVal;
}


//
//  void cv::dnn::Net::getMemoryConsumption(MatShape netInputShape, size_t& weights, size_t& blobs)
//
- (void)getMemoryConsumption:(IntVector*)netInputShape weights:(size_t)weights blobs:(size_t)blobs {
    self.nativePtr->getMemoryConsumption(netInputShape.nativeRef, weights, blobs);
}


//
//  void cv::dnn::Net::getMemoryConsumption(int layerId, vector_MatShape netInputShapes, size_t& weights, size_t& blobs)
//
- (void)getMemoryConsumption:(int)layerId netInputShapes:(NSArray<IntVector*>*)netInputShapes weights:(size_t)weights blobs:(size_t)blobs {
    OBJC2CV(std::vector<int>, IntVector, netInputShapesVector, netInputShapes);
    self.nativePtr->getMemoryConsumption(layerId, netInputShapesVector, weights, blobs);
}


//
//  void cv::dnn::Net::getMemoryConsumption(int layerId, MatShape netInputShape, size_t& weights, size_t& blobs)
//
- (void)getMemoryConsumption:(int)layerId netInputShape:(IntVector*)netInputShape weights:(size_t)weights blobs:(size_t)blobs {
    self.nativePtr->getMemoryConsumption(layerId, netInputShape.nativeRef, weights, blobs);
}


//
//  void cv::dnn::Net::enableFusion(bool fusion)
//
- (void)enableFusion:(BOOL)fusion {
    self.nativePtr->enableFusion((bool)fusion);
}


//
//  void cv::dnn::Net::enableWinograd(bool useWinograd)
//
- (void)enableWinograd:(BOOL)useWinograd {
    self.nativePtr->enableWinograd((bool)useWinograd);
}


//
//  int64 cv::dnn::Net::getPerfProfile(vector_double& timings)
//
- (long)getPerfProfile:(DoubleVector*)timings {
    int64 retVal = self.nativePtr->getPerfProfile(timings.nativeRef);
    return retVal;
}



@end



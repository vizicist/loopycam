//
// This file is auto-generated. Please don't modify it!
//

#import "TrainData.h"
#import "CVObjcUtil.h"

#import "Mat.h"

@implementation TrainData


- (instancetype)initWithNativePtr:(cv::Ptr<cv::ml::TrainData>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::ml::TrainData>)nativePtr {
    return [[TrainData alloc] initWithNativePtr:nativePtr];
}



//
//  int cv::ml::TrainData::getLayout()
//
- (int)getLayout {
    int retVal = self.nativePtr->getLayout();
    return retVal;
}


//
//  int cv::ml::TrainData::getNTrainSamples()
//
- (int)getNTrainSamples {
    int retVal = self.nativePtr->getNTrainSamples();
    return retVal;
}


//
//  int cv::ml::TrainData::getNTestSamples()
//
- (int)getNTestSamples {
    int retVal = self.nativePtr->getNTestSamples();
    return retVal;
}


//
//  int cv::ml::TrainData::getNSamples()
//
- (int)getNSamples {
    int retVal = self.nativePtr->getNSamples();
    return retVal;
}


//
//  int cv::ml::TrainData::getNVars()
//
- (int)getNVars {
    int retVal = self.nativePtr->getNVars();
    return retVal;
}


//
//  int cv::ml::TrainData::getNAllVars()
//
- (int)getNAllVars {
    int retVal = self.nativePtr->getNAllVars();
    return retVal;
}


//
//  void cv::ml::TrainData::getSample(Mat varIdx, int sidx, float* buf)
//
- (void)getSample:(Mat*)varIdx sidx:(int)sidx buf:(float)buf {
    self.nativePtr->getSample(varIdx.nativeRef, sidx, &(buf));
}


//
//  Mat cv::ml::TrainData::getSamples()
//
- (Mat*)getSamples {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->getSamples());
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::ml::TrainData::getMissing()
//
- (Mat*)getMissing {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->getMissing());
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::ml::TrainData::getTrainSamples(int layout = ROW_SAMPLE, bool compressSamples = true, bool compressVars = true)
//
- (Mat*)getTrainSamples:(int)layout compressSamples:(BOOL)compressSamples compressVars:(BOOL)compressVars {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->getTrainSamples(layout, (bool)compressSamples, (bool)compressVars));
    return [Mat fromNativePtr:retVal];
}

- (Mat*)getTrainSamples:(int)layout compressSamples:(BOOL)compressSamples {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->getTrainSamples(layout, (bool)compressSamples));
    return [Mat fromNativePtr:retVal];
}

- (Mat*)getTrainSamples:(int)layout {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->getTrainSamples(layout));
    return [Mat fromNativePtr:retVal];
}

- (Mat*)getTrainSamples {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->getTrainSamples());
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::ml::TrainData::getTrainResponses()
//
- (Mat*)getTrainResponses {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->getTrainResponses());
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::ml::TrainData::getTrainNormCatResponses()
//
- (Mat*)getTrainNormCatResponses {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->getTrainNormCatResponses());
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::ml::TrainData::getTestResponses()
//
- (Mat*)getTestResponses {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->getTestResponses());
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::ml::TrainData::getTestNormCatResponses()
//
- (Mat*)getTestNormCatResponses {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->getTestNormCatResponses());
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::ml::TrainData::getResponses()
//
- (Mat*)getResponses {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->getResponses());
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::ml::TrainData::getNormCatResponses()
//
- (Mat*)getNormCatResponses {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->getNormCatResponses());
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::ml::TrainData::getSampleWeights()
//
- (Mat*)getSampleWeights {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->getSampleWeights());
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::ml::TrainData::getTrainSampleWeights()
//
- (Mat*)getTrainSampleWeights {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->getTrainSampleWeights());
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::ml::TrainData::getTestSampleWeights()
//
- (Mat*)getTestSampleWeights {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->getTestSampleWeights());
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::ml::TrainData::getVarIdx()
//
- (Mat*)getVarIdx {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->getVarIdx());
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::ml::TrainData::getVarType()
//
- (Mat*)getVarType {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->getVarType());
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::ml::TrainData::getVarSymbolFlags()
//
- (Mat*)getVarSymbolFlags {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->getVarSymbolFlags());
    return [Mat fromNativePtr:retVal];
}


//
//  int cv::ml::TrainData::getResponseType()
//
- (int)getResponseType {
    int retVal = self.nativePtr->getResponseType();
    return retVal;
}


//
//  Mat cv::ml::TrainData::getTrainSampleIdx()
//
- (Mat*)getTrainSampleIdx {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->getTrainSampleIdx());
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::ml::TrainData::getTestSampleIdx()
//
- (Mat*)getTestSampleIdx {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->getTestSampleIdx());
    return [Mat fromNativePtr:retVal];
}


//
//  void cv::ml::TrainData::getValues(int vi, Mat sidx, float* values)
//
- (void)getValues:(int)vi sidx:(Mat*)sidx values:(float)values {
    self.nativePtr->getValues(vi, sidx.nativeRef, &(values));
}


//
//  Mat cv::ml::TrainData::getDefaultSubstValues()
//
- (Mat*)getDefaultSubstValues {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->getDefaultSubstValues());
    return [Mat fromNativePtr:retVal];
}


//
//  int cv::ml::TrainData::getCatCount(int vi)
//
- (int)getCatCount:(int)vi {
    int retVal = self.nativePtr->getCatCount(vi);
    return retVal;
}


//
//  Mat cv::ml::TrainData::getClassLabels()
//
- (Mat*)getClassLabels {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->getClassLabels());
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::ml::TrainData::getCatOfs()
//
- (Mat*)getCatOfs {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->getCatOfs());
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::ml::TrainData::getCatMap()
//
- (Mat*)getCatMap {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->getCatMap());
    return [Mat fromNativePtr:retVal];
}


//
//  void cv::ml::TrainData::setTrainTestSplit(int count, bool shuffle = true)
//
- (void)setTrainTestSplit:(int)count shuffle:(BOOL)shuffle {
    self.nativePtr->setTrainTestSplit(count, (bool)shuffle);
}

- (void)setTrainTestSplit:(int)count {
    self.nativePtr->setTrainTestSplit(count);
}


//
//  void cv::ml::TrainData::setTrainTestSplitRatio(double ratio, bool shuffle = true)
//
- (void)setTrainTestSplitRatio:(double)ratio shuffle:(BOOL)shuffle {
    self.nativePtr->setTrainTestSplitRatio(ratio, (bool)shuffle);
}

- (void)setTrainTestSplitRatio:(double)ratio {
    self.nativePtr->setTrainTestSplitRatio(ratio);
}


//
//  void cv::ml::TrainData::shuffleTrainTest()
//
- (void)shuffleTrainTest {
    self.nativePtr->shuffleTrainTest();
}


//
//  Mat cv::ml::TrainData::getTestSamples()
//
- (Mat*)getTestSamples {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->getTestSamples());
    return [Mat fromNativePtr:retVal];
}


//
//  void cv::ml::TrainData::getNames(vector_String names)
//
- (void)getNames:(NSArray<NSString*>*)names {
    #define CONV_names(e) cv::String(e.UTF8String)
    OBJC2CV_CUSTOM(cv::String, NSString, namesVector, names, CONV_names);
    #undef CONV_names
    self.nativePtr->getNames(namesVector);
}


//
// static Mat cv::ml::TrainData::getSubVector(Mat vec, Mat idx)
//
+ (Mat*)getSubVector:(Mat*)vec idx:(Mat*)idx {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::ml::TrainData::getSubVector(vec.nativeRef, idx.nativeRef));
    return [Mat fromNativePtr:retVal];
}


//
// static Mat cv::ml::TrainData::getSubMatrix(Mat matrix, Mat idx, int layout)
//
+ (Mat*)getSubMatrix:(Mat*)matrix idx:(Mat*)idx layout:(int)layout {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::ml::TrainData::getSubMatrix(matrix.nativeRef, idx.nativeRef, layout));
    return [Mat fromNativePtr:retVal];
}


//
// static Ptr_TrainData cv::ml::TrainData::create(Mat samples, int layout, Mat responses, Mat varIdx = Mat(), Mat sampleIdx = Mat(), Mat sampleWeights = Mat(), Mat varType = Mat())
//
+ (TrainData*)create:(Mat*)samples layout:(int)layout responses:(Mat*)responses varIdx:(Mat*)varIdx sampleIdx:(Mat*)sampleIdx sampleWeights:(Mat*)sampleWeights varType:(Mat*)varType {
    cv::Ptr<cv::ml::TrainData> retVal = cv::ml::TrainData::create(samples.nativeRef, layout, responses.nativeRef, varIdx.nativeRef, sampleIdx.nativeRef, sampleWeights.nativeRef, varType.nativeRef);
    return [TrainData fromNative:retVal];
}

+ (TrainData*)create:(Mat*)samples layout:(int)layout responses:(Mat*)responses varIdx:(Mat*)varIdx sampleIdx:(Mat*)sampleIdx sampleWeights:(Mat*)sampleWeights {
    cv::Ptr<cv::ml::TrainData> retVal = cv::ml::TrainData::create(samples.nativeRef, layout, responses.nativeRef, varIdx.nativeRef, sampleIdx.nativeRef, sampleWeights.nativeRef);
    return [TrainData fromNative:retVal];
}

+ (TrainData*)create:(Mat*)samples layout:(int)layout responses:(Mat*)responses varIdx:(Mat*)varIdx sampleIdx:(Mat*)sampleIdx {
    cv::Ptr<cv::ml::TrainData> retVal = cv::ml::TrainData::create(samples.nativeRef, layout, responses.nativeRef, varIdx.nativeRef, sampleIdx.nativeRef);
    return [TrainData fromNative:retVal];
}

+ (TrainData*)create:(Mat*)samples layout:(int)layout responses:(Mat*)responses varIdx:(Mat*)varIdx {
    cv::Ptr<cv::ml::TrainData> retVal = cv::ml::TrainData::create(samples.nativeRef, layout, responses.nativeRef, varIdx.nativeRef);
    return [TrainData fromNative:retVal];
}

+ (TrainData*)create:(Mat*)samples layout:(int)layout responses:(Mat*)responses {
    cv::Ptr<cv::ml::TrainData> retVal = cv::ml::TrainData::create(samples.nativeRef, layout, responses.nativeRef);
    return [TrainData fromNative:retVal];
}



@end



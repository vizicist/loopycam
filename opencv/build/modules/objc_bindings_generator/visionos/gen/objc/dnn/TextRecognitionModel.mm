//
// This file is auto-generated. Please don't modify it!
//

#import "TextRecognitionModel.h"
#import "CVObjcUtil.h"

#import "Mat.h"
#import "Net.h"

@implementation TextRecognitionModel


- (instancetype)initWithNativePtr:(cv::Ptr<cv::dnn::TextRecognitionModel>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrTextRecognitionModel = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::dnn::TextRecognitionModel>)nativePtr {
    return [[TextRecognitionModel alloc] initWithNativePtr:nativePtr];
}



//
//   cv::dnn::TextRecognitionModel::TextRecognitionModel(Net network)
//
- (instancetype)initWithNetwork:(Net*)network {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::TextRecognitionModel>(new cv::dnn::TextRecognitionModel(*(network.nativePtr)))];
}


//
//   cv::dnn::TextRecognitionModel::TextRecognitionModel(string model, string config = "")
//
- (instancetype)initWithModel:(NSString*)model config:(NSString*)config {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::TextRecognitionModel>(new cv::dnn::TextRecognitionModel(std::string(model.UTF8String), std::string(config.UTF8String)))];
}

- (instancetype)initWithModel:(NSString*)model {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::TextRecognitionModel>(new cv::dnn::TextRecognitionModel(std::string(model.UTF8String)))];
}


//
//  TextRecognitionModel cv::dnn::TextRecognitionModel::setDecodeType(string decodeType)
//
- (TextRecognitionModel*)setDecodeType:(NSString*)decodeType {
    cv::Ptr<cv::dnn::TextRecognitionModel> retVal = new cv::dnn::TextRecognitionModel(self.nativePtrTextRecognitionModel->setDecodeType(std::string(decodeType.UTF8String)));
    return [TextRecognitionModel fromNative:retVal];
}


//
//  string cv::dnn::TextRecognitionModel::getDecodeType()
//
- (NSString*)getDecodeType {
    std::string retVal = self.nativePtrTextRecognitionModel->getDecodeType();
    return [NSString stringWithUTF8String:retVal.c_str()];
}


//
//  TextRecognitionModel cv::dnn::TextRecognitionModel::setDecodeOptsCTCPrefixBeamSearch(int beamSize, int vocPruneSize = 0)
//
- (TextRecognitionModel*)setDecodeOptsCTCPrefixBeamSearch:(int)beamSize vocPruneSize:(int)vocPruneSize {
    cv::Ptr<cv::dnn::TextRecognitionModel> retVal = new cv::dnn::TextRecognitionModel(self.nativePtrTextRecognitionModel->setDecodeOptsCTCPrefixBeamSearch(beamSize, vocPruneSize));
    return [TextRecognitionModel fromNative:retVal];
}

- (TextRecognitionModel*)setDecodeOptsCTCPrefixBeamSearch:(int)beamSize {
    cv::Ptr<cv::dnn::TextRecognitionModel> retVal = new cv::dnn::TextRecognitionModel(self.nativePtrTextRecognitionModel->setDecodeOptsCTCPrefixBeamSearch(beamSize));
    return [TextRecognitionModel fromNative:retVal];
}


//
//  TextRecognitionModel cv::dnn::TextRecognitionModel::setVocabulary(vector_string vocabulary)
//
- (TextRecognitionModel*)setVocabulary:(NSArray<NSString*>*)vocabulary {
    #define CONV_vocabulary(e) std::string(e.UTF8String)
    OBJC2CV_CUSTOM(std::string, NSString, vocabularyVector, vocabulary, CONV_vocabulary);
    #undef CONV_vocabulary
    cv::Ptr<cv::dnn::TextRecognitionModel> retVal = new cv::dnn::TextRecognitionModel(self.nativePtrTextRecognitionModel->setVocabulary(vocabularyVector));
    return [TextRecognitionModel fromNative:retVal];
}


//
//  vector_string cv::dnn::TextRecognitionModel::getVocabulary()
//
- (NSArray<NSString*>*)getVocabulary {
    NSMutableArray<NSString*>* retVal = [NSMutableArray new];
    std::vector<std::string> retValVector = self.nativePtrTextRecognitionModel->getVocabulary();
    #define UNCONV_retVal(e) [NSString stringWithUTF8String:e.c_str()]
    CV2OBJC_CUSTOM(std::string, NSString, retValVector, retVal, UNCONV_retVal);
    #undef UNCONV_retVal
    return retVal;
}


//
//  string cv::dnn::TextRecognitionModel::recognize(Mat frame)
//
- (NSString*)recognize:(Mat*)frame {
    std::string retVal = self.nativePtrTextRecognitionModel->recognize(frame.nativeRef);
    return [NSString stringWithUTF8String:retVal.c_str()];
}


//
//  void cv::dnn::TextRecognitionModel::recognize(Mat frame, vector_Mat roiRects, vector_string& results)
//
- (void)recognize:(Mat*)frame roiRects:(NSArray<Mat*>*)roiRects results:(NSMutableArray<NSString*>*)results {
    OBJC2CV(cv::Mat, Mat, roiRectsVector, roiRects);
    #define CONV_results(e) std::string(e.UTF8String)
    OBJC2CV_CUSTOM(std::string, NSString, resultsVector, results, CONV_results);
    #undef CONV_results
    self.nativePtrTextRecognitionModel->recognize(frame.nativeRef, roiRectsVector, resultsVector);
    #define UNCONV_results(e) [NSString stringWithUTF8String:e.c_str()]
    CV2OBJC_CUSTOM(std::string, NSString, resultsVector, results, UNCONV_results);
    #undef UNCONV_results
}



@end



//
// This file is auto-generated. Please don't modify it!
//

#import "TextDetectionModel_DB.h"
#import "CVObjcUtil.h"

#import "Net.h"

@implementation TextDetectionModel_DB


- (instancetype)initWithNativePtr:(cv::Ptr<cv::dnn::TextDetectionModel_DB>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrTextDetectionModel_DB = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::dnn::TextDetectionModel_DB>)nativePtr {
    return [[TextDetectionModel_DB alloc] initWithNativePtr:nativePtr];
}



//
//   cv::dnn::TextDetectionModel_DB::TextDetectionModel_DB(Net network)
//
- (instancetype)initWithNetwork:(Net*)network {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::TextDetectionModel_DB>(new cv::dnn::TextDetectionModel_DB(*(network.nativePtr)))];
}


//
//   cv::dnn::TextDetectionModel_DB::TextDetectionModel_DB(string model, string config = "")
//
- (instancetype)initWithModel:(NSString*)model config:(NSString*)config {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::TextDetectionModel_DB>(new cv::dnn::TextDetectionModel_DB(std::string(model.UTF8String), std::string(config.UTF8String)))];
}

- (instancetype)initWithModel:(NSString*)model {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::TextDetectionModel_DB>(new cv::dnn::TextDetectionModel_DB(std::string(model.UTF8String)))];
}


//
//  TextDetectionModel_DB cv::dnn::TextDetectionModel_DB::setBinaryThreshold(float binaryThreshold)
//
- (TextDetectionModel_DB*)setBinaryThreshold:(float)binaryThreshold {
    cv::Ptr<cv::dnn::TextDetectionModel_DB> retVal = new cv::dnn::TextDetectionModel_DB(self.nativePtrTextDetectionModel_DB->setBinaryThreshold(binaryThreshold));
    return [TextDetectionModel_DB fromNative:retVal];
}


//
//  float cv::dnn::TextDetectionModel_DB::getBinaryThreshold()
//
- (float)getBinaryThreshold {
    float retVal = self.nativePtrTextDetectionModel_DB->getBinaryThreshold();
    return retVal;
}


//
//  TextDetectionModel_DB cv::dnn::TextDetectionModel_DB::setPolygonThreshold(float polygonThreshold)
//
- (TextDetectionModel_DB*)setPolygonThreshold:(float)polygonThreshold {
    cv::Ptr<cv::dnn::TextDetectionModel_DB> retVal = new cv::dnn::TextDetectionModel_DB(self.nativePtrTextDetectionModel_DB->setPolygonThreshold(polygonThreshold));
    return [TextDetectionModel_DB fromNative:retVal];
}


//
//  float cv::dnn::TextDetectionModel_DB::getPolygonThreshold()
//
- (float)getPolygonThreshold {
    float retVal = self.nativePtrTextDetectionModel_DB->getPolygonThreshold();
    return retVal;
}


//
//  TextDetectionModel_DB cv::dnn::TextDetectionModel_DB::setUnclipRatio(double unclipRatio)
//
- (TextDetectionModel_DB*)setUnclipRatio:(double)unclipRatio {
    cv::Ptr<cv::dnn::TextDetectionModel_DB> retVal = new cv::dnn::TextDetectionModel_DB(self.nativePtrTextDetectionModel_DB->setUnclipRatio(unclipRatio));
    return [TextDetectionModel_DB fromNative:retVal];
}


//
//  double cv::dnn::TextDetectionModel_DB::getUnclipRatio()
//
- (double)getUnclipRatio {
    double retVal = self.nativePtrTextDetectionModel_DB->getUnclipRatio();
    return retVal;
}


//
//  TextDetectionModel_DB cv::dnn::TextDetectionModel_DB::setMaxCandidates(int maxCandidates)
//
- (TextDetectionModel_DB*)setMaxCandidates:(int)maxCandidates {
    cv::Ptr<cv::dnn::TextDetectionModel_DB> retVal = new cv::dnn::TextDetectionModel_DB(self.nativePtrTextDetectionModel_DB->setMaxCandidates(maxCandidates));
    return [TextDetectionModel_DB fromNative:retVal];
}


//
//  int cv::dnn::TextDetectionModel_DB::getMaxCandidates()
//
- (int)getMaxCandidates {
    int retVal = self.nativePtrTextDetectionModel_DB->getMaxCandidates();
    return retVal;
}



@end



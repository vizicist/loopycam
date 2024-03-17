//
// This file is auto-generated. Please don't modify it!
//

#import "Layer.h"
#import "CVObjcUtil.h"

#import "Mat.h"

@implementation Layer


- (instancetype)initWithNativePtr:(cv::Ptr<cv::dnn::Layer>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrLayer = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::dnn::Layer>)nativePtr {
    return [[Layer alloc] initWithNativePtr:nativePtr];
}



//
//  void cv::dnn::Layer::finalize(vector_Mat inputs, vector_Mat& outputs)
//
- (void)finalize:(NSArray<Mat*>*)inputs outputs:(NSMutableArray<Mat*>*)outputs {
    OBJC2CV(cv::Mat, Mat, inputsVector, inputs);
    OBJC2CV(cv::Mat, Mat, outputsVector, outputs);
    self.nativePtrLayer->finalize(inputsVector, outputsVector);
    CV2OBJC(cv::Mat, Mat, outputsVector, outputs);
}


//
//  void cv::dnn::Layer::run(vector_Mat inputs, vector_Mat& outputs, vector_Mat& internals)
//
- (void)run:(NSArray<Mat*>*)inputs outputs:(NSMutableArray<Mat*>*)outputs internals:(NSMutableArray<Mat*>*)internals {
    OBJC2CV(cv::Mat, Mat, inputsVector, inputs);
    OBJC2CV(cv::Mat, Mat, outputsVector, outputs);
    OBJC2CV(cv::Mat, Mat, internalsVector, internals);
    self.nativePtrLayer->run(inputsVector, outputsVector, internalsVector);
    CV2OBJC(cv::Mat, Mat, outputsVector, outputs);
    CV2OBJC(cv::Mat, Mat, internalsVector, internals);
}


//
//  int cv::dnn::Layer::outputNameToIndex(String outputName)
//
- (int)outputNameToIndex:(NSString*)outputName {
    int retVal = self.nativePtrLayer->outputNameToIndex(cv::String(outputName.UTF8String));
    return retVal;
}

-(NSArray<Mat*>*)blobs {
	NSMutableArray<Mat*>* retVal = [NSMutableArray new];
	std::vector<cv::Mat> retValVector = self.nativePtrLayer->blobs;
	CV2OBJC(cv::Mat, Mat, retValVector, retVal);
	return retVal;
}

-(void)setBlobs:(NSArray<Mat*>*)blobs{
	OBJC2CV(cv::Mat, Mat, valVector, blobs);
	self.nativePtrLayer->blobs = valVector;
}

-(NSString*)name {
	return [NSString stringWithUTF8String:self.nativePtrLayer->name.c_str()];
}

-(NSString*)type {
	return [NSString stringWithUTF8String:self.nativePtrLayer->type.c_str()];
}

-(int)preferableTarget {
	return self.nativePtrLayer->preferableTarget;
}



@end



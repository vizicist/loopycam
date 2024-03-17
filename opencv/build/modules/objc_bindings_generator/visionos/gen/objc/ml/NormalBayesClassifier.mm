//
// This file is auto-generated. Please don't modify it!
//

#import "NormalBayesClassifier.h"
#import "CVObjcUtil.h"

#import "Mat.h"

@implementation NormalBayesClassifier


- (instancetype)initWithNativePtr:(cv::Ptr<cv::ml::NormalBayesClassifier>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrNormalBayesClassifier = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::ml::NormalBayesClassifier>)nativePtr {
    return [[NormalBayesClassifier alloc] initWithNativePtr:nativePtr];
}



//
//  float cv::ml::NormalBayesClassifier::predictProb(Mat inputs, Mat& outputs, Mat& outputProbs, int flags = 0)
//
- (float)predictProb:(Mat*)inputs outputs:(Mat*)outputs outputProbs:(Mat*)outputProbs flags:(int)flags {
    float retVal = self.nativePtrNormalBayesClassifier->predictProb(inputs.nativeRef, outputs.nativeRef, outputProbs.nativeRef, flags);
    return retVal;
}

- (float)predictProb:(Mat*)inputs outputs:(Mat*)outputs outputProbs:(Mat*)outputProbs {
    float retVal = self.nativePtrNormalBayesClassifier->predictProb(inputs.nativeRef, outputs.nativeRef, outputProbs.nativeRef);
    return retVal;
}


//
// static Ptr_NormalBayesClassifier cv::ml::NormalBayesClassifier::create()
//
+ (NormalBayesClassifier*)create {
    cv::Ptr<cv::ml::NormalBayesClassifier> retVal = cv::ml::NormalBayesClassifier::create();
    return [NormalBayesClassifier fromNative:retVal];
}


//
// static Ptr_NormalBayesClassifier cv::ml::NormalBayesClassifier::load(String filepath, String nodeName = String())
//
+ (NormalBayesClassifier*)load:(NSString*)filepath nodeName:(NSString*)nodeName {
    cv::Ptr<cv::ml::NormalBayesClassifier> retVal = cv::ml::NormalBayesClassifier::load(cv::String(filepath.UTF8String), cv::String(nodeName.UTF8String));
    return [NormalBayesClassifier fromNative:retVal];
}

+ (NormalBayesClassifier*)load:(NSString*)filepath {
    cv::Ptr<cv::ml::NormalBayesClassifier> retVal = cv::ml::NormalBayesClassifier::load(cv::String(filepath.UTF8String));
    return [NormalBayesClassifier fromNative:retVal];
}



@end



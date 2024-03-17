//
// This file is auto-generated. Please don't modify it!
//

#import "LogisticRegression.h"
#import "CVObjcUtil.h"

#import "Mat.h"
#import "TermCriteria.h"

@implementation LogisticRegression


- (instancetype)initWithNativePtr:(cv::Ptr<cv::ml::LogisticRegression>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrLogisticRegression = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::ml::LogisticRegression>)nativePtr {
    return [[LogisticRegression alloc] initWithNativePtr:nativePtr];
}



//
//  double cv::ml::LogisticRegression::getLearningRate()
//
- (double)getLearningRate {
    double retVal = self.nativePtrLogisticRegression->getLearningRate();
    return retVal;
}


//
//  void cv::ml::LogisticRegression::setLearningRate(double val)
//
- (void)setLearningRate:(double)val {
    self.nativePtrLogisticRegression->setLearningRate(val);
}


//
//  int cv::ml::LogisticRegression::getIterations()
//
- (int)getIterations {
    int retVal = self.nativePtrLogisticRegression->getIterations();
    return retVal;
}


//
//  void cv::ml::LogisticRegression::setIterations(int val)
//
- (void)setIterations:(int)val {
    self.nativePtrLogisticRegression->setIterations(val);
}


//
//  int cv::ml::LogisticRegression::getRegularization()
//
- (int)getRegularization {
    int retVal = self.nativePtrLogisticRegression->getRegularization();
    return retVal;
}


//
//  void cv::ml::LogisticRegression::setRegularization(int val)
//
- (void)setRegularization:(int)val {
    self.nativePtrLogisticRegression->setRegularization(val);
}


//
//  int cv::ml::LogisticRegression::getTrainMethod()
//
- (int)getTrainMethod {
    int retVal = self.nativePtrLogisticRegression->getTrainMethod();
    return retVal;
}


//
//  void cv::ml::LogisticRegression::setTrainMethod(int val)
//
- (void)setTrainMethod:(int)val {
    self.nativePtrLogisticRegression->setTrainMethod(val);
}


//
//  int cv::ml::LogisticRegression::getMiniBatchSize()
//
- (int)getMiniBatchSize {
    int retVal = self.nativePtrLogisticRegression->getMiniBatchSize();
    return retVal;
}


//
//  void cv::ml::LogisticRegression::setMiniBatchSize(int val)
//
- (void)setMiniBatchSize:(int)val {
    self.nativePtrLogisticRegression->setMiniBatchSize(val);
}


//
//  TermCriteria cv::ml::LogisticRegression::getTermCriteria()
//
- (TermCriteria*)getTermCriteria {
    cv::TermCriteria retVal = self.nativePtrLogisticRegression->getTermCriteria();
    return [TermCriteria fromNative:retVal];
}


//
//  void cv::ml::LogisticRegression::setTermCriteria(TermCriteria val)
//
- (void)setTermCriteria:(TermCriteria*)val {
    self.nativePtrLogisticRegression->setTermCriteria(val.nativeRef);
}


//
//  float cv::ml::LogisticRegression::predict(Mat samples, Mat& results = Mat(), int flags = 0)
//
- (float)predict:(Mat*)samples results:(Mat*)results flags:(int)flags {
    float retVal = self.nativePtrLogisticRegression->predict(samples.nativeRef, results.nativeRef, flags);
    return retVal;
}

- (float)predict:(Mat*)samples results:(Mat*)results {
    float retVal = self.nativePtrLogisticRegression->predict(samples.nativeRef, results.nativeRef);
    return retVal;
}

- (float)predict:(Mat*)samples {
    float retVal = self.nativePtrLogisticRegression->predict(samples.nativeRef);
    return retVal;
}


//
//  Mat cv::ml::LogisticRegression::get_learnt_thetas()
//
- (Mat*)get_learnt_thetas {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtrLogisticRegression->get_learnt_thetas());
    return [Mat fromNativePtr:retVal];
}


//
// static Ptr_LogisticRegression cv::ml::LogisticRegression::create()
//
+ (LogisticRegression*)create {
    cv::Ptr<cv::ml::LogisticRegression> retVal = cv::ml::LogisticRegression::create();
    return [LogisticRegression fromNative:retVal];
}


//
// static Ptr_LogisticRegression cv::ml::LogisticRegression::load(String filepath, String nodeName = String())
//
+ (LogisticRegression*)load:(NSString*)filepath nodeName:(NSString*)nodeName {
    cv::Ptr<cv::ml::LogisticRegression> retVal = cv::ml::LogisticRegression::load(cv::String(filepath.UTF8String), cv::String(nodeName.UTF8String));
    return [LogisticRegression fromNative:retVal];
}

+ (LogisticRegression*)load:(NSString*)filepath {
    cv::Ptr<cv::ml::LogisticRegression> retVal = cv::ml::LogisticRegression::load(cv::String(filepath.UTF8String));
    return [LogisticRegression fromNative:retVal];
}



@end



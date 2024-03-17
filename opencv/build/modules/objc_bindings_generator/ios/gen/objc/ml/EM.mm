//
// This file is auto-generated. Please don't modify it!
//

#import "EM.h"
#import "CVObjcUtil.h"

#import "Double2.h"
#import "Mat.h"
#import "TermCriteria.h"

@implementation EM


- (instancetype)initWithNativePtr:(cv::Ptr<cv::ml::EM>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrEM = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::ml::EM>)nativePtr {
    return [[EM alloc] initWithNativePtr:nativePtr];
}


+ (int)DEFAULT_NCLUSTERS {
    return 5;
}

+ (int)DEFAULT_MAX_ITERS {
    return 100;
}

+ (int)START_E_STEP {
    return 1;
}

+ (int)START_M_STEP {
    return 2;
}

+ (int)START_AUTO_STEP {
    return 0;
}


//
//  int cv::ml::EM::getClustersNumber()
//
- (int)getClustersNumber {
    int retVal = self.nativePtrEM->getClustersNumber();
    return retVal;
}


//
//  void cv::ml::EM::setClustersNumber(int val)
//
- (void)setClustersNumber:(int)val {
    self.nativePtrEM->setClustersNumber(val);
}


//
//  int cv::ml::EM::getCovarianceMatrixType()
//
- (int)getCovarianceMatrixType {
    int retVal = self.nativePtrEM->getCovarianceMatrixType();
    return retVal;
}


//
//  void cv::ml::EM::setCovarianceMatrixType(int val)
//
- (void)setCovarianceMatrixType:(int)val {
    self.nativePtrEM->setCovarianceMatrixType(val);
}


//
//  TermCriteria cv::ml::EM::getTermCriteria()
//
- (TermCriteria*)getTermCriteria {
    cv::TermCriteria retVal = self.nativePtrEM->getTermCriteria();
    return [TermCriteria fromNative:retVal];
}


//
//  void cv::ml::EM::setTermCriteria(TermCriteria val)
//
- (void)setTermCriteria:(TermCriteria*)val {
    self.nativePtrEM->setTermCriteria(val.nativeRef);
}


//
//  Mat cv::ml::EM::getWeights()
//
- (Mat*)getWeights {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtrEM->getWeights());
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::ml::EM::getMeans()
//
- (Mat*)getMeans {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtrEM->getMeans());
    return [Mat fromNativePtr:retVal];
}


//
//  void cv::ml::EM::getCovs(vector_Mat& covs)
//
- (void)getCovs:(NSMutableArray<Mat*>*)covs {
    OBJC2CV(cv::Mat, Mat, covsVector, covs);
    self.nativePtrEM->getCovs(covsVector);
    CV2OBJC(cv::Mat, Mat, covsVector, covs);
}


//
//  float cv::ml::EM::predict(Mat samples, Mat& results = Mat(), int flags = 0)
//
- (float)predict:(Mat*)samples results:(Mat*)results flags:(int)flags {
    float retVal = self.nativePtrEM->predict(samples.nativeRef, results.nativeRef, flags);
    return retVal;
}

- (float)predict:(Mat*)samples results:(Mat*)results {
    float retVal = self.nativePtrEM->predict(samples.nativeRef, results.nativeRef);
    return retVal;
}

- (float)predict:(Mat*)samples {
    float retVal = self.nativePtrEM->predict(samples.nativeRef);
    return retVal;
}


//
//  Vec2d cv::ml::EM::predict2(Mat sample, Mat& probs)
//
- (Double2*)predict2:(Mat*)sample probs:(Mat*)probs {
    cv::Vec2d retVal = self.nativePtrEM->predict2(sample.nativeRef, probs.nativeRef);
    return [Double2 fromNative:retVal];
}


//
//  bool cv::ml::EM::trainEM(Mat samples, Mat& logLikelihoods = Mat(), Mat& labels = Mat(), Mat& probs = Mat())
//
- (BOOL)trainEM:(Mat*)samples logLikelihoods:(Mat*)logLikelihoods labels:(Mat*)labels probs:(Mat*)probs {
    bool retVal = self.nativePtrEM->trainEM(samples.nativeRef, logLikelihoods.nativeRef, labels.nativeRef, probs.nativeRef);
    return retVal;
}

- (BOOL)trainEM:(Mat*)samples logLikelihoods:(Mat*)logLikelihoods labels:(Mat*)labels {
    bool retVal = self.nativePtrEM->trainEM(samples.nativeRef, logLikelihoods.nativeRef, labels.nativeRef);
    return retVal;
}

- (BOOL)trainEM:(Mat*)samples logLikelihoods:(Mat*)logLikelihoods {
    bool retVal = self.nativePtrEM->trainEM(samples.nativeRef, logLikelihoods.nativeRef);
    return retVal;
}

- (BOOL)trainEM:(Mat*)samples {
    bool retVal = self.nativePtrEM->trainEM(samples.nativeRef);
    return retVal;
}


//
//  bool cv::ml::EM::trainE(Mat samples, Mat means0, Mat covs0 = Mat(), Mat weights0 = Mat(), Mat& logLikelihoods = Mat(), Mat& labels = Mat(), Mat& probs = Mat())
//
- (BOOL)trainE:(Mat*)samples means0:(Mat*)means0 covs0:(Mat*)covs0 weights0:(Mat*)weights0 logLikelihoods:(Mat*)logLikelihoods labels:(Mat*)labels probs:(Mat*)probs {
    bool retVal = self.nativePtrEM->trainE(samples.nativeRef, means0.nativeRef, covs0.nativeRef, weights0.nativeRef, logLikelihoods.nativeRef, labels.nativeRef, probs.nativeRef);
    return retVal;
}

- (BOOL)trainE:(Mat*)samples means0:(Mat*)means0 covs0:(Mat*)covs0 weights0:(Mat*)weights0 logLikelihoods:(Mat*)logLikelihoods labels:(Mat*)labels {
    bool retVal = self.nativePtrEM->trainE(samples.nativeRef, means0.nativeRef, covs0.nativeRef, weights0.nativeRef, logLikelihoods.nativeRef, labels.nativeRef);
    return retVal;
}

- (BOOL)trainE:(Mat*)samples means0:(Mat*)means0 covs0:(Mat*)covs0 weights0:(Mat*)weights0 logLikelihoods:(Mat*)logLikelihoods {
    bool retVal = self.nativePtrEM->trainE(samples.nativeRef, means0.nativeRef, covs0.nativeRef, weights0.nativeRef, logLikelihoods.nativeRef);
    return retVal;
}

- (BOOL)trainE:(Mat*)samples means0:(Mat*)means0 covs0:(Mat*)covs0 weights0:(Mat*)weights0 {
    bool retVal = self.nativePtrEM->trainE(samples.nativeRef, means0.nativeRef, covs0.nativeRef, weights0.nativeRef);
    return retVal;
}

- (BOOL)trainE:(Mat*)samples means0:(Mat*)means0 covs0:(Mat*)covs0 {
    bool retVal = self.nativePtrEM->trainE(samples.nativeRef, means0.nativeRef, covs0.nativeRef);
    return retVal;
}

- (BOOL)trainE:(Mat*)samples means0:(Mat*)means0 {
    bool retVal = self.nativePtrEM->trainE(samples.nativeRef, means0.nativeRef);
    return retVal;
}


//
//  bool cv::ml::EM::trainM(Mat samples, Mat probs0, Mat& logLikelihoods = Mat(), Mat& labels = Mat(), Mat& probs = Mat())
//
- (BOOL)trainM:(Mat*)samples probs0:(Mat*)probs0 logLikelihoods:(Mat*)logLikelihoods labels:(Mat*)labels probs:(Mat*)probs {
    bool retVal = self.nativePtrEM->trainM(samples.nativeRef, probs0.nativeRef, logLikelihoods.nativeRef, labels.nativeRef, probs.nativeRef);
    return retVal;
}

- (BOOL)trainM:(Mat*)samples probs0:(Mat*)probs0 logLikelihoods:(Mat*)logLikelihoods labels:(Mat*)labels {
    bool retVal = self.nativePtrEM->trainM(samples.nativeRef, probs0.nativeRef, logLikelihoods.nativeRef, labels.nativeRef);
    return retVal;
}

- (BOOL)trainM:(Mat*)samples probs0:(Mat*)probs0 logLikelihoods:(Mat*)logLikelihoods {
    bool retVal = self.nativePtrEM->trainM(samples.nativeRef, probs0.nativeRef, logLikelihoods.nativeRef);
    return retVal;
}

- (BOOL)trainM:(Mat*)samples probs0:(Mat*)probs0 {
    bool retVal = self.nativePtrEM->trainM(samples.nativeRef, probs0.nativeRef);
    return retVal;
}


//
// static Ptr_EM cv::ml::EM::create()
//
+ (EM*)create {
    cv::Ptr<cv::ml::EM> retVal = cv::ml::EM::create();
    return [EM fromNative:retVal];
}


//
// static Ptr_EM cv::ml::EM::load(String filepath, String nodeName = String())
//
+ (EM*)load:(NSString*)filepath nodeName:(NSString*)nodeName {
    cv::Ptr<cv::ml::EM> retVal = cv::ml::EM::load(cv::String(filepath.UTF8String), cv::String(nodeName.UTF8String));
    return [EM fromNative:retVal];
}

+ (EM*)load:(NSString*)filepath {
    cv::Ptr<cv::ml::EM> retVal = cv::ml::EM::load(cv::String(filepath.UTF8String));
    return [EM fromNative:retVal];
}



@end



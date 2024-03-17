//
// This file is auto-generated. Please don't modify it!
//

#import "DTrees.h"
#import "CVObjcUtil.h"

#import "Mat.h"

@implementation DTrees


- (instancetype)initWithNativePtr:(cv::Ptr<cv::ml::DTrees>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrDTrees = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::ml::DTrees>)nativePtr {
    return [[DTrees alloc] initWithNativePtr:nativePtr];
}



//
//  int cv::ml::DTrees::getMaxCategories()
//
- (int)getMaxCategories {
    int retVal = self.nativePtrDTrees->getMaxCategories();
    return retVal;
}


//
//  void cv::ml::DTrees::setMaxCategories(int val)
//
- (void)setMaxCategories:(int)val {
    self.nativePtrDTrees->setMaxCategories(val);
}


//
//  int cv::ml::DTrees::getMaxDepth()
//
- (int)getMaxDepth {
    int retVal = self.nativePtrDTrees->getMaxDepth();
    return retVal;
}


//
//  void cv::ml::DTrees::setMaxDepth(int val)
//
- (void)setMaxDepth:(int)val {
    self.nativePtrDTrees->setMaxDepth(val);
}


//
//  int cv::ml::DTrees::getMinSampleCount()
//
- (int)getMinSampleCount {
    int retVal = self.nativePtrDTrees->getMinSampleCount();
    return retVal;
}


//
//  void cv::ml::DTrees::setMinSampleCount(int val)
//
- (void)setMinSampleCount:(int)val {
    self.nativePtrDTrees->setMinSampleCount(val);
}


//
//  int cv::ml::DTrees::getCVFolds()
//
- (int)getCVFolds {
    int retVal = self.nativePtrDTrees->getCVFolds();
    return retVal;
}


//
//  void cv::ml::DTrees::setCVFolds(int val)
//
- (void)setCVFolds:(int)val {
    self.nativePtrDTrees->setCVFolds(val);
}


//
//  bool cv::ml::DTrees::getUseSurrogates()
//
- (BOOL)getUseSurrogates {
    bool retVal = self.nativePtrDTrees->getUseSurrogates();
    return retVal;
}


//
//  void cv::ml::DTrees::setUseSurrogates(bool val)
//
- (void)setUseSurrogates:(BOOL)val {
    self.nativePtrDTrees->setUseSurrogates((bool)val);
}


//
//  bool cv::ml::DTrees::getUse1SERule()
//
- (BOOL)getUse1SERule {
    bool retVal = self.nativePtrDTrees->getUse1SERule();
    return retVal;
}


//
//  void cv::ml::DTrees::setUse1SERule(bool val)
//
- (void)setUse1SERule:(BOOL)val {
    self.nativePtrDTrees->setUse1SERule((bool)val);
}


//
//  bool cv::ml::DTrees::getTruncatePrunedTree()
//
- (BOOL)getTruncatePrunedTree {
    bool retVal = self.nativePtrDTrees->getTruncatePrunedTree();
    return retVal;
}


//
//  void cv::ml::DTrees::setTruncatePrunedTree(bool val)
//
- (void)setTruncatePrunedTree:(BOOL)val {
    self.nativePtrDTrees->setTruncatePrunedTree((bool)val);
}


//
//  float cv::ml::DTrees::getRegressionAccuracy()
//
- (float)getRegressionAccuracy {
    float retVal = self.nativePtrDTrees->getRegressionAccuracy();
    return retVal;
}


//
//  void cv::ml::DTrees::setRegressionAccuracy(float val)
//
- (void)setRegressionAccuracy:(float)val {
    self.nativePtrDTrees->setRegressionAccuracy(val);
}


//
//  Mat cv::ml::DTrees::getPriors()
//
- (Mat*)getPriors {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtrDTrees->getPriors());
    return [Mat fromNativePtr:retVal];
}


//
//  void cv::ml::DTrees::setPriors(Mat val)
//
- (void)setPriors:(Mat*)val {
    self.nativePtrDTrees->setPriors(val.nativeRef);
}


//
// static Ptr_DTrees cv::ml::DTrees::create()
//
+ (DTrees*)create {
    cv::Ptr<cv::ml::DTrees> retVal = cv::ml::DTrees::create();
    return [DTrees fromNative:retVal];
}


//
// static Ptr_DTrees cv::ml::DTrees::load(String filepath, String nodeName = String())
//
+ (DTrees*)load:(NSString*)filepath nodeName:(NSString*)nodeName {
    cv::Ptr<cv::ml::DTrees> retVal = cv::ml::DTrees::load(cv::String(filepath.UTF8String), cv::String(nodeName.UTF8String));
    return [DTrees fromNative:retVal];
}

+ (DTrees*)load:(NSString*)filepath {
    cv::Ptr<cv::ml::DTrees> retVal = cv::ml::DTrees::load(cv::String(filepath.UTF8String));
    return [DTrees fromNative:retVal];
}



@end



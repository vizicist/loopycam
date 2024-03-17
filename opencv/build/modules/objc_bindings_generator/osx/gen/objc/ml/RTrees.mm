//
// This file is auto-generated. Please don't modify it!
//

#import "RTrees.h"
#import "CVObjcUtil.h"

#import "Mat.h"
#import "TermCriteria.h"

@implementation RTrees


- (instancetype)initWithNativePtr:(cv::Ptr<cv::ml::RTrees>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrRTrees = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::ml::RTrees>)nativePtr {
    return [[RTrees alloc] initWithNativePtr:nativePtr];
}



//
//  bool cv::ml::RTrees::getCalculateVarImportance()
//
- (BOOL)getCalculateVarImportance {
    bool retVal = self.nativePtrRTrees->getCalculateVarImportance();
    return retVal;
}


//
//  void cv::ml::RTrees::setCalculateVarImportance(bool val)
//
- (void)setCalculateVarImportance:(BOOL)val {
    self.nativePtrRTrees->setCalculateVarImportance((bool)val);
}


//
//  int cv::ml::RTrees::getActiveVarCount()
//
- (int)getActiveVarCount {
    int retVal = self.nativePtrRTrees->getActiveVarCount();
    return retVal;
}


//
//  void cv::ml::RTrees::setActiveVarCount(int val)
//
- (void)setActiveVarCount:(int)val {
    self.nativePtrRTrees->setActiveVarCount(val);
}


//
//  TermCriteria cv::ml::RTrees::getTermCriteria()
//
- (TermCriteria*)getTermCriteria {
    cv::TermCriteria retVal = self.nativePtrRTrees->getTermCriteria();
    return [TermCriteria fromNative:retVal];
}


//
//  void cv::ml::RTrees::setTermCriteria(TermCriteria val)
//
- (void)setTermCriteria:(TermCriteria*)val {
    self.nativePtrRTrees->setTermCriteria(val.nativeRef);
}


//
//  Mat cv::ml::RTrees::getVarImportance()
//
- (Mat*)getVarImportance {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtrRTrees->getVarImportance());
    return [Mat fromNativePtr:retVal];
}


//
//  void cv::ml::RTrees::getVotes(Mat samples, Mat& results, int flags)
//
- (void)getVotes:(Mat*)samples results:(Mat*)results flags:(int)flags {
    self.nativePtrRTrees->getVotes(samples.nativeRef, results.nativeRef, flags);
}


//
//  double cv::ml::RTrees::getOOBError()
//
- (double)getOOBError {
    double retVal = self.nativePtrRTrees->getOOBError();
    return retVal;
}


//
// static Ptr_RTrees cv::ml::RTrees::create()
//
+ (RTrees*)create {
    cv::Ptr<cv::ml::RTrees> retVal = cv::ml::RTrees::create();
    return [RTrees fromNative:retVal];
}


//
// static Ptr_RTrees cv::ml::RTrees::load(String filepath, String nodeName = String())
//
+ (RTrees*)load:(NSString*)filepath nodeName:(NSString*)nodeName {
    cv::Ptr<cv::ml::RTrees> retVal = cv::ml::RTrees::load(cv::String(filepath.UTF8String), cv::String(nodeName.UTF8String));
    return [RTrees fromNative:retVal];
}

+ (RTrees*)load:(NSString*)filepath {
    cv::Ptr<cv::ml::RTrees> retVal = cv::ml::RTrees::load(cv::String(filepath.UTF8String));
    return [RTrees fromNative:retVal];
}



@end



//
// This file is auto-generated. Please don't modify it!
//

#import "SparsePyrLKOpticalFlow.h"
#import "CVObjcUtil.h"

#import "Size2i.h"
#import "TermCriteria.h"

@implementation SparsePyrLKOpticalFlow


- (instancetype)initWithNativePtr:(cv::Ptr<cv::SparsePyrLKOpticalFlow>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrSparsePyrLKOpticalFlow = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::SparsePyrLKOpticalFlow>)nativePtr {
    return [[SparsePyrLKOpticalFlow alloc] initWithNativePtr:nativePtr];
}



//
//  Size cv::SparsePyrLKOpticalFlow::getWinSize()
//
- (Size2i*)getWinSize {
    cv::Size retVal = self.nativePtrSparsePyrLKOpticalFlow->getWinSize();
    return [Size2i fromNative:retVal];
}


//
//  void cv::SparsePyrLKOpticalFlow::setWinSize(Size winSize)
//
- (void)setWinSize:(Size2i*)winSize {
    self.nativePtrSparsePyrLKOpticalFlow->setWinSize(winSize.nativeRef);
}


//
//  int cv::SparsePyrLKOpticalFlow::getMaxLevel()
//
- (int)getMaxLevel {
    int retVal = self.nativePtrSparsePyrLKOpticalFlow->getMaxLevel();
    return retVal;
}


//
//  void cv::SparsePyrLKOpticalFlow::setMaxLevel(int maxLevel)
//
- (void)setMaxLevel:(int)maxLevel {
    self.nativePtrSparsePyrLKOpticalFlow->setMaxLevel(maxLevel);
}


//
//  TermCriteria cv::SparsePyrLKOpticalFlow::getTermCriteria()
//
- (TermCriteria*)getTermCriteria {
    cv::TermCriteria retVal = self.nativePtrSparsePyrLKOpticalFlow->getTermCriteria();
    return [TermCriteria fromNative:retVal];
}


//
//  void cv::SparsePyrLKOpticalFlow::setTermCriteria(TermCriteria crit)
//
- (void)setTermCriteria:(TermCriteria*)crit {
    self.nativePtrSparsePyrLKOpticalFlow->setTermCriteria(crit.nativeRef);
}


//
//  int cv::SparsePyrLKOpticalFlow::getFlags()
//
- (int)getFlags {
    int retVal = self.nativePtrSparsePyrLKOpticalFlow->getFlags();
    return retVal;
}


//
//  void cv::SparsePyrLKOpticalFlow::setFlags(int flags)
//
- (void)setFlags:(int)flags {
    self.nativePtrSparsePyrLKOpticalFlow->setFlags(flags);
}


//
//  double cv::SparsePyrLKOpticalFlow::getMinEigThreshold()
//
- (double)getMinEigThreshold {
    double retVal = self.nativePtrSparsePyrLKOpticalFlow->getMinEigThreshold();
    return retVal;
}


//
//  void cv::SparsePyrLKOpticalFlow::setMinEigThreshold(double minEigThreshold)
//
- (void)setMinEigThreshold:(double)minEigThreshold {
    self.nativePtrSparsePyrLKOpticalFlow->setMinEigThreshold(minEigThreshold);
}


//
// static Ptr_SparsePyrLKOpticalFlow cv::SparsePyrLKOpticalFlow::create(Size winSize = Size(21, 21), int maxLevel = 3, TermCriteria crit = TermCriteria(TermCriteria::COUNT+TermCriteria::EPS, 30, 0.01), int flags = 0, double minEigThreshold = 1e-4)
//
+ (SparsePyrLKOpticalFlow*)create:(Size2i*)winSize maxLevel:(int)maxLevel crit:(TermCriteria*)crit flags:(int)flags minEigThreshold:(double)minEigThreshold {
    cv::Ptr<cv::SparsePyrLKOpticalFlow> retVal = cv::SparsePyrLKOpticalFlow::create(winSize.nativeRef, maxLevel, crit.nativeRef, flags, minEigThreshold);
    return [SparsePyrLKOpticalFlow fromNative:retVal];
}

+ (SparsePyrLKOpticalFlow*)create:(Size2i*)winSize maxLevel:(int)maxLevel crit:(TermCriteria*)crit flags:(int)flags {
    cv::Ptr<cv::SparsePyrLKOpticalFlow> retVal = cv::SparsePyrLKOpticalFlow::create(winSize.nativeRef, maxLevel, crit.nativeRef, flags);
    return [SparsePyrLKOpticalFlow fromNative:retVal];
}

+ (SparsePyrLKOpticalFlow*)create:(Size2i*)winSize maxLevel:(int)maxLevel crit:(TermCriteria*)crit {
    cv::Ptr<cv::SparsePyrLKOpticalFlow> retVal = cv::SparsePyrLKOpticalFlow::create(winSize.nativeRef, maxLevel, crit.nativeRef);
    return [SparsePyrLKOpticalFlow fromNative:retVal];
}

+ (SparsePyrLKOpticalFlow*)create:(Size2i*)winSize maxLevel:(int)maxLevel {
    cv::Ptr<cv::SparsePyrLKOpticalFlow> retVal = cv::SparsePyrLKOpticalFlow::create(winSize.nativeRef, maxLevel);
    return [SparsePyrLKOpticalFlow fromNative:retVal];
}

+ (SparsePyrLKOpticalFlow*)create:(Size2i*)winSize {
    cv::Ptr<cv::SparsePyrLKOpticalFlow> retVal = cv::SparsePyrLKOpticalFlow::create(winSize.nativeRef);
    return [SparsePyrLKOpticalFlow fromNative:retVal];
}

+ (SparsePyrLKOpticalFlow*)create {
    cv::Ptr<cv::SparsePyrLKOpticalFlow> retVal = cv::SparsePyrLKOpticalFlow::create();
    return [SparsePyrLKOpticalFlow fromNative:retVal];
}



@end



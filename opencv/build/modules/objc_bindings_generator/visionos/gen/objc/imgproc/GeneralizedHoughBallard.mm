//
// This file is auto-generated. Please don't modify it!
//

#import "GeneralizedHoughBallard.h"
#import "CVObjcUtil.h"



@implementation GeneralizedHoughBallard


- (instancetype)initWithNativePtr:(cv::Ptr<cv::GeneralizedHoughBallard>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrGeneralizedHoughBallard = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::GeneralizedHoughBallard>)nativePtr {
    return [[GeneralizedHoughBallard alloc] initWithNativePtr:nativePtr];
}



//
//  void cv::GeneralizedHoughBallard::setLevels(int levels)
//
- (void)setLevels:(int)levels {
    self.nativePtrGeneralizedHoughBallard->setLevels(levels);
}


//
//  int cv::GeneralizedHoughBallard::getLevels()
//
- (int)getLevels {
    int retVal = self.nativePtrGeneralizedHoughBallard->getLevels();
    return retVal;
}


//
//  void cv::GeneralizedHoughBallard::setVotesThreshold(int votesThreshold)
//
- (void)setVotesThreshold:(int)votesThreshold {
    self.nativePtrGeneralizedHoughBallard->setVotesThreshold(votesThreshold);
}


//
//  int cv::GeneralizedHoughBallard::getVotesThreshold()
//
- (int)getVotesThreshold {
    int retVal = self.nativePtrGeneralizedHoughBallard->getVotesThreshold();
    return retVal;
}



@end



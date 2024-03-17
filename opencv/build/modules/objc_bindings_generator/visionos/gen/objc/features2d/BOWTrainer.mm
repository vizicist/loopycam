//
// This file is auto-generated. Please don't modify it!
//

#import "BOWTrainer.h"
#import "CVObjcUtil.h"

#import "Mat.h"

@implementation BOWTrainer


- (instancetype)initWithNativePtr:(cv::Ptr<cv::BOWTrainer>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::BOWTrainer>)nativePtr {
    return [[BOWTrainer alloc] initWithNativePtr:nativePtr];
}



//
//  void cv::BOWTrainer::add(Mat descriptors)
//
- (void)add:(Mat*)descriptors {
    self.nativePtr->add(descriptors.nativeRef);
}


//
//  vector_Mat cv::BOWTrainer::getDescriptors()
//
- (NSArray<Mat*>*)getDescriptors {
    NSMutableArray<Mat*>* retVal = [NSMutableArray new];
    std::vector<cv::Mat> retValVector = self.nativePtr->getDescriptors();
    CV2OBJC(cv::Mat, Mat, retValVector, retVal);
    return retVal;
}


//
//  int cv::BOWTrainer::descriptorsCount()
//
- (int)descriptorsCount {
    int retVal = self.nativePtr->descriptorsCount();
    return retVal;
}


//
//  void cv::BOWTrainer::clear()
//
- (void)clear {
    self.nativePtr->clear();
}


//
//  Mat cv::BOWTrainer::cluster()
//
- (Mat*)cluster {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->cluster());
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::BOWTrainer::cluster(Mat descriptors)
//
- (Mat*)cluster:(Mat*)descriptors {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->cluster(descriptors.nativeRef));
    return [Mat fromNativePtr:retVal];
}



@end



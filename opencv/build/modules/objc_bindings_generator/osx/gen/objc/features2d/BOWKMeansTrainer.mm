//
// This file is auto-generated. Please don't modify it!
//

#import "BOWKMeansTrainer.h"
#import "CVObjcUtil.h"

#import "Mat.h"
#import "TermCriteria.h"

@implementation BOWKMeansTrainer


- (instancetype)initWithNativePtr:(cv::Ptr<cv::BOWKMeansTrainer>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrBOWKMeansTrainer = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::BOWKMeansTrainer>)nativePtr {
    return [[BOWKMeansTrainer alloc] initWithNativePtr:nativePtr];
}



//
//   cv::BOWKMeansTrainer::BOWKMeansTrainer(int clusterCount, TermCriteria termcrit = TermCriteria(), int attempts = 3, int flags = KMEANS_PP_CENTERS)
//
- (instancetype)initWithClusterCount:(int)clusterCount termcrit:(TermCriteria*)termcrit attempts:(int)attempts flags:(int)flags {
    return [self initWithNativePtr:cv::Ptr<cv::BOWKMeansTrainer>(new cv::BOWKMeansTrainer(clusterCount, termcrit.nativeRef, attempts, flags))];
}

- (instancetype)initWithClusterCount:(int)clusterCount termcrit:(TermCriteria*)termcrit attempts:(int)attempts {
    return [self initWithNativePtr:cv::Ptr<cv::BOWKMeansTrainer>(new cv::BOWKMeansTrainer(clusterCount, termcrit.nativeRef, attempts))];
}

- (instancetype)initWithClusterCount:(int)clusterCount termcrit:(TermCriteria*)termcrit {
    return [self initWithNativePtr:cv::Ptr<cv::BOWKMeansTrainer>(new cv::BOWKMeansTrainer(clusterCount, termcrit.nativeRef))];
}

- (instancetype)initWithClusterCount:(int)clusterCount {
    return [self initWithNativePtr:cv::Ptr<cv::BOWKMeansTrainer>(new cv::BOWKMeansTrainer(clusterCount))];
}


//
//  Mat cv::BOWKMeansTrainer::cluster()
//
- (Mat*)cluster {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtrBOWKMeansTrainer->cluster());
    return [Mat fromNativePtr:retVal];
}


//
//  Mat cv::BOWKMeansTrainer::cluster(Mat descriptors)
//
- (Mat*)cluster:(Mat*)descriptors {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtrBOWKMeansTrainer->cluster(descriptors.nativeRef));
    return [Mat fromNativePtr:retVal];
}



@end



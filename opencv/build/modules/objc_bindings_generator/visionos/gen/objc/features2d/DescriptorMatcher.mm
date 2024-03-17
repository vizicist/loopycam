//
// This file is auto-generated. Please don't modify it!
//

#import "DescriptorMatcher.h"
#import "CVObjcUtil.h"

#import "DMatch.h"
#import "Mat.h"

@implementation DescriptorMatcher


- (instancetype)initWithNativePtr:(cv::Ptr<cv::DescriptorMatcher>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrDescriptorMatcher = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::DescriptorMatcher>)nativePtr {
    return [[DescriptorMatcher alloc] initWithNativePtr:nativePtr];
}



//
//  void cv::DescriptorMatcher::add(vector_Mat descriptors)
//
- (void)add:(NSArray<Mat*>*)descriptors {
    OBJC2CV(cv::Mat, Mat, descriptorsVector, descriptors);
    self.nativePtrDescriptorMatcher->add(descriptorsVector);
}


//
//  vector_Mat cv::DescriptorMatcher::getTrainDescriptors()
//
- (NSArray<Mat*>*)getTrainDescriptors {
    NSMutableArray<Mat*>* retVal = [NSMutableArray new];
    std::vector<cv::Mat> retValVector = self.nativePtrDescriptorMatcher->getTrainDescriptors();
    CV2OBJC(cv::Mat, Mat, retValVector, retVal);
    return retVal;
}


//
//  void cv::DescriptorMatcher::clear()
//
- (void)clear {
    self.nativePtrDescriptorMatcher->clear();
}


//
//  bool cv::DescriptorMatcher::empty()
//
- (BOOL)empty {
    bool retVal = self.nativePtrDescriptorMatcher->empty();
    return retVal;
}


//
//  bool cv::DescriptorMatcher::isMaskSupported()
//
- (BOOL)isMaskSupported {
    bool retVal = self.nativePtrDescriptorMatcher->isMaskSupported();
    return retVal;
}


//
//  void cv::DescriptorMatcher::train()
//
- (void)train {
    self.nativePtrDescriptorMatcher->train();
}


//
//  void cv::DescriptorMatcher::match(Mat queryDescriptors, Mat trainDescriptors, vector_DMatch& matches, Mat mask = Mat())
//
- (void)match:(Mat*)queryDescriptors trainDescriptors:(Mat*)trainDescriptors matches:(NSMutableArray<DMatch*>*)matches mask:(Mat*)mask {
    OBJC2CV(cv::DMatch, DMatch, matchesVector, matches);
    self.nativePtrDescriptorMatcher->match(queryDescriptors.nativeRef, trainDescriptors.nativeRef, matchesVector, mask.nativeRef);
    CV2OBJC(cv::DMatch, DMatch, matchesVector, matches);
}

- (void)match:(Mat*)queryDescriptors trainDescriptors:(Mat*)trainDescriptors matches:(NSMutableArray<DMatch*>*)matches {
    OBJC2CV(cv::DMatch, DMatch, matchesVector, matches);
    self.nativePtrDescriptorMatcher->match(queryDescriptors.nativeRef, trainDescriptors.nativeRef, matchesVector);
    CV2OBJC(cv::DMatch, DMatch, matchesVector, matches);
}


//
//  void cv::DescriptorMatcher::knnMatch(Mat queryDescriptors, Mat trainDescriptors, vector_vector_DMatch& matches, int k, Mat mask = Mat(), bool compactResult = false)
//
- (void)knnMatch:(Mat*)queryDescriptors trainDescriptors:(Mat*)trainDescriptors matches:(NSMutableArray<NSMutableArray<DMatch*>*>*)matches k:(int)k mask:(Mat*)mask compactResult:(BOOL)compactResult {
    OBJC2CV2(cv::DMatch, DMatch, matchesVector2, matches);
    self.nativePtrDescriptorMatcher->knnMatch(queryDescriptors.nativeRef, trainDescriptors.nativeRef, matchesVector2, k, mask.nativeRef, (bool)compactResult);
    CV2OBJC2(cv::DMatch, DMatch, matchesVector2, matches);
}

- (void)knnMatch:(Mat*)queryDescriptors trainDescriptors:(Mat*)trainDescriptors matches:(NSMutableArray<NSMutableArray<DMatch*>*>*)matches k:(int)k mask:(Mat*)mask {
    OBJC2CV2(cv::DMatch, DMatch, matchesVector2, matches);
    self.nativePtrDescriptorMatcher->knnMatch(queryDescriptors.nativeRef, trainDescriptors.nativeRef, matchesVector2, k, mask.nativeRef);
    CV2OBJC2(cv::DMatch, DMatch, matchesVector2, matches);
}

- (void)knnMatch:(Mat*)queryDescriptors trainDescriptors:(Mat*)trainDescriptors matches:(NSMutableArray<NSMutableArray<DMatch*>*>*)matches k:(int)k {
    OBJC2CV2(cv::DMatch, DMatch, matchesVector2, matches);
    self.nativePtrDescriptorMatcher->knnMatch(queryDescriptors.nativeRef, trainDescriptors.nativeRef, matchesVector2, k);
    CV2OBJC2(cv::DMatch, DMatch, matchesVector2, matches);
}


//
//  void cv::DescriptorMatcher::radiusMatch(Mat queryDescriptors, Mat trainDescriptors, vector_vector_DMatch& matches, float maxDistance, Mat mask = Mat(), bool compactResult = false)
//
- (void)radiusMatch:(Mat*)queryDescriptors trainDescriptors:(Mat*)trainDescriptors matches:(NSMutableArray<NSMutableArray<DMatch*>*>*)matches maxDistance:(float)maxDistance mask:(Mat*)mask compactResult:(BOOL)compactResult {
    OBJC2CV2(cv::DMatch, DMatch, matchesVector2, matches);
    self.nativePtrDescriptorMatcher->radiusMatch(queryDescriptors.nativeRef, trainDescriptors.nativeRef, matchesVector2, maxDistance, mask.nativeRef, (bool)compactResult);
    CV2OBJC2(cv::DMatch, DMatch, matchesVector2, matches);
}

- (void)radiusMatch:(Mat*)queryDescriptors trainDescriptors:(Mat*)trainDescriptors matches:(NSMutableArray<NSMutableArray<DMatch*>*>*)matches maxDistance:(float)maxDistance mask:(Mat*)mask {
    OBJC2CV2(cv::DMatch, DMatch, matchesVector2, matches);
    self.nativePtrDescriptorMatcher->radiusMatch(queryDescriptors.nativeRef, trainDescriptors.nativeRef, matchesVector2, maxDistance, mask.nativeRef);
    CV2OBJC2(cv::DMatch, DMatch, matchesVector2, matches);
}

- (void)radiusMatch:(Mat*)queryDescriptors trainDescriptors:(Mat*)trainDescriptors matches:(NSMutableArray<NSMutableArray<DMatch*>*>*)matches maxDistance:(float)maxDistance {
    OBJC2CV2(cv::DMatch, DMatch, matchesVector2, matches);
    self.nativePtrDescriptorMatcher->radiusMatch(queryDescriptors.nativeRef, trainDescriptors.nativeRef, matchesVector2, maxDistance);
    CV2OBJC2(cv::DMatch, DMatch, matchesVector2, matches);
}


//
//  void cv::DescriptorMatcher::match(Mat queryDescriptors, vector_DMatch& matches, vector_Mat masks = vector_Mat())
//
- (void)match:(Mat*)queryDescriptors matches:(NSMutableArray<DMatch*>*)matches masks:(NSArray<Mat*>*)masks {
    OBJC2CV(cv::DMatch, DMatch, matchesVector, matches);
    OBJC2CV(cv::Mat, Mat, masksVector, masks);
    self.nativePtrDescriptorMatcher->match(queryDescriptors.nativeRef, matchesVector, masksVector);
    CV2OBJC(cv::DMatch, DMatch, matchesVector, matches);
}

- (void)match:(Mat*)queryDescriptors matches:(NSMutableArray<DMatch*>*)matches {
    OBJC2CV(cv::DMatch, DMatch, matchesVector, matches);
    self.nativePtrDescriptorMatcher->match(queryDescriptors.nativeRef, matchesVector);
    CV2OBJC(cv::DMatch, DMatch, matchesVector, matches);
}


//
//  void cv::DescriptorMatcher::knnMatch(Mat queryDescriptors, vector_vector_DMatch& matches, int k, vector_Mat masks = vector_Mat(), bool compactResult = false)
//
- (void)knnMatch:(Mat*)queryDescriptors matches:(NSMutableArray<NSMutableArray<DMatch*>*>*)matches k:(int)k masks:(NSArray<Mat*>*)masks compactResult:(BOOL)compactResult {
    OBJC2CV2(cv::DMatch, DMatch, matchesVector2, matches);
    OBJC2CV(cv::Mat, Mat, masksVector, masks);
    self.nativePtrDescriptorMatcher->knnMatch(queryDescriptors.nativeRef, matchesVector2, k, masksVector, (bool)compactResult);
    CV2OBJC2(cv::DMatch, DMatch, matchesVector2, matches);
}

- (void)knnMatch:(Mat*)queryDescriptors matches:(NSMutableArray<NSMutableArray<DMatch*>*>*)matches k:(int)k masks:(NSArray<Mat*>*)masks {
    OBJC2CV2(cv::DMatch, DMatch, matchesVector2, matches);
    OBJC2CV(cv::Mat, Mat, masksVector, masks);
    self.nativePtrDescriptorMatcher->knnMatch(queryDescriptors.nativeRef, matchesVector2, k, masksVector);
    CV2OBJC2(cv::DMatch, DMatch, matchesVector2, matches);
}

- (void)knnMatch:(Mat*)queryDescriptors matches:(NSMutableArray<NSMutableArray<DMatch*>*>*)matches k:(int)k {
    OBJC2CV2(cv::DMatch, DMatch, matchesVector2, matches);
    self.nativePtrDescriptorMatcher->knnMatch(queryDescriptors.nativeRef, matchesVector2, k);
    CV2OBJC2(cv::DMatch, DMatch, matchesVector2, matches);
}


//
//  void cv::DescriptorMatcher::radiusMatch(Mat queryDescriptors, vector_vector_DMatch& matches, float maxDistance, vector_Mat masks = vector_Mat(), bool compactResult = false)
//
- (void)radiusMatch:(Mat*)queryDescriptors matches:(NSMutableArray<NSMutableArray<DMatch*>*>*)matches maxDistance:(float)maxDistance masks:(NSArray<Mat*>*)masks compactResult:(BOOL)compactResult {
    OBJC2CV2(cv::DMatch, DMatch, matchesVector2, matches);
    OBJC2CV(cv::Mat, Mat, masksVector, masks);
    self.nativePtrDescriptorMatcher->radiusMatch(queryDescriptors.nativeRef, matchesVector2, maxDistance, masksVector, (bool)compactResult);
    CV2OBJC2(cv::DMatch, DMatch, matchesVector2, matches);
}

- (void)radiusMatch:(Mat*)queryDescriptors matches:(NSMutableArray<NSMutableArray<DMatch*>*>*)matches maxDistance:(float)maxDistance masks:(NSArray<Mat*>*)masks {
    OBJC2CV2(cv::DMatch, DMatch, matchesVector2, matches);
    OBJC2CV(cv::Mat, Mat, masksVector, masks);
    self.nativePtrDescriptorMatcher->radiusMatch(queryDescriptors.nativeRef, matchesVector2, maxDistance, masksVector);
    CV2OBJC2(cv::DMatch, DMatch, matchesVector2, matches);
}

- (void)radiusMatch:(Mat*)queryDescriptors matches:(NSMutableArray<NSMutableArray<DMatch*>*>*)matches maxDistance:(float)maxDistance {
    OBJC2CV2(cv::DMatch, DMatch, matchesVector2, matches);
    self.nativePtrDescriptorMatcher->radiusMatch(queryDescriptors.nativeRef, matchesVector2, maxDistance);
    CV2OBJC2(cv::DMatch, DMatch, matchesVector2, matches);
}


//
//  void cv::DescriptorMatcher::write(String fileName)
//
- (void)write:(NSString*)fileName {
    self.nativePtrDescriptorMatcher->write(cv::String(fileName.UTF8String));
}


//
//  void cv::DescriptorMatcher::read(String fileName)
//
- (void)read:(NSString*)fileName {
    self.nativePtrDescriptorMatcher->read(cv::String(fileName.UTF8String));
}


//
//  void cv::DescriptorMatcher::read(FileNode arg1)
//

//
//  Ptr_DescriptorMatcher cv::DescriptorMatcher::clone(bool emptyTrainData = false)
//
- (DescriptorMatcher*)clone:(BOOL)emptyTrainData {
    cv::Ptr<cv::DescriptorMatcher> retVal = self.nativePtrDescriptorMatcher->clone((bool)emptyTrainData);
    return [DescriptorMatcher fromNative:retVal];
}

- (DescriptorMatcher*)clone {
    cv::Ptr<cv::DescriptorMatcher> retVal = self.nativePtrDescriptorMatcher->clone();
    return [DescriptorMatcher fromNative:retVal];
}


//
// static Ptr_DescriptorMatcher cv::DescriptorMatcher::create(String descriptorMatcherType)
//
+ (DescriptorMatcher*)create2:(NSString*)descriptorMatcherType {
    cv::Ptr<cv::DescriptorMatcher> retVal = cv::DescriptorMatcher::create(cv::String(descriptorMatcherType.UTF8String));
    return [DescriptorMatcher fromNative:retVal];
}


//
// static Ptr_DescriptorMatcher cv::DescriptorMatcher::create(DescriptorMatcher_MatcherType matcherType)
//
+ (DescriptorMatcher*)create:(MatcherType)matcherType {
    cv::Ptr<cv::DescriptorMatcher> retVal = cv::DescriptorMatcher::create((cv::DescriptorMatcher::MatcherType)matcherType);
    return [DescriptorMatcher fromNative:retVal];
}


//
//  void cv::DescriptorMatcher::write(FileStorage fs, String name)
//


@end



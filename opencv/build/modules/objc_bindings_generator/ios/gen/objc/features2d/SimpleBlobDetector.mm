//
// This file is auto-generated. Please don't modify it!
//

#import "SimpleBlobDetector.h"
#import "CVObjcUtil.h"

#import "Point2i.h"
#import "SimpleBlobDetectorParams.h"

@implementation SimpleBlobDetector


- (instancetype)initWithNativePtr:(cv::Ptr<cv::SimpleBlobDetector>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrSimpleBlobDetector = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::SimpleBlobDetector>)nativePtr {
    return [[SimpleBlobDetector alloc] initWithNativePtr:nativePtr];
}



//
// static Ptr_SimpleBlobDetector cv::SimpleBlobDetector::create(SimpleBlobDetector_Params parameters = SimpleBlobDetector::Params())
//
+ (SimpleBlobDetector*)create:(SimpleBlobDetectorParams*)parameters {
    cv::Ptr<cv::SimpleBlobDetector> retVal = cv::SimpleBlobDetector::create(*(parameters.nativePtr));
    return [SimpleBlobDetector fromNative:retVal];
}

+ (SimpleBlobDetector*)create {
    cv::Ptr<cv::SimpleBlobDetector> retVal = cv::SimpleBlobDetector::create();
    return [SimpleBlobDetector fromNative:retVal];
}


//
//  String cv::SimpleBlobDetector::getDefaultName()
//
- (NSString*)getDefaultName {
    cv::String retVal = self.nativePtrSimpleBlobDetector->getDefaultName();
    return [NSString stringWithUTF8String:retVal.c_str()];
}


//
//  vector_vector_Point cv::SimpleBlobDetector::getBlobContours()
//
- (NSArray<NSArray<Point2i*>*>*)getBlobContours {
    NSMutableArray<NSMutableArray<Point2i*>*>* retVal = [NSMutableArray new];
    std::vector< std::vector<cv::Point2i> > retValVector = self.nativePtrSimpleBlobDetector->getBlobContours();
    CV2OBJC2(cv::Point2i, Point2i, retValVector, retVal);
    return retVal;
}



@end



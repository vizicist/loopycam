//
// This file is auto-generated. Please don't modify it!
//

#import "Tracker.h"
#import "CVObjcUtil.h"

#import "Mat.h"
#import "Rect2i.h"

@implementation Tracker


- (instancetype)initWithNativePtr:(cv::Ptr<cv::Tracker>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::Tracker>)nativePtr {
    return [[Tracker alloc] initWithNativePtr:nativePtr];
}



//
//  void cv::Tracker::init(Mat image, Rect boundingBox)
//
- (void)init:(Mat*)image boundingBox:(Rect2i*)boundingBox {
    self.nativePtr->init(image.nativeRef, boundingBox.nativeRef);
}


//
//  bool cv::Tracker::update(Mat image, Rect& boundingBox)
//
- (BOOL)update:(Mat*)image boundingBox:(Rect2i*)boundingBox {
    bool retVal = self.nativePtr->update(image.nativeRef, boundingBox.nativeRef);
    return retVal;
}



@end



//
// This file is auto-generated. Please don't modify it!
//

#import "GridBoard.h"
#import "CVObjcUtil.h"

#import "Dictionary.h"
#import "Mat.h"
#import "Size2i.h"

@implementation GridBoard


- (instancetype)initWithNativePtr:(cv::Ptr<cv::aruco::GridBoard>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrGridBoard = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::aruco::GridBoard>)nativePtr {
    return [[GridBoard alloc] initWithNativePtr:nativePtr];
}



//
//   cv::aruco::GridBoard::GridBoard(Size size, float markerLength, float markerSeparation, Dictionary dictionary, Mat ids = Mat())
//
- (instancetype)initWithSize:(Size2i*)size markerLength:(float)markerLength markerSeparation:(float)markerSeparation dictionary:(Dictionary*)dictionary ids:(Mat*)ids {
    return [self initWithNativePtr:cv::Ptr<cv::aruco::GridBoard>(new cv::aruco::GridBoard(size.nativeRef, markerLength, markerSeparation, *(dictionary.nativePtr), ids.nativeRef))];
}

- (instancetype)initWithSize:(Size2i*)size markerLength:(float)markerLength markerSeparation:(float)markerSeparation dictionary:(Dictionary*)dictionary {
    return [self initWithNativePtr:cv::Ptr<cv::aruco::GridBoard>(new cv::aruco::GridBoard(size.nativeRef, markerLength, markerSeparation, *(dictionary.nativePtr)))];
}


//
//  Size cv::aruco::GridBoard::getGridSize()
//
- (Size2i*)getGridSize {
    cv::Size retVal = self.nativePtrGridBoard->getGridSize();
    return [Size2i fromNative:retVal];
}


//
//  float cv::aruco::GridBoard::getMarkerLength()
//
- (float)getMarkerLength {
    float retVal = self.nativePtrGridBoard->getMarkerLength();
    return retVal;
}


//
//  float cv::aruco::GridBoard::getMarkerSeparation()
//
- (float)getMarkerSeparation {
    float retVal = self.nativePtrGridBoard->getMarkerSeparation();
    return retVal;
}



@end



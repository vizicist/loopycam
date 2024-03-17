//
// This file is auto-generated. Please don't modify it!
//

#import "CharucoParameters.h"
#import "CVObjcUtil.h"

#import "Mat.h"

@implementation CharucoParameters


- (instancetype)initWithNativePtr:(cv::Ptr<cv::aruco::CharucoParameters>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::aruco::CharucoParameters>)nativePtr {
    return [[CharucoParameters alloc] initWithNativePtr:nativePtr];
}



//
//   cv::aruco::CharucoParameters::CharucoParameters()
//
- (instancetype)init {
    return [self initWithNativePtr:cv::Ptr<cv::aruco::CharucoParameters>(new cv::aruco::CharucoParameters())];
}

-(Mat*)cameraMatrix {
	cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->cameraMatrix);
	return [Mat fromNativePtr:retVal];
}

-(void)setCameraMatrix:(Mat*)cameraMatrix {
	self.nativePtr->cameraMatrix = cameraMatrix.nativeRef;
}

-(Mat*)distCoeffs {
	cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->distCoeffs);
	return [Mat fromNativePtr:retVal];
}

-(void)setDistCoeffs:(Mat*)distCoeffs {
	self.nativePtr->distCoeffs = distCoeffs.nativeRef;
}

-(int)minMarkers {
	return self.nativePtr->minMarkers;
}

-(void)setMinMarkers:(int)minMarkers {
	self.nativePtr->minMarkers = minMarkers;
}

-(BOOL)tryRefineMarkers {
	return self.nativePtr->tryRefineMarkers;
}

-(void)setTryRefineMarkers:(BOOL)tryRefineMarkers {
	self.nativePtr->tryRefineMarkers = (bool)tryRefineMarkers;
}



@end



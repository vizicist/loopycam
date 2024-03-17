//
// This file is auto-generated. Please don't modify it!
//

#import "DetectorParameters.h"
#import "CVObjcUtil.h"



@implementation DetectorParameters


- (instancetype)initWithNativePtr:(cv::Ptr<cv::aruco::DetectorParameters>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::aruco::DetectorParameters>)nativePtr {
    return [[DetectorParameters alloc] initWithNativePtr:nativePtr];
}



//
//   cv::aruco::DetectorParameters::DetectorParameters()
//
- (instancetype)init {
    return [self initWithNativePtr:cv::Ptr<cv::aruco::DetectorParameters>(new cv::aruco::DetectorParameters())];
}


//
//  bool cv::aruco::DetectorParameters::readDetectorParameters(FileNode fn)
//

//
//  bool cv::aruco::DetectorParameters::writeDetectorParameters(FileStorage fs, String name = String())
//
-(int)adaptiveThreshWinSizeMin {
	return self.nativePtr->adaptiveThreshWinSizeMin;
}

-(void)setAdaptiveThreshWinSizeMin:(int)adaptiveThreshWinSizeMin {
	self.nativePtr->adaptiveThreshWinSizeMin = adaptiveThreshWinSizeMin;
}

-(int)adaptiveThreshWinSizeMax {
	return self.nativePtr->adaptiveThreshWinSizeMax;
}

-(void)setAdaptiveThreshWinSizeMax:(int)adaptiveThreshWinSizeMax {
	self.nativePtr->adaptiveThreshWinSizeMax = adaptiveThreshWinSizeMax;
}

-(int)adaptiveThreshWinSizeStep {
	return self.nativePtr->adaptiveThreshWinSizeStep;
}

-(void)setAdaptiveThreshWinSizeStep:(int)adaptiveThreshWinSizeStep {
	self.nativePtr->adaptiveThreshWinSizeStep = adaptiveThreshWinSizeStep;
}

-(double)adaptiveThreshConstant {
	return self.nativePtr->adaptiveThreshConstant;
}

-(void)setAdaptiveThreshConstant:(double)adaptiveThreshConstant {
	self.nativePtr->adaptiveThreshConstant = adaptiveThreshConstant;
}

-(double)minMarkerPerimeterRate {
	return self.nativePtr->minMarkerPerimeterRate;
}

-(void)setMinMarkerPerimeterRate:(double)minMarkerPerimeterRate {
	self.nativePtr->minMarkerPerimeterRate = minMarkerPerimeterRate;
}

-(double)maxMarkerPerimeterRate {
	return self.nativePtr->maxMarkerPerimeterRate;
}

-(void)setMaxMarkerPerimeterRate:(double)maxMarkerPerimeterRate {
	self.nativePtr->maxMarkerPerimeterRate = maxMarkerPerimeterRate;
}

-(double)polygonalApproxAccuracyRate {
	return self.nativePtr->polygonalApproxAccuracyRate;
}

-(void)setPolygonalApproxAccuracyRate:(double)polygonalApproxAccuracyRate {
	self.nativePtr->polygonalApproxAccuracyRate = polygonalApproxAccuracyRate;
}

-(double)minCornerDistanceRate {
	return self.nativePtr->minCornerDistanceRate;
}

-(void)setMinCornerDistanceRate:(double)minCornerDistanceRate {
	self.nativePtr->minCornerDistanceRate = minCornerDistanceRate;
}

-(int)minDistanceToBorder {
	return self.nativePtr->minDistanceToBorder;
}

-(void)setMinDistanceToBorder:(int)minDistanceToBorder {
	self.nativePtr->minDistanceToBorder = minDistanceToBorder;
}

-(double)minMarkerDistanceRate {
	return self.nativePtr->minMarkerDistanceRate;
}

-(void)setMinMarkerDistanceRate:(double)minMarkerDistanceRate {
	self.nativePtr->minMarkerDistanceRate = minMarkerDistanceRate;
}

-(float)minGroupDistance {
	return self.nativePtr->minGroupDistance;
}

-(void)setMinGroupDistance:(float)minGroupDistance {
	self.nativePtr->minGroupDistance = minGroupDistance;
}

-(int)cornerRefinementMethod {
	return self.nativePtr->cornerRefinementMethod;
}

-(void)setCornerRefinementMethod:(int)cornerRefinementMethod {
	self.nativePtr->cornerRefinementMethod = cornerRefinementMethod;
}

-(int)cornerRefinementWinSize {
	return self.nativePtr->cornerRefinementWinSize;
}

-(void)setCornerRefinementWinSize:(int)cornerRefinementWinSize {
	self.nativePtr->cornerRefinementWinSize = cornerRefinementWinSize;
}

-(float)relativeCornerRefinmentWinSize {
	return self.nativePtr->relativeCornerRefinmentWinSize;
}

-(void)setRelativeCornerRefinmentWinSize:(float)relativeCornerRefinmentWinSize {
	self.nativePtr->relativeCornerRefinmentWinSize = relativeCornerRefinmentWinSize;
}

-(int)cornerRefinementMaxIterations {
	return self.nativePtr->cornerRefinementMaxIterations;
}

-(void)setCornerRefinementMaxIterations:(int)cornerRefinementMaxIterations {
	self.nativePtr->cornerRefinementMaxIterations = cornerRefinementMaxIterations;
}

-(double)cornerRefinementMinAccuracy {
	return self.nativePtr->cornerRefinementMinAccuracy;
}

-(void)setCornerRefinementMinAccuracy:(double)cornerRefinementMinAccuracy {
	self.nativePtr->cornerRefinementMinAccuracy = cornerRefinementMinAccuracy;
}

-(int)markerBorderBits {
	return self.nativePtr->markerBorderBits;
}

-(void)setMarkerBorderBits:(int)markerBorderBits {
	self.nativePtr->markerBorderBits = markerBorderBits;
}

-(int)perspectiveRemovePixelPerCell {
	return self.nativePtr->perspectiveRemovePixelPerCell;
}

-(void)setPerspectiveRemovePixelPerCell:(int)perspectiveRemovePixelPerCell {
	self.nativePtr->perspectiveRemovePixelPerCell = perspectiveRemovePixelPerCell;
}

-(double)perspectiveRemoveIgnoredMarginPerCell {
	return self.nativePtr->perspectiveRemoveIgnoredMarginPerCell;
}

-(void)setPerspectiveRemoveIgnoredMarginPerCell:(double)perspectiveRemoveIgnoredMarginPerCell {
	self.nativePtr->perspectiveRemoveIgnoredMarginPerCell = perspectiveRemoveIgnoredMarginPerCell;
}

-(double)maxErroneousBitsInBorderRate {
	return self.nativePtr->maxErroneousBitsInBorderRate;
}

-(void)setMaxErroneousBitsInBorderRate:(double)maxErroneousBitsInBorderRate {
	self.nativePtr->maxErroneousBitsInBorderRate = maxErroneousBitsInBorderRate;
}

-(double)minOtsuStdDev {
	return self.nativePtr->minOtsuStdDev;
}

-(void)setMinOtsuStdDev:(double)minOtsuStdDev {
	self.nativePtr->minOtsuStdDev = minOtsuStdDev;
}

-(double)errorCorrectionRate {
	return self.nativePtr->errorCorrectionRate;
}

-(void)setErrorCorrectionRate:(double)errorCorrectionRate {
	self.nativePtr->errorCorrectionRate = errorCorrectionRate;
}

-(float)aprilTagQuadDecimate {
	return self.nativePtr->aprilTagQuadDecimate;
}

-(void)setAprilTagQuadDecimate:(float)aprilTagQuadDecimate {
	self.nativePtr->aprilTagQuadDecimate = aprilTagQuadDecimate;
}

-(float)aprilTagQuadSigma {
	return self.nativePtr->aprilTagQuadSigma;
}

-(void)setAprilTagQuadSigma:(float)aprilTagQuadSigma {
	self.nativePtr->aprilTagQuadSigma = aprilTagQuadSigma;
}

-(int)aprilTagMinClusterPixels {
	return self.nativePtr->aprilTagMinClusterPixels;
}

-(void)setAprilTagMinClusterPixels:(int)aprilTagMinClusterPixels {
	self.nativePtr->aprilTagMinClusterPixels = aprilTagMinClusterPixels;
}

-(int)aprilTagMaxNmaxima {
	return self.nativePtr->aprilTagMaxNmaxima;
}

-(void)setAprilTagMaxNmaxima:(int)aprilTagMaxNmaxima {
	self.nativePtr->aprilTagMaxNmaxima = aprilTagMaxNmaxima;
}

-(float)aprilTagCriticalRad {
	return self.nativePtr->aprilTagCriticalRad;
}

-(void)setAprilTagCriticalRad:(float)aprilTagCriticalRad {
	self.nativePtr->aprilTagCriticalRad = aprilTagCriticalRad;
}

-(float)aprilTagMaxLineFitMse {
	return self.nativePtr->aprilTagMaxLineFitMse;
}

-(void)setAprilTagMaxLineFitMse:(float)aprilTagMaxLineFitMse {
	self.nativePtr->aprilTagMaxLineFitMse = aprilTagMaxLineFitMse;
}

-(int)aprilTagMinWhiteBlackDiff {
	return self.nativePtr->aprilTagMinWhiteBlackDiff;
}

-(void)setAprilTagMinWhiteBlackDiff:(int)aprilTagMinWhiteBlackDiff {
	self.nativePtr->aprilTagMinWhiteBlackDiff = aprilTagMinWhiteBlackDiff;
}

-(int)aprilTagDeglitch {
	return self.nativePtr->aprilTagDeglitch;
}

-(void)setAprilTagDeglitch:(int)aprilTagDeglitch {
	self.nativePtr->aprilTagDeglitch = aprilTagDeglitch;
}

-(BOOL)detectInvertedMarker {
	return self.nativePtr->detectInvertedMarker;
}

-(void)setDetectInvertedMarker:(BOOL)detectInvertedMarker {
	self.nativePtr->detectInvertedMarker = (bool)detectInvertedMarker;
}

-(BOOL)useAruco3Detection {
	return self.nativePtr->useAruco3Detection;
}

-(void)setUseAruco3Detection:(BOOL)useAruco3Detection {
	self.nativePtr->useAruco3Detection = (bool)useAruco3Detection;
}

-(int)minSideLengthCanonicalImg {
	return self.nativePtr->minSideLengthCanonicalImg;
}

-(void)setMinSideLengthCanonicalImg:(int)minSideLengthCanonicalImg {
	self.nativePtr->minSideLengthCanonicalImg = minSideLengthCanonicalImg;
}

-(float)minMarkerLengthRatioOriginalImg {
	return self.nativePtr->minMarkerLengthRatioOriginalImg;
}

-(void)setMinMarkerLengthRatioOriginalImg:(float)minMarkerLengthRatioOriginalImg {
	self.nativePtr->minMarkerLengthRatioOriginalImg = minMarkerLengthRatioOriginalImg;
}



@end



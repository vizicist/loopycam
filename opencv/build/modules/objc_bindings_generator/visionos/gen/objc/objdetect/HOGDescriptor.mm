//
// This file is auto-generated. Please don't modify it!
//

#import "HOGDescriptor.h"
#import "CVObjcUtil.h"

#import "DoubleVector.h"
#import "FloatVector.h"
#import "Mat.h"
#import "Point2i.h"
#import "Rect2i.h"
#import "Size2i.h"

@implementation HOGDescriptor


- (instancetype)initWithNativePtr:(cv::Ptr<cv::HOGDescriptor>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::HOGDescriptor>)nativePtr {
    return [[HOGDescriptor alloc] initWithNativePtr:nativePtr];
}


+ (int)DEFAULT_NLEVELS {
    return 64;
}


//
//   cv::HOGDescriptor::HOGDescriptor()
//
- (instancetype)init {
    return [self initWithNativePtr:cv::Ptr<cv::HOGDescriptor>(new cv::HOGDescriptor())];
}


//
//   cv::HOGDescriptor::HOGDescriptor(Size _winSize, Size _blockSize, Size _blockStride, Size _cellSize, int _nbins, int _derivAperture = 1, double _winSigma = -1, HOGDescriptor_HistogramNormType _histogramNormType = HOGDescriptor::L2Hys, double _L2HysThreshold = 0.2, bool _gammaCorrection = false, int _nlevels = HOGDescriptor::DEFAULT_NLEVELS, bool _signedGradient = false)
//
- (instancetype)initWith_winSize:(Size2i*)_winSize _blockSize:(Size2i*)_blockSize _blockStride:(Size2i*)_blockStride _cellSize:(Size2i*)_cellSize _nbins:(int)_nbins _derivAperture:(int)_derivAperture _winSigma:(double)_winSigma _histogramNormType:(HistogramNormType)_histogramNormType _L2HysThreshold:(double)_L2HysThreshold _gammaCorrection:(BOOL)_gammaCorrection _nlevels:(int)_nlevels _signedGradient:(BOOL)_signedGradient {
    return [self initWithNativePtr:cv::Ptr<cv::HOGDescriptor>(new cv::HOGDescriptor(_winSize.nativeRef, _blockSize.nativeRef, _blockStride.nativeRef, _cellSize.nativeRef, _nbins, _derivAperture, _winSigma, (cv::HOGDescriptor::HistogramNormType)_histogramNormType, _L2HysThreshold, (bool)_gammaCorrection, _nlevels, (bool)_signedGradient))];
}

- (instancetype)initWith_winSize:(Size2i*)_winSize _blockSize:(Size2i*)_blockSize _blockStride:(Size2i*)_blockStride _cellSize:(Size2i*)_cellSize _nbins:(int)_nbins _derivAperture:(int)_derivAperture _winSigma:(double)_winSigma _histogramNormType:(HistogramNormType)_histogramNormType _L2HysThreshold:(double)_L2HysThreshold _gammaCorrection:(BOOL)_gammaCorrection _nlevels:(int)_nlevels {
    return [self initWithNativePtr:cv::Ptr<cv::HOGDescriptor>(new cv::HOGDescriptor(_winSize.nativeRef, _blockSize.nativeRef, _blockStride.nativeRef, _cellSize.nativeRef, _nbins, _derivAperture, _winSigma, (cv::HOGDescriptor::HistogramNormType)_histogramNormType, _L2HysThreshold, (bool)_gammaCorrection, _nlevels))];
}

- (instancetype)initWith_winSize:(Size2i*)_winSize _blockSize:(Size2i*)_blockSize _blockStride:(Size2i*)_blockStride _cellSize:(Size2i*)_cellSize _nbins:(int)_nbins _derivAperture:(int)_derivAperture _winSigma:(double)_winSigma _histogramNormType:(HistogramNormType)_histogramNormType _L2HysThreshold:(double)_L2HysThreshold _gammaCorrection:(BOOL)_gammaCorrection {
    return [self initWithNativePtr:cv::Ptr<cv::HOGDescriptor>(new cv::HOGDescriptor(_winSize.nativeRef, _blockSize.nativeRef, _blockStride.nativeRef, _cellSize.nativeRef, _nbins, _derivAperture, _winSigma, (cv::HOGDescriptor::HistogramNormType)_histogramNormType, _L2HysThreshold, (bool)_gammaCorrection))];
}

- (instancetype)initWith_winSize:(Size2i*)_winSize _blockSize:(Size2i*)_blockSize _blockStride:(Size2i*)_blockStride _cellSize:(Size2i*)_cellSize _nbins:(int)_nbins _derivAperture:(int)_derivAperture _winSigma:(double)_winSigma _histogramNormType:(HistogramNormType)_histogramNormType _L2HysThreshold:(double)_L2HysThreshold {
    return [self initWithNativePtr:cv::Ptr<cv::HOGDescriptor>(new cv::HOGDescriptor(_winSize.nativeRef, _blockSize.nativeRef, _blockStride.nativeRef, _cellSize.nativeRef, _nbins, _derivAperture, _winSigma, (cv::HOGDescriptor::HistogramNormType)_histogramNormType, _L2HysThreshold))];
}

- (instancetype)initWith_winSize:(Size2i*)_winSize _blockSize:(Size2i*)_blockSize _blockStride:(Size2i*)_blockStride _cellSize:(Size2i*)_cellSize _nbins:(int)_nbins _derivAperture:(int)_derivAperture _winSigma:(double)_winSigma _histogramNormType:(HistogramNormType)_histogramNormType {
    return [self initWithNativePtr:cv::Ptr<cv::HOGDescriptor>(new cv::HOGDescriptor(_winSize.nativeRef, _blockSize.nativeRef, _blockStride.nativeRef, _cellSize.nativeRef, _nbins, _derivAperture, _winSigma, (cv::HOGDescriptor::HistogramNormType)_histogramNormType))];
}

- (instancetype)initWith_winSize:(Size2i*)_winSize _blockSize:(Size2i*)_blockSize _blockStride:(Size2i*)_blockStride _cellSize:(Size2i*)_cellSize _nbins:(int)_nbins _derivAperture:(int)_derivAperture _winSigma:(double)_winSigma {
    return [self initWithNativePtr:cv::Ptr<cv::HOGDescriptor>(new cv::HOGDescriptor(_winSize.nativeRef, _blockSize.nativeRef, _blockStride.nativeRef, _cellSize.nativeRef, _nbins, _derivAperture, _winSigma))];
}

- (instancetype)initWith_winSize:(Size2i*)_winSize _blockSize:(Size2i*)_blockSize _blockStride:(Size2i*)_blockStride _cellSize:(Size2i*)_cellSize _nbins:(int)_nbins _derivAperture:(int)_derivAperture {
    return [self initWithNativePtr:cv::Ptr<cv::HOGDescriptor>(new cv::HOGDescriptor(_winSize.nativeRef, _blockSize.nativeRef, _blockStride.nativeRef, _cellSize.nativeRef, _nbins, _derivAperture))];
}

- (instancetype)initWith_winSize:(Size2i*)_winSize _blockSize:(Size2i*)_blockSize _blockStride:(Size2i*)_blockStride _cellSize:(Size2i*)_cellSize _nbins:(int)_nbins {
    return [self initWithNativePtr:cv::Ptr<cv::HOGDescriptor>(new cv::HOGDescriptor(_winSize.nativeRef, _blockSize.nativeRef, _blockStride.nativeRef, _cellSize.nativeRef, _nbins))];
}


//
//   cv::HOGDescriptor::HOGDescriptor(String filename)
//
- (instancetype)initWithFilename:(NSString*)filename {
    return [self initWithNativePtr:cv::Ptr<cv::HOGDescriptor>(new cv::HOGDescriptor(cv::String(filename.UTF8String)))];
}


//
//  size_t cv::HOGDescriptor::getDescriptorSize()
//
- (size_t)getDescriptorSize {
    size_t retVal = self.nativePtr->getDescriptorSize();
    return retVal;
}


//
//  bool cv::HOGDescriptor::checkDetectorSize()
//
- (BOOL)checkDetectorSize {
    bool retVal = self.nativePtr->checkDetectorSize();
    return retVal;
}


//
//  double cv::HOGDescriptor::getWinSigma()
//
- (double)getWinSigma {
    double retVal = self.nativePtr->getWinSigma();
    return retVal;
}


//
//  void cv::HOGDescriptor::setSVMDetector(Mat svmdetector)
//
- (void)setSVMDetector:(Mat*)svmdetector {
    self.nativePtr->setSVMDetector(svmdetector.nativeRef);
}


//
//  bool cv::HOGDescriptor::load(String filename, String objname = String())
//
- (BOOL)load:(NSString*)filename objname:(NSString*)objname {
    bool retVal = self.nativePtr->load(cv::String(filename.UTF8String), cv::String(objname.UTF8String));
    return retVal;
}

- (BOOL)load:(NSString*)filename {
    bool retVal = self.nativePtr->load(cv::String(filename.UTF8String));
    return retVal;
}


//
//  void cv::HOGDescriptor::save(String filename, String objname = String())
//
- (void)save:(NSString*)filename objname:(NSString*)objname {
    self.nativePtr->save(cv::String(filename.UTF8String), cv::String(objname.UTF8String));
}

- (void)save:(NSString*)filename {
    self.nativePtr->save(cv::String(filename.UTF8String));
}


//
//  void cv::HOGDescriptor::compute(Mat img, vector_float& descriptors, Size winStride = Size(), Size padding = Size(), vector_Point locations = std::vector<Point>())
//
- (void)compute:(Mat*)img descriptors:(FloatVector*)descriptors winStride:(Size2i*)winStride padding:(Size2i*)padding locations:(NSArray<Point2i*>*)locations {
    OBJC2CV(cv::Point2i, Point2i, locationsVector, locations);
    self.nativePtr->compute(img.nativeRef, descriptors.nativeRef, winStride.nativeRef, padding.nativeRef, locationsVector);
}

- (void)compute:(Mat*)img descriptors:(FloatVector*)descriptors winStride:(Size2i*)winStride padding:(Size2i*)padding {
    self.nativePtr->compute(img.nativeRef, descriptors.nativeRef, winStride.nativeRef, padding.nativeRef);
}

- (void)compute:(Mat*)img descriptors:(FloatVector*)descriptors winStride:(Size2i*)winStride {
    self.nativePtr->compute(img.nativeRef, descriptors.nativeRef, winStride.nativeRef);
}

- (void)compute:(Mat*)img descriptors:(FloatVector*)descriptors {
    self.nativePtr->compute(img.nativeRef, descriptors.nativeRef);
}


//
//  void cv::HOGDescriptor::detect(Mat img, vector_Point& foundLocations, vector_double& weights, double hitThreshold = 0, Size winStride = Size(), Size padding = Size(), vector_Point searchLocations = std::vector<Point>())
//
- (void)detect:(Mat*)img foundLocations:(NSMutableArray<Point2i*>*)foundLocations weights:(DoubleVector*)weights hitThreshold:(double)hitThreshold winStride:(Size2i*)winStride padding:(Size2i*)padding searchLocations:(NSArray<Point2i*>*)searchLocations {
    OBJC2CV(cv::Point2i, Point2i, foundLocationsVector, foundLocations);
    OBJC2CV(cv::Point2i, Point2i, searchLocationsVector, searchLocations);
    self.nativePtr->detect(img.nativeRef, foundLocationsVector, weights.nativeRef, hitThreshold, winStride.nativeRef, padding.nativeRef, searchLocationsVector);
    CV2OBJC(cv::Point2i, Point2i, foundLocationsVector, foundLocations);
}

- (void)detect:(Mat*)img foundLocations:(NSMutableArray<Point2i*>*)foundLocations weights:(DoubleVector*)weights hitThreshold:(double)hitThreshold winStride:(Size2i*)winStride padding:(Size2i*)padding {
    OBJC2CV(cv::Point2i, Point2i, foundLocationsVector, foundLocations);
    self.nativePtr->detect(img.nativeRef, foundLocationsVector, weights.nativeRef, hitThreshold, winStride.nativeRef, padding.nativeRef);
    CV2OBJC(cv::Point2i, Point2i, foundLocationsVector, foundLocations);
}

- (void)detect:(Mat*)img foundLocations:(NSMutableArray<Point2i*>*)foundLocations weights:(DoubleVector*)weights hitThreshold:(double)hitThreshold winStride:(Size2i*)winStride {
    OBJC2CV(cv::Point2i, Point2i, foundLocationsVector, foundLocations);
    self.nativePtr->detect(img.nativeRef, foundLocationsVector, weights.nativeRef, hitThreshold, winStride.nativeRef);
    CV2OBJC(cv::Point2i, Point2i, foundLocationsVector, foundLocations);
}

- (void)detect:(Mat*)img foundLocations:(NSMutableArray<Point2i*>*)foundLocations weights:(DoubleVector*)weights hitThreshold:(double)hitThreshold {
    OBJC2CV(cv::Point2i, Point2i, foundLocationsVector, foundLocations);
    self.nativePtr->detect(img.nativeRef, foundLocationsVector, weights.nativeRef, hitThreshold);
    CV2OBJC(cv::Point2i, Point2i, foundLocationsVector, foundLocations);
}

- (void)detect:(Mat*)img foundLocations:(NSMutableArray<Point2i*>*)foundLocations weights:(DoubleVector*)weights {
    OBJC2CV(cv::Point2i, Point2i, foundLocationsVector, foundLocations);
    self.nativePtr->detect(img.nativeRef, foundLocationsVector, weights.nativeRef);
    CV2OBJC(cv::Point2i, Point2i, foundLocationsVector, foundLocations);
}


//
//  void cv::HOGDescriptor::detectMultiScale(Mat img, vector_Rect& foundLocations, vector_double& foundWeights, double hitThreshold = 0, Size winStride = Size(), Size padding = Size(), double scale = 1.05, double groupThreshold = 2.0, bool useMeanshiftGrouping = false)
//
- (void)detectMultiScale:(Mat*)img foundLocations:(NSMutableArray<Rect2i*>*)foundLocations foundWeights:(DoubleVector*)foundWeights hitThreshold:(double)hitThreshold winStride:(Size2i*)winStride padding:(Size2i*)padding scale:(double)scale groupThreshold:(double)groupThreshold useMeanshiftGrouping:(BOOL)useMeanshiftGrouping {
    OBJC2CV(cv::Rect2i, Rect2i, foundLocationsVector, foundLocations);
    self.nativePtr->detectMultiScale(img.nativeRef, foundLocationsVector, foundWeights.nativeRef, hitThreshold, winStride.nativeRef, padding.nativeRef, scale, groupThreshold, (bool)useMeanshiftGrouping);
    CV2OBJC(cv::Rect2i, Rect2i, foundLocationsVector, foundLocations);
}

- (void)detectMultiScale:(Mat*)img foundLocations:(NSMutableArray<Rect2i*>*)foundLocations foundWeights:(DoubleVector*)foundWeights hitThreshold:(double)hitThreshold winStride:(Size2i*)winStride padding:(Size2i*)padding scale:(double)scale groupThreshold:(double)groupThreshold {
    OBJC2CV(cv::Rect2i, Rect2i, foundLocationsVector, foundLocations);
    self.nativePtr->detectMultiScale(img.nativeRef, foundLocationsVector, foundWeights.nativeRef, hitThreshold, winStride.nativeRef, padding.nativeRef, scale, groupThreshold);
    CV2OBJC(cv::Rect2i, Rect2i, foundLocationsVector, foundLocations);
}

- (void)detectMultiScale:(Mat*)img foundLocations:(NSMutableArray<Rect2i*>*)foundLocations foundWeights:(DoubleVector*)foundWeights hitThreshold:(double)hitThreshold winStride:(Size2i*)winStride padding:(Size2i*)padding scale:(double)scale {
    OBJC2CV(cv::Rect2i, Rect2i, foundLocationsVector, foundLocations);
    self.nativePtr->detectMultiScale(img.nativeRef, foundLocationsVector, foundWeights.nativeRef, hitThreshold, winStride.nativeRef, padding.nativeRef, scale);
    CV2OBJC(cv::Rect2i, Rect2i, foundLocationsVector, foundLocations);
}

- (void)detectMultiScale:(Mat*)img foundLocations:(NSMutableArray<Rect2i*>*)foundLocations foundWeights:(DoubleVector*)foundWeights hitThreshold:(double)hitThreshold winStride:(Size2i*)winStride padding:(Size2i*)padding {
    OBJC2CV(cv::Rect2i, Rect2i, foundLocationsVector, foundLocations);
    self.nativePtr->detectMultiScale(img.nativeRef, foundLocationsVector, foundWeights.nativeRef, hitThreshold, winStride.nativeRef, padding.nativeRef);
    CV2OBJC(cv::Rect2i, Rect2i, foundLocationsVector, foundLocations);
}

- (void)detectMultiScale:(Mat*)img foundLocations:(NSMutableArray<Rect2i*>*)foundLocations foundWeights:(DoubleVector*)foundWeights hitThreshold:(double)hitThreshold winStride:(Size2i*)winStride {
    OBJC2CV(cv::Rect2i, Rect2i, foundLocationsVector, foundLocations);
    self.nativePtr->detectMultiScale(img.nativeRef, foundLocationsVector, foundWeights.nativeRef, hitThreshold, winStride.nativeRef);
    CV2OBJC(cv::Rect2i, Rect2i, foundLocationsVector, foundLocations);
}

- (void)detectMultiScale:(Mat*)img foundLocations:(NSMutableArray<Rect2i*>*)foundLocations foundWeights:(DoubleVector*)foundWeights hitThreshold:(double)hitThreshold {
    OBJC2CV(cv::Rect2i, Rect2i, foundLocationsVector, foundLocations);
    self.nativePtr->detectMultiScale(img.nativeRef, foundLocationsVector, foundWeights.nativeRef, hitThreshold);
    CV2OBJC(cv::Rect2i, Rect2i, foundLocationsVector, foundLocations);
}

- (void)detectMultiScale:(Mat*)img foundLocations:(NSMutableArray<Rect2i*>*)foundLocations foundWeights:(DoubleVector*)foundWeights {
    OBJC2CV(cv::Rect2i, Rect2i, foundLocationsVector, foundLocations);
    self.nativePtr->detectMultiScale(img.nativeRef, foundLocationsVector, foundWeights.nativeRef);
    CV2OBJC(cv::Rect2i, Rect2i, foundLocationsVector, foundLocations);
}


//
//  void cv::HOGDescriptor::computeGradient(Mat img, Mat& grad, Mat& angleOfs, Size paddingTL = Size(), Size paddingBR = Size())
//
- (void)computeGradient:(Mat*)img grad:(Mat*)grad angleOfs:(Mat*)angleOfs paddingTL:(Size2i*)paddingTL paddingBR:(Size2i*)paddingBR {
    self.nativePtr->computeGradient(img.nativeRef, grad.nativeRef, angleOfs.nativeRef, paddingTL.nativeRef, paddingBR.nativeRef);
}

- (void)computeGradient:(Mat*)img grad:(Mat*)grad angleOfs:(Mat*)angleOfs paddingTL:(Size2i*)paddingTL {
    self.nativePtr->computeGradient(img.nativeRef, grad.nativeRef, angleOfs.nativeRef, paddingTL.nativeRef);
}

- (void)computeGradient:(Mat*)img grad:(Mat*)grad angleOfs:(Mat*)angleOfs {
    self.nativePtr->computeGradient(img.nativeRef, grad.nativeRef, angleOfs.nativeRef);
}


//
// static vector_float cv::HOGDescriptor::getDefaultPeopleDetector()
//
+ (FloatVector*)getDefaultPeopleDetector {
    std::vector<float> retVal = cv::HOGDescriptor::getDefaultPeopleDetector();
    return [FloatVector fromNative:retVal];
}


//
// static vector_float cv::HOGDescriptor::getDaimlerPeopleDetector()
//
+ (FloatVector*)getDaimlerPeopleDetector {
    std::vector<float> retVal = cv::HOGDescriptor::getDaimlerPeopleDetector();
    return [FloatVector fromNative:retVal];
}

-(Size2i*)winSize {
	return [Size2i fromNative:self.nativePtr->winSize];
}

-(Size2i*)blockSize {
	return [Size2i fromNative:self.nativePtr->blockSize];
}

-(Size2i*)blockStride {
	return [Size2i fromNative:self.nativePtr->blockStride];
}

-(Size2i*)cellSize {
	return [Size2i fromNative:self.nativePtr->cellSize];
}

-(int)nbins {
	return self.nativePtr->nbins;
}

-(int)derivAperture {
	return self.nativePtr->derivAperture;
}

-(double)winSigma {
	return self.nativePtr->winSigma;
}

-(HistogramNormType)histogramNormType {
	return (HistogramNormType)self.nativePtr->histogramNormType;
}

-(double)L2HysThreshold {
	return self.nativePtr->L2HysThreshold;
}

-(BOOL)gammaCorrection {
	return self.nativePtr->gammaCorrection;
}

-(FloatVector*)svmDetector {
	return [FloatVector fromNative:self.nativePtr->svmDetector];
}

-(int)nlevels {
	return self.nativePtr->nlevels;
}

-(BOOL)signedGradient {
	return self.nativePtr->signedGradient;
}



@end



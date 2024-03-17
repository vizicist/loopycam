//
// This file is auto-generated. Please don't modify it!
//

#import "Dictionary.h"
#import "CVObjcUtil.h"

#import "Mat.h"

@implementation Dictionary


- (instancetype)initWithNativePtr:(cv::Ptr<cv::aruco::Dictionary>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::aruco::Dictionary>)nativePtr {
    return [[Dictionary alloc] initWithNativePtr:nativePtr];
}



//
//   cv::aruco::Dictionary::Dictionary()
//
- (instancetype)init {
    return [self initWithNativePtr:cv::Ptr<cv::aruco::Dictionary>(new cv::aruco::Dictionary())];
}


//
//   cv::aruco::Dictionary::Dictionary(Mat bytesList, int _markerSize, int maxcorr = 0)
//
- (instancetype)initWithBytesList:(Mat*)bytesList _markerSize:(int)_markerSize maxcorr:(int)maxcorr {
    return [self initWithNativePtr:cv::Ptr<cv::aruco::Dictionary>(new cv::aruco::Dictionary(bytesList.nativeRef, _markerSize, maxcorr))];
}

- (instancetype)initWithBytesList:(Mat*)bytesList _markerSize:(int)_markerSize {
    return [self initWithNativePtr:cv::Ptr<cv::aruco::Dictionary>(new cv::aruco::Dictionary(bytesList.nativeRef, _markerSize))];
}


//
//  bool cv::aruco::Dictionary::readDictionary(FileNode fn)
//

//
//  void cv::aruco::Dictionary::writeDictionary(FileStorage fs, String name = String())
//

//
//  bool cv::aruco::Dictionary::identify(Mat onlyBits, int& idx, int& rotation, double maxCorrectionRate)
//
- (BOOL)identify:(Mat*)onlyBits idx:(int*)idx rotation:(int*)rotation maxCorrectionRate:(double)maxCorrectionRate {
    bool retVal = self.nativePtr->identify(onlyBits.nativeRef, *(int*)(idx), *(int*)(rotation), maxCorrectionRate);
    return retVal;
}


//
//  int cv::aruco::Dictionary::getDistanceToId(Mat bits, int id, bool allRotations = true)
//
- (int)getDistanceToId:(Mat*)bits id:(int)id allRotations:(BOOL)allRotations {
    int retVal = self.nativePtr->getDistanceToId(bits.nativeRef, id, (bool)allRotations);
    return retVal;
}

- (int)getDistanceToId:(Mat*)bits id:(int)id {
    int retVal = self.nativePtr->getDistanceToId(bits.nativeRef, id);
    return retVal;
}


//
//  void cv::aruco::Dictionary::generateImageMarker(int id, int sidePixels, Mat& _img, int borderBits = 1)
//
- (void)generateImageMarker:(int)id sidePixels:(int)sidePixels _img:(Mat*)_img borderBits:(int)borderBits {
    self.nativePtr->generateImageMarker(id, sidePixels, _img.nativeRef, borderBits);
}

- (void)generateImageMarker:(int)id sidePixels:(int)sidePixels _img:(Mat*)_img {
    self.nativePtr->generateImageMarker(id, sidePixels, _img.nativeRef);
}


//
// static Mat cv::aruco::Dictionary::getByteListFromBits(Mat bits)
//
+ (Mat*)getByteListFromBits:(Mat*)bits {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::aruco::Dictionary::getByteListFromBits(bits.nativeRef));
    return [Mat fromNativePtr:retVal];
}


//
// static Mat cv::aruco::Dictionary::getBitsFromByteList(Mat byteList, int markerSize)
//
+ (Mat*)getBitsFromByteList:(Mat*)byteList markerSize:(int)markerSize {
    cv::Ptr<cv::Mat> retVal = new cv::Mat(cv::aruco::Dictionary::getBitsFromByteList(byteList.nativeRef, markerSize));
    return [Mat fromNativePtr:retVal];
}

-(Mat*)bytesList {
	cv::Ptr<cv::Mat> retVal = new cv::Mat(self.nativePtr->bytesList);
	return [Mat fromNativePtr:retVal];
}

-(void)setBytesList:(Mat*)bytesList {
	self.nativePtr->bytesList = bytesList.nativeRef;
}

-(int)markerSize {
	return self.nativePtr->markerSize;
}

-(void)setMarkerSize:(int)markerSize {
	self.nativePtr->markerSize = markerSize;
}

-(int)maxCorrectionBits {
	return self.nativePtr->maxCorrectionBits;
}

-(void)setMaxCorrectionBits:(int)maxCorrectionBits {
	self.nativePtr->maxCorrectionBits = maxCorrectionBits;
}



@end



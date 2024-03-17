//
// This file is auto-generated. Please don't modify it!
//

#import "Image2BlobParams.h"
#import "CVObjcUtil.h"

#import "Dnn.h"
#import "Dnn.h"
#import "Rect2i.h"
#import "Scalar.h"
#import "Size2i.h"

@implementation Image2BlobParams


- (instancetype)initWithNativePtr:(cv::Ptr<cv::dnn::Image2BlobParams>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::dnn::Image2BlobParams>)nativePtr {
    return [[Image2BlobParams alloc] initWithNativePtr:nativePtr];
}



//
//   cv::dnn::Image2BlobParams::Image2BlobParams()
//
- (instancetype)init {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::Image2BlobParams>(new cv::dnn::Image2BlobParams())];
}


//
//   cv::dnn::Image2BlobParams::Image2BlobParams(Scalar scalefactor, Size size = Size(), Scalar mean = Scalar(), bool swapRB = false, int ddepth = CV_32F, DataLayout datalayout = DNN_LAYOUT_NCHW, ImagePaddingMode mode = DNN_PMODE_NULL, Scalar borderValue = 0.0)
//
- (instancetype)initWithScalefactor:(Scalar*)scalefactor size:(Size2i*)size mean:(Scalar*)mean swapRB:(BOOL)swapRB ddepth:(int)ddepth datalayout:(DataLayout)datalayout mode:(ImagePaddingMode)mode borderValue:(Scalar*)borderValue {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::Image2BlobParams>(new cv::dnn::Image2BlobParams(scalefactor.nativeRef, size.nativeRef, mean.nativeRef, (bool)swapRB, ddepth, (cv::dnn::DataLayout)datalayout, (cv::dnn::ImagePaddingMode)mode, borderValue.nativeRef))];
}

- (instancetype)initWithScalefactor:(Scalar*)scalefactor size:(Size2i*)size mean:(Scalar*)mean swapRB:(BOOL)swapRB ddepth:(int)ddepth datalayout:(DataLayout)datalayout mode:(ImagePaddingMode)mode {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::Image2BlobParams>(new cv::dnn::Image2BlobParams(scalefactor.nativeRef, size.nativeRef, mean.nativeRef, (bool)swapRB, ddepth, (cv::dnn::DataLayout)datalayout, (cv::dnn::ImagePaddingMode)mode))];
}

- (instancetype)initWithScalefactor:(Scalar*)scalefactor size:(Size2i*)size mean:(Scalar*)mean swapRB:(BOOL)swapRB ddepth:(int)ddepth datalayout:(DataLayout)datalayout {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::Image2BlobParams>(new cv::dnn::Image2BlobParams(scalefactor.nativeRef, size.nativeRef, mean.nativeRef, (bool)swapRB, ddepth, (cv::dnn::DataLayout)datalayout))];
}

- (instancetype)initWithScalefactor:(Scalar*)scalefactor size:(Size2i*)size mean:(Scalar*)mean swapRB:(BOOL)swapRB ddepth:(int)ddepth {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::Image2BlobParams>(new cv::dnn::Image2BlobParams(scalefactor.nativeRef, size.nativeRef, mean.nativeRef, (bool)swapRB, ddepth))];
}

- (instancetype)initWithScalefactor:(Scalar*)scalefactor size:(Size2i*)size mean:(Scalar*)mean swapRB:(BOOL)swapRB {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::Image2BlobParams>(new cv::dnn::Image2BlobParams(scalefactor.nativeRef, size.nativeRef, mean.nativeRef, (bool)swapRB))];
}

- (instancetype)initWithScalefactor:(Scalar*)scalefactor size:(Size2i*)size mean:(Scalar*)mean {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::Image2BlobParams>(new cv::dnn::Image2BlobParams(scalefactor.nativeRef, size.nativeRef, mean.nativeRef))];
}

- (instancetype)initWithScalefactor:(Scalar*)scalefactor size:(Size2i*)size {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::Image2BlobParams>(new cv::dnn::Image2BlobParams(scalefactor.nativeRef, size.nativeRef))];
}

- (instancetype)initWithScalefactor:(Scalar*)scalefactor {
    return [self initWithNativePtr:cv::Ptr<cv::dnn::Image2BlobParams>(new cv::dnn::Image2BlobParams(scalefactor.nativeRef))];
}


//
//  Rect cv::dnn::Image2BlobParams::blobRectToImageRect(Rect rBlob, Size size)
//
- (Rect2i*)blobRectToImageRect:(Rect2i*)rBlob size:(Size2i*)size {
    cv::Rect retVal = self.nativePtr->blobRectToImageRect(rBlob.nativeRef, size.nativeRef);
    return [Rect2i fromNative:retVal];
}


//
//  void cv::dnn::Image2BlobParams::blobRectsToImageRects(vector_Rect rBlob, vector_Rect& rImg, Size size)
//
- (void)blobRectsToImageRects:(NSArray<Rect2i*>*)rBlob rImg:(NSMutableArray<Rect2i*>*)rImg size:(Size2i*)size {
    OBJC2CV(cv::Rect2i, Rect2i, rBlobVector, rBlob);
    OBJC2CV(cv::Rect2i, Rect2i, rImgVector, rImg);
    self.nativePtr->blobRectsToImageRects(rBlobVector, rImgVector, size.nativeRef);
    CV2OBJC(cv::Rect2i, Rect2i, rImgVector, rImg);
}

-(Scalar*)scalefactor {
	return [Scalar fromNative:self.nativePtr->scalefactor];
}

-(void)setScalefactor:(Scalar*)scalefactor {
	self.nativePtr->scalefactor = scalefactor.nativeRef;
}

-(Size2i*)size {
	return [Size2i fromNative:self.nativePtr->size];
}

-(void)setSize:(Size2i*)size {
	self.nativePtr->size = size.nativeRef;
}

-(Scalar*)mean {
	return [Scalar fromNative:self.nativePtr->mean];
}

-(void)setMean:(Scalar*)mean {
	self.nativePtr->mean = mean.nativeRef;
}

-(BOOL)swapRB {
	return self.nativePtr->swapRB;
}

-(void)setSwapRB:(BOOL)swapRB {
	self.nativePtr->swapRB = (bool)swapRB;
}

-(int)ddepth {
	return self.nativePtr->ddepth;
}

-(void)setDdepth:(int)ddepth {
	self.nativePtr->ddepth = ddepth;
}

-(DataLayout)datalayout {
	return (DataLayout)self.nativePtr->datalayout;
}

-(void)setDatalayout:(DataLayout)datalayout {
	self.nativePtr->datalayout = (cv::dnn::DataLayout)datalayout;
}

-(ImagePaddingMode)paddingmode {
	return (ImagePaddingMode)self.nativePtr->paddingmode;
}

-(void)setPaddingmode:(ImagePaddingMode)paddingmode {
	self.nativePtr->paddingmode = (cv::dnn::ImagePaddingMode)paddingmode;
}

-(Scalar*)borderValue {
	return [Scalar fromNative:self.nativePtr->borderValue];
}

-(void)setBorderValue:(Scalar*)borderValue {
	self.nativePtr->borderValue = borderValue.nativeRef;
}



@end



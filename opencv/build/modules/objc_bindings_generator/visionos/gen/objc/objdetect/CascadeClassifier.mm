//
// This file is auto-generated. Please don't modify it!
//

#import "CascadeClassifier.h"
#import "CVObjcUtil.h"

#import "DoubleVector.h"
#import "IntVector.h"
#import "Mat.h"
#import "Rect2i.h"
#import "Size2i.h"

@implementation CascadeClassifier


- (instancetype)initWithNativePtr:(cv::Ptr<cv::CascadeClassifier>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::CascadeClassifier>)nativePtr {
    return [[CascadeClassifier alloc] initWithNativePtr:nativePtr];
}



//
//   cv::CascadeClassifier::CascadeClassifier()
//
- (instancetype)init {
    return [self initWithNativePtr:cv::Ptr<cv::CascadeClassifier>(new cv::CascadeClassifier())];
}


//
//   cv::CascadeClassifier::CascadeClassifier(String filename)
//
- (instancetype)initWithFilename:(NSString*)filename {
    return [self initWithNativePtr:cv::Ptr<cv::CascadeClassifier>(new cv::CascadeClassifier(cv::String(filename.UTF8String)))];
}


//
//  bool cv::CascadeClassifier::empty()
//
- (BOOL)empty {
    bool retVal = self.nativePtr->empty();
    return retVal;
}


//
//  bool cv::CascadeClassifier::load(String filename)
//
- (BOOL)load:(NSString*)filename {
    bool retVal = self.nativePtr->load(cv::String(filename.UTF8String));
    return retVal;
}


//
//  bool cv::CascadeClassifier::read(FileNode node)
//

//
//  void cv::CascadeClassifier::detectMultiScale(Mat image, vector_Rect& objects, double scaleFactor = 1.1, int minNeighbors = 3, int flags = 0, Size minSize = Size(), Size maxSize = Size())
//
- (void)detectMultiScale:(Mat*)image objects:(NSMutableArray<Rect2i*>*)objects scaleFactor:(double)scaleFactor minNeighbors:(int)minNeighbors flags:(int)flags minSize:(Size2i*)minSize maxSize:(Size2i*)maxSize {
    OBJC2CV(cv::Rect2i, Rect2i, objectsVector, objects);
    self.nativePtr->detectMultiScale(image.nativeRef, objectsVector, scaleFactor, minNeighbors, flags, minSize.nativeRef, maxSize.nativeRef);
    CV2OBJC(cv::Rect2i, Rect2i, objectsVector, objects);
}

- (void)detectMultiScale:(Mat*)image objects:(NSMutableArray<Rect2i*>*)objects scaleFactor:(double)scaleFactor minNeighbors:(int)minNeighbors flags:(int)flags minSize:(Size2i*)minSize {
    OBJC2CV(cv::Rect2i, Rect2i, objectsVector, objects);
    self.nativePtr->detectMultiScale(image.nativeRef, objectsVector, scaleFactor, minNeighbors, flags, minSize.nativeRef);
    CV2OBJC(cv::Rect2i, Rect2i, objectsVector, objects);
}

- (void)detectMultiScale:(Mat*)image objects:(NSMutableArray<Rect2i*>*)objects scaleFactor:(double)scaleFactor minNeighbors:(int)minNeighbors flags:(int)flags {
    OBJC2CV(cv::Rect2i, Rect2i, objectsVector, objects);
    self.nativePtr->detectMultiScale(image.nativeRef, objectsVector, scaleFactor, minNeighbors, flags);
    CV2OBJC(cv::Rect2i, Rect2i, objectsVector, objects);
}

- (void)detectMultiScale:(Mat*)image objects:(NSMutableArray<Rect2i*>*)objects scaleFactor:(double)scaleFactor minNeighbors:(int)minNeighbors {
    OBJC2CV(cv::Rect2i, Rect2i, objectsVector, objects);
    self.nativePtr->detectMultiScale(image.nativeRef, objectsVector, scaleFactor, minNeighbors);
    CV2OBJC(cv::Rect2i, Rect2i, objectsVector, objects);
}

- (void)detectMultiScale:(Mat*)image objects:(NSMutableArray<Rect2i*>*)objects scaleFactor:(double)scaleFactor {
    OBJC2CV(cv::Rect2i, Rect2i, objectsVector, objects);
    self.nativePtr->detectMultiScale(image.nativeRef, objectsVector, scaleFactor);
    CV2OBJC(cv::Rect2i, Rect2i, objectsVector, objects);
}

- (void)detectMultiScale:(Mat*)image objects:(NSMutableArray<Rect2i*>*)objects {
    OBJC2CV(cv::Rect2i, Rect2i, objectsVector, objects);
    self.nativePtr->detectMultiScale(image.nativeRef, objectsVector);
    CV2OBJC(cv::Rect2i, Rect2i, objectsVector, objects);
}


//
//  void cv::CascadeClassifier::detectMultiScale(Mat image, vector_Rect& objects, vector_int& numDetections, double scaleFactor = 1.1, int minNeighbors = 3, int flags = 0, Size minSize = Size(), Size maxSize = Size())
//
- (void)detectMultiScale2:(Mat*)image objects:(NSMutableArray<Rect2i*>*)objects numDetections:(IntVector*)numDetections scaleFactor:(double)scaleFactor minNeighbors:(int)minNeighbors flags:(int)flags minSize:(Size2i*)minSize maxSize:(Size2i*)maxSize {
    OBJC2CV(cv::Rect2i, Rect2i, objectsVector, objects);
    self.nativePtr->detectMultiScale(image.nativeRef, objectsVector, numDetections.nativeRef, scaleFactor, minNeighbors, flags, minSize.nativeRef, maxSize.nativeRef);
    CV2OBJC(cv::Rect2i, Rect2i, objectsVector, objects);
}

- (void)detectMultiScale2:(Mat*)image objects:(NSMutableArray<Rect2i*>*)objects numDetections:(IntVector*)numDetections scaleFactor:(double)scaleFactor minNeighbors:(int)minNeighbors flags:(int)flags minSize:(Size2i*)minSize {
    OBJC2CV(cv::Rect2i, Rect2i, objectsVector, objects);
    self.nativePtr->detectMultiScale(image.nativeRef, objectsVector, numDetections.nativeRef, scaleFactor, minNeighbors, flags, minSize.nativeRef);
    CV2OBJC(cv::Rect2i, Rect2i, objectsVector, objects);
}

- (void)detectMultiScale2:(Mat*)image objects:(NSMutableArray<Rect2i*>*)objects numDetections:(IntVector*)numDetections scaleFactor:(double)scaleFactor minNeighbors:(int)minNeighbors flags:(int)flags {
    OBJC2CV(cv::Rect2i, Rect2i, objectsVector, objects);
    self.nativePtr->detectMultiScale(image.nativeRef, objectsVector, numDetections.nativeRef, scaleFactor, minNeighbors, flags);
    CV2OBJC(cv::Rect2i, Rect2i, objectsVector, objects);
}

- (void)detectMultiScale2:(Mat*)image objects:(NSMutableArray<Rect2i*>*)objects numDetections:(IntVector*)numDetections scaleFactor:(double)scaleFactor minNeighbors:(int)minNeighbors {
    OBJC2CV(cv::Rect2i, Rect2i, objectsVector, objects);
    self.nativePtr->detectMultiScale(image.nativeRef, objectsVector, numDetections.nativeRef, scaleFactor, minNeighbors);
    CV2OBJC(cv::Rect2i, Rect2i, objectsVector, objects);
}

- (void)detectMultiScale2:(Mat*)image objects:(NSMutableArray<Rect2i*>*)objects numDetections:(IntVector*)numDetections scaleFactor:(double)scaleFactor {
    OBJC2CV(cv::Rect2i, Rect2i, objectsVector, objects);
    self.nativePtr->detectMultiScale(image.nativeRef, objectsVector, numDetections.nativeRef, scaleFactor);
    CV2OBJC(cv::Rect2i, Rect2i, objectsVector, objects);
}

- (void)detectMultiScale2:(Mat*)image objects:(NSMutableArray<Rect2i*>*)objects numDetections:(IntVector*)numDetections {
    OBJC2CV(cv::Rect2i, Rect2i, objectsVector, objects);
    self.nativePtr->detectMultiScale(image.nativeRef, objectsVector, numDetections.nativeRef);
    CV2OBJC(cv::Rect2i, Rect2i, objectsVector, objects);
}


//
//  void cv::CascadeClassifier::detectMultiScale(Mat image, vector_Rect& objects, vector_int& rejectLevels, vector_double& levelWeights, double scaleFactor = 1.1, int minNeighbors = 3, int flags = 0, Size minSize = Size(), Size maxSize = Size(), bool outputRejectLevels = false)
//
- (void)detectMultiScale3:(Mat*)image objects:(NSMutableArray<Rect2i*>*)objects rejectLevels:(IntVector*)rejectLevels levelWeights:(DoubleVector*)levelWeights scaleFactor:(double)scaleFactor minNeighbors:(int)minNeighbors flags:(int)flags minSize:(Size2i*)minSize maxSize:(Size2i*)maxSize outputRejectLevels:(BOOL)outputRejectLevels {
    OBJC2CV(cv::Rect2i, Rect2i, objectsVector, objects);
    self.nativePtr->detectMultiScale(image.nativeRef, objectsVector, rejectLevels.nativeRef, levelWeights.nativeRef, scaleFactor, minNeighbors, flags, minSize.nativeRef, maxSize.nativeRef, (bool)outputRejectLevels);
    CV2OBJC(cv::Rect2i, Rect2i, objectsVector, objects);
}

- (void)detectMultiScale3:(Mat*)image objects:(NSMutableArray<Rect2i*>*)objects rejectLevels:(IntVector*)rejectLevels levelWeights:(DoubleVector*)levelWeights scaleFactor:(double)scaleFactor minNeighbors:(int)minNeighbors flags:(int)flags minSize:(Size2i*)minSize maxSize:(Size2i*)maxSize {
    OBJC2CV(cv::Rect2i, Rect2i, objectsVector, objects);
    self.nativePtr->detectMultiScale(image.nativeRef, objectsVector, rejectLevels.nativeRef, levelWeights.nativeRef, scaleFactor, minNeighbors, flags, minSize.nativeRef, maxSize.nativeRef);
    CV2OBJC(cv::Rect2i, Rect2i, objectsVector, objects);
}

- (void)detectMultiScale3:(Mat*)image objects:(NSMutableArray<Rect2i*>*)objects rejectLevels:(IntVector*)rejectLevels levelWeights:(DoubleVector*)levelWeights scaleFactor:(double)scaleFactor minNeighbors:(int)minNeighbors flags:(int)flags minSize:(Size2i*)minSize {
    OBJC2CV(cv::Rect2i, Rect2i, objectsVector, objects);
    self.nativePtr->detectMultiScale(image.nativeRef, objectsVector, rejectLevels.nativeRef, levelWeights.nativeRef, scaleFactor, minNeighbors, flags, minSize.nativeRef);
    CV2OBJC(cv::Rect2i, Rect2i, objectsVector, objects);
}

- (void)detectMultiScale3:(Mat*)image objects:(NSMutableArray<Rect2i*>*)objects rejectLevels:(IntVector*)rejectLevels levelWeights:(DoubleVector*)levelWeights scaleFactor:(double)scaleFactor minNeighbors:(int)minNeighbors flags:(int)flags {
    OBJC2CV(cv::Rect2i, Rect2i, objectsVector, objects);
    self.nativePtr->detectMultiScale(image.nativeRef, objectsVector, rejectLevels.nativeRef, levelWeights.nativeRef, scaleFactor, minNeighbors, flags);
    CV2OBJC(cv::Rect2i, Rect2i, objectsVector, objects);
}

- (void)detectMultiScale3:(Mat*)image objects:(NSMutableArray<Rect2i*>*)objects rejectLevels:(IntVector*)rejectLevels levelWeights:(DoubleVector*)levelWeights scaleFactor:(double)scaleFactor minNeighbors:(int)minNeighbors {
    OBJC2CV(cv::Rect2i, Rect2i, objectsVector, objects);
    self.nativePtr->detectMultiScale(image.nativeRef, objectsVector, rejectLevels.nativeRef, levelWeights.nativeRef, scaleFactor, minNeighbors);
    CV2OBJC(cv::Rect2i, Rect2i, objectsVector, objects);
}

- (void)detectMultiScale3:(Mat*)image objects:(NSMutableArray<Rect2i*>*)objects rejectLevels:(IntVector*)rejectLevels levelWeights:(DoubleVector*)levelWeights scaleFactor:(double)scaleFactor {
    OBJC2CV(cv::Rect2i, Rect2i, objectsVector, objects);
    self.nativePtr->detectMultiScale(image.nativeRef, objectsVector, rejectLevels.nativeRef, levelWeights.nativeRef, scaleFactor);
    CV2OBJC(cv::Rect2i, Rect2i, objectsVector, objects);
}

- (void)detectMultiScale3:(Mat*)image objects:(NSMutableArray<Rect2i*>*)objects rejectLevels:(IntVector*)rejectLevels levelWeights:(DoubleVector*)levelWeights {
    OBJC2CV(cv::Rect2i, Rect2i, objectsVector, objects);
    self.nativePtr->detectMultiScale(image.nativeRef, objectsVector, rejectLevels.nativeRef, levelWeights.nativeRef);
    CV2OBJC(cv::Rect2i, Rect2i, objectsVector, objects);
}


//
//  bool cv::CascadeClassifier::isOldFormatCascade()
//
- (BOOL)isOldFormatCascade {
    bool retVal = self.nativePtr->isOldFormatCascade();
    return retVal;
}


//
//  Size cv::CascadeClassifier::getOriginalWindowSize()
//
- (Size2i*)getOriginalWindowSize {
    cv::Size retVal = self.nativePtr->getOriginalWindowSize();
    return [Size2i fromNative:retVal];
}


//
//  int cv::CascadeClassifier::getFeatureType()
//
- (int)getFeatureType {
    int retVal = self.nativePtr->getFeatureType();
    return retVal;
}


//
// static bool cv::CascadeClassifier::convert(String oldcascade, String newcascade)
//
+ (BOOL)convert:(NSString*)oldcascade newcascade:(NSString*)newcascade {
    bool retVal = cv::CascadeClassifier::convert(cv::String(oldcascade.UTF8String), cv::String(newcascade.UTF8String));
    return retVal;
}



@end



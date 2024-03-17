//
// This file is auto-generated. Please don't modify it!
//

#import "MSER.h"
#import "CVObjcUtil.h"

#import "Mat.h"
#import "Point2i.h"
#import "Rect2i.h"

@implementation MSER


- (instancetype)initWithNativePtr:(cv::Ptr<cv::MSER>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrMSER = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::MSER>)nativePtr {
    return [[MSER alloc] initWithNativePtr:nativePtr];
}



//
// static Ptr_MSER cv::MSER::create(int delta = 5, int min_area = 60, int max_area = 14400, double max_variation = 0.25, double min_diversity = .2, int max_evolution = 200, double area_threshold = 1.01, double min_margin = 0.003, int edge_blur_size = 5)
//
+ (MSER*)create:(int)delta min_area:(int)min_area max_area:(int)max_area max_variation:(double)max_variation min_diversity:(double)min_diversity max_evolution:(int)max_evolution area_threshold:(double)area_threshold min_margin:(double)min_margin edge_blur_size:(int)edge_blur_size {
    cv::Ptr<cv::MSER> retVal = cv::MSER::create(delta, min_area, max_area, max_variation, min_diversity, max_evolution, area_threshold, min_margin, edge_blur_size);
    return [MSER fromNative:retVal];
}

+ (MSER*)create:(int)delta min_area:(int)min_area max_area:(int)max_area max_variation:(double)max_variation min_diversity:(double)min_diversity max_evolution:(int)max_evolution area_threshold:(double)area_threshold min_margin:(double)min_margin {
    cv::Ptr<cv::MSER> retVal = cv::MSER::create(delta, min_area, max_area, max_variation, min_diversity, max_evolution, area_threshold, min_margin);
    return [MSER fromNative:retVal];
}

+ (MSER*)create:(int)delta min_area:(int)min_area max_area:(int)max_area max_variation:(double)max_variation min_diversity:(double)min_diversity max_evolution:(int)max_evolution area_threshold:(double)area_threshold {
    cv::Ptr<cv::MSER> retVal = cv::MSER::create(delta, min_area, max_area, max_variation, min_diversity, max_evolution, area_threshold);
    return [MSER fromNative:retVal];
}

+ (MSER*)create:(int)delta min_area:(int)min_area max_area:(int)max_area max_variation:(double)max_variation min_diversity:(double)min_diversity max_evolution:(int)max_evolution {
    cv::Ptr<cv::MSER> retVal = cv::MSER::create(delta, min_area, max_area, max_variation, min_diversity, max_evolution);
    return [MSER fromNative:retVal];
}

+ (MSER*)create:(int)delta min_area:(int)min_area max_area:(int)max_area max_variation:(double)max_variation min_diversity:(double)min_diversity {
    cv::Ptr<cv::MSER> retVal = cv::MSER::create(delta, min_area, max_area, max_variation, min_diversity);
    return [MSER fromNative:retVal];
}

+ (MSER*)create:(int)delta min_area:(int)min_area max_area:(int)max_area max_variation:(double)max_variation {
    cv::Ptr<cv::MSER> retVal = cv::MSER::create(delta, min_area, max_area, max_variation);
    return [MSER fromNative:retVal];
}

+ (MSER*)create:(int)delta min_area:(int)min_area max_area:(int)max_area {
    cv::Ptr<cv::MSER> retVal = cv::MSER::create(delta, min_area, max_area);
    return [MSER fromNative:retVal];
}

+ (MSER*)create:(int)delta min_area:(int)min_area {
    cv::Ptr<cv::MSER> retVal = cv::MSER::create(delta, min_area);
    return [MSER fromNative:retVal];
}

+ (MSER*)create:(int)delta {
    cv::Ptr<cv::MSER> retVal = cv::MSER::create(delta);
    return [MSER fromNative:retVal];
}

+ (MSER*)create {
    cv::Ptr<cv::MSER> retVal = cv::MSER::create();
    return [MSER fromNative:retVal];
}


//
//  void cv::MSER::detectRegions(Mat image, vector_vector_Point& msers, vector_Rect& bboxes)
//
- (void)detectRegions:(Mat*)image msers:(NSMutableArray<NSMutableArray<Point2i*>*>*)msers bboxes:(NSMutableArray<Rect2i*>*)bboxes {
    OBJC2CV2(cv::Point2i, Point2i, msersVector2, msers);
    OBJC2CV(cv::Rect2i, Rect2i, bboxesVector, bboxes);
    self.nativePtrMSER->detectRegions(image.nativeRef, msersVector2, bboxesVector);
    CV2OBJC2(cv::Point2i, Point2i, msersVector2, msers);
    CV2OBJC(cv::Rect2i, Rect2i, bboxesVector, bboxes);
}


//
//  void cv::MSER::setDelta(int delta)
//
- (void)setDelta:(int)delta {
    self.nativePtrMSER->setDelta(delta);
}


//
//  int cv::MSER::getDelta()
//
- (int)getDelta {
    int retVal = self.nativePtrMSER->getDelta();
    return retVal;
}


//
//  void cv::MSER::setMinArea(int minArea)
//
- (void)setMinArea:(int)minArea {
    self.nativePtrMSER->setMinArea(minArea);
}


//
//  int cv::MSER::getMinArea()
//
- (int)getMinArea {
    int retVal = self.nativePtrMSER->getMinArea();
    return retVal;
}


//
//  void cv::MSER::setMaxArea(int maxArea)
//
- (void)setMaxArea:(int)maxArea {
    self.nativePtrMSER->setMaxArea(maxArea);
}


//
//  int cv::MSER::getMaxArea()
//
- (int)getMaxArea {
    int retVal = self.nativePtrMSER->getMaxArea();
    return retVal;
}


//
//  void cv::MSER::setMaxVariation(double maxVariation)
//
- (void)setMaxVariation:(double)maxVariation {
    self.nativePtrMSER->setMaxVariation(maxVariation);
}


//
//  double cv::MSER::getMaxVariation()
//
- (double)getMaxVariation {
    double retVal = self.nativePtrMSER->getMaxVariation();
    return retVal;
}


//
//  void cv::MSER::setMinDiversity(double minDiversity)
//
- (void)setMinDiversity:(double)minDiversity {
    self.nativePtrMSER->setMinDiversity(minDiversity);
}


//
//  double cv::MSER::getMinDiversity()
//
- (double)getMinDiversity {
    double retVal = self.nativePtrMSER->getMinDiversity();
    return retVal;
}


//
//  void cv::MSER::setMaxEvolution(int maxEvolution)
//
- (void)setMaxEvolution:(int)maxEvolution {
    self.nativePtrMSER->setMaxEvolution(maxEvolution);
}


//
//  int cv::MSER::getMaxEvolution()
//
- (int)getMaxEvolution {
    int retVal = self.nativePtrMSER->getMaxEvolution();
    return retVal;
}


//
//  void cv::MSER::setAreaThreshold(double areaThreshold)
//
- (void)setAreaThreshold:(double)areaThreshold {
    self.nativePtrMSER->setAreaThreshold(areaThreshold);
}


//
//  double cv::MSER::getAreaThreshold()
//
- (double)getAreaThreshold {
    double retVal = self.nativePtrMSER->getAreaThreshold();
    return retVal;
}


//
//  void cv::MSER::setMinMargin(double min_margin)
//
- (void)setMinMargin:(double)min_margin {
    self.nativePtrMSER->setMinMargin(min_margin);
}


//
//  double cv::MSER::getMinMargin()
//
- (double)getMinMargin {
    double retVal = self.nativePtrMSER->getMinMargin();
    return retVal;
}


//
//  void cv::MSER::setEdgeBlurSize(int edge_blur_size)
//
- (void)setEdgeBlurSize:(int)edge_blur_size {
    self.nativePtrMSER->setEdgeBlurSize(edge_blur_size);
}


//
//  int cv::MSER::getEdgeBlurSize()
//
- (int)getEdgeBlurSize {
    int retVal = self.nativePtrMSER->getEdgeBlurSize();
    return retVal;
}


//
//  void cv::MSER::setPass2Only(bool f)
//
- (void)setPass2Only:(BOOL)f {
    self.nativePtrMSER->setPass2Only((bool)f);
}


//
//  bool cv::MSER::getPass2Only()
//
- (BOOL)getPass2Only {
    bool retVal = self.nativePtrMSER->getPass2Only();
    return retVal;
}


//
//  String cv::MSER::getDefaultName()
//
- (NSString*)getDefaultName {
    cv::String retVal = self.nativePtrMSER->getDefaultName();
    return [NSString stringWithUTF8String:retVal.c_str()];
}



@end



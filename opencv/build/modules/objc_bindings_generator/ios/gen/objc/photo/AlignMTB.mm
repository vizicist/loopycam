//
// This file is auto-generated. Please don't modify it!
//

#import "AlignMTB.h"
#import "CVObjcUtil.h"

#import "Mat.h"
#import "Point2i.h"

@implementation AlignMTB


- (instancetype)initWithNativePtr:(cv::Ptr<cv::AlignMTB>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrAlignMTB = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::AlignMTB>)nativePtr {
    return [[AlignMTB alloc] initWithNativePtr:nativePtr];
}



//
//  void cv::AlignMTB::process(vector_Mat src, vector_Mat dst, Mat times, Mat response)
//
- (void)process:(NSArray<Mat*>*)src dst:(NSArray<Mat*>*)dst times:(Mat*)times response:(Mat*)response {
    OBJC2CV(cv::Mat, Mat, srcVector, src);
    OBJC2CV(cv::Mat, Mat, dstVector, dst);
    self.nativePtrAlignMTB->process(srcVector, dstVector, times.nativeRef, response.nativeRef);
}


//
//  void cv::AlignMTB::process(vector_Mat src, vector_Mat dst)
//
- (void)process:(NSArray<Mat*>*)src dst:(NSArray<Mat*>*)dst {
    OBJC2CV(cv::Mat, Mat, srcVector, src);
    OBJC2CV(cv::Mat, Mat, dstVector, dst);
    self.nativePtrAlignMTB->process(srcVector, dstVector);
}


//
//  Point cv::AlignMTB::calculateShift(Mat img0, Mat img1)
//
- (Point2i*)calculateShift:(Mat*)img0 img1:(Mat*)img1 {
    cv::Point retVal = self.nativePtrAlignMTB->calculateShift(img0.nativeRef, img1.nativeRef);
    return [Point2i fromNative:retVal];
}


//
//  void cv::AlignMTB::shiftMat(Mat src, Mat& dst, Point shift)
//
- (void)shiftMat:(Mat*)src dst:(Mat*)dst shift:(Point2i*)shift {
    self.nativePtrAlignMTB->shiftMat(src.nativeRef, dst.nativeRef, shift.nativeRef);
}


//
//  void cv::AlignMTB::computeBitmaps(Mat img, Mat& tb, Mat& eb)
//
- (void)computeBitmaps:(Mat*)img tb:(Mat*)tb eb:(Mat*)eb {
    self.nativePtrAlignMTB->computeBitmaps(img.nativeRef, tb.nativeRef, eb.nativeRef);
}


//
//  int cv::AlignMTB::getMaxBits()
//
- (int)getMaxBits {
    int retVal = self.nativePtrAlignMTB->getMaxBits();
    return retVal;
}


//
//  void cv::AlignMTB::setMaxBits(int max_bits)
//
- (void)setMaxBits:(int)max_bits {
    self.nativePtrAlignMTB->setMaxBits(max_bits);
}


//
//  int cv::AlignMTB::getExcludeRange()
//
- (int)getExcludeRange {
    int retVal = self.nativePtrAlignMTB->getExcludeRange();
    return retVal;
}


//
//  void cv::AlignMTB::setExcludeRange(int exclude_range)
//
- (void)setExcludeRange:(int)exclude_range {
    self.nativePtrAlignMTB->setExcludeRange(exclude_range);
}


//
//  bool cv::AlignMTB::getCut()
//
- (BOOL)getCut {
    bool retVal = self.nativePtrAlignMTB->getCut();
    return retVal;
}


//
//  void cv::AlignMTB::setCut(bool value)
//
- (void)setCut:(BOOL)value {
    self.nativePtrAlignMTB->setCut((bool)value);
}



@end



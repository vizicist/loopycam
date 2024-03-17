//
// This file is auto-generated. Please don't modify it!
//

#import "LineSegmentDetector.h"
#import "CVObjcUtil.h"

#import "Mat.h"
#import "Size2i.h"

@implementation LineSegmentDetector


- (instancetype)initWithNativePtr:(cv::Ptr<cv::LineSegmentDetector>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrLineSegmentDetector = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::LineSegmentDetector>)nativePtr {
    return [[LineSegmentDetector alloc] initWithNativePtr:nativePtr];
}



//
//  void cv::LineSegmentDetector::detect(Mat image, Mat& lines, Mat& width = Mat(), Mat& prec = Mat(), Mat& nfa = Mat())
//
- (void)detect:(Mat*)image lines:(Mat*)lines width:(Mat*)width prec:(Mat*)prec nfa:(Mat*)nfa {
    self.nativePtrLineSegmentDetector->detect(image.nativeRef, lines.nativeRef, width.nativeRef, prec.nativeRef, nfa.nativeRef);
}

- (void)detect:(Mat*)image lines:(Mat*)lines width:(Mat*)width prec:(Mat*)prec {
    self.nativePtrLineSegmentDetector->detect(image.nativeRef, lines.nativeRef, width.nativeRef, prec.nativeRef);
}

- (void)detect:(Mat*)image lines:(Mat*)lines width:(Mat*)width {
    self.nativePtrLineSegmentDetector->detect(image.nativeRef, lines.nativeRef, width.nativeRef);
}

- (void)detect:(Mat*)image lines:(Mat*)lines {
    self.nativePtrLineSegmentDetector->detect(image.nativeRef, lines.nativeRef);
}


//
//  void cv::LineSegmentDetector::drawSegments(Mat& image, Mat lines)
//
- (void)drawSegments:(Mat*)image lines:(Mat*)lines {
    self.nativePtrLineSegmentDetector->drawSegments(image.nativeRef, lines.nativeRef);
}


//
//  int cv::LineSegmentDetector::compareSegments(Size size, Mat lines1, Mat lines2, Mat& image = Mat())
//
- (int)compareSegments:(Size2i*)size lines1:(Mat*)lines1 lines2:(Mat*)lines2 image:(Mat*)image {
    int retVal = self.nativePtrLineSegmentDetector->compareSegments(size.nativeRef, lines1.nativeRef, lines2.nativeRef, image.nativeRef);
    return retVal;
}

- (int)compareSegments:(Size2i*)size lines1:(Mat*)lines1 lines2:(Mat*)lines2 {
    int retVal = self.nativePtrLineSegmentDetector->compareSegments(size.nativeRef, lines1.nativeRef, lines2.nativeRef);
    return retVal;
}



@end



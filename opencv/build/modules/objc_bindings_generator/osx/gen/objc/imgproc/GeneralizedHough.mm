//
// This file is auto-generated. Please don't modify it!
//

#import "GeneralizedHough.h"
#import "CVObjcUtil.h"

#import "Mat.h"
#import "Point2i.h"

@implementation GeneralizedHough


- (instancetype)initWithNativePtr:(cv::Ptr<cv::GeneralizedHough>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrGeneralizedHough = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::GeneralizedHough>)nativePtr {
    return [[GeneralizedHough alloc] initWithNativePtr:nativePtr];
}



//
//  void cv::GeneralizedHough::setTemplate(Mat templ, Point templCenter = Point(-1, -1))
//
- (void)setTemplate:(Mat*)templ templCenter:(Point2i*)templCenter {
    self.nativePtrGeneralizedHough->setTemplate(templ.nativeRef, templCenter.nativeRef);
}

- (void)setTemplate:(Mat*)templ {
    self.nativePtrGeneralizedHough->setTemplate(templ.nativeRef);
}


//
//  void cv::GeneralizedHough::setTemplate(Mat edges, Mat dx, Mat dy, Point templCenter = Point(-1, -1))
//
- (void)setTemplate:(Mat*)edges dx:(Mat*)dx dy:(Mat*)dy templCenter:(Point2i*)templCenter {
    self.nativePtrGeneralizedHough->setTemplate(edges.nativeRef, dx.nativeRef, dy.nativeRef, templCenter.nativeRef);
}

- (void)setTemplate:(Mat*)edges dx:(Mat*)dx dy:(Mat*)dy {
    self.nativePtrGeneralizedHough->setTemplate(edges.nativeRef, dx.nativeRef, dy.nativeRef);
}


//
//  void cv::GeneralizedHough::detect(Mat image, Mat& positions, Mat& votes = Mat())
//
- (void)detect:(Mat*)image positions:(Mat*)positions votes:(Mat*)votes {
    self.nativePtrGeneralizedHough->detect(image.nativeRef, positions.nativeRef, votes.nativeRef);
}

- (void)detect:(Mat*)image positions:(Mat*)positions {
    self.nativePtrGeneralizedHough->detect(image.nativeRef, positions.nativeRef);
}


//
//  void cv::GeneralizedHough::detect(Mat edges, Mat dx, Mat dy, Mat& positions, Mat& votes = Mat())
//
- (void)detect:(Mat*)edges dx:(Mat*)dx dy:(Mat*)dy positions:(Mat*)positions votes:(Mat*)votes {
    self.nativePtrGeneralizedHough->detect(edges.nativeRef, dx.nativeRef, dy.nativeRef, positions.nativeRef, votes.nativeRef);
}

- (void)detect:(Mat*)edges dx:(Mat*)dx dy:(Mat*)dy positions:(Mat*)positions {
    self.nativePtrGeneralizedHough->detect(edges.nativeRef, dx.nativeRef, dy.nativeRef, positions.nativeRef);
}


//
//  void cv::GeneralizedHough::setCannyLowThresh(int cannyLowThresh)
//
- (void)setCannyLowThresh:(int)cannyLowThresh {
    self.nativePtrGeneralizedHough->setCannyLowThresh(cannyLowThresh);
}


//
//  int cv::GeneralizedHough::getCannyLowThresh()
//
- (int)getCannyLowThresh {
    int retVal = self.nativePtrGeneralizedHough->getCannyLowThresh();
    return retVal;
}


//
//  void cv::GeneralizedHough::setCannyHighThresh(int cannyHighThresh)
//
- (void)setCannyHighThresh:(int)cannyHighThresh {
    self.nativePtrGeneralizedHough->setCannyHighThresh(cannyHighThresh);
}


//
//  int cv::GeneralizedHough::getCannyHighThresh()
//
- (int)getCannyHighThresh {
    int retVal = self.nativePtrGeneralizedHough->getCannyHighThresh();
    return retVal;
}


//
//  void cv::GeneralizedHough::setMinDist(double minDist)
//
- (void)setMinDist:(double)minDist {
    self.nativePtrGeneralizedHough->setMinDist(minDist);
}


//
//  double cv::GeneralizedHough::getMinDist()
//
- (double)getMinDist {
    double retVal = self.nativePtrGeneralizedHough->getMinDist();
    return retVal;
}


//
//  void cv::GeneralizedHough::setDp(double dp)
//
- (void)setDp:(double)dp {
    self.nativePtrGeneralizedHough->setDp(dp);
}


//
//  double cv::GeneralizedHough::getDp()
//
- (double)getDp {
    double retVal = self.nativePtrGeneralizedHough->getDp();
    return retVal;
}


//
//  void cv::GeneralizedHough::setMaxBufferSize(int maxBufferSize)
//
- (void)setMaxBufferSize:(int)maxBufferSize {
    self.nativePtrGeneralizedHough->setMaxBufferSize(maxBufferSize);
}


//
//  int cv::GeneralizedHough::getMaxBufferSize()
//
- (int)getMaxBufferSize {
    int retVal = self.nativePtrGeneralizedHough->getMaxBufferSize();
    return retVal;
}



@end



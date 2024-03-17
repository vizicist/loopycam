//
// This file is auto-generated. Please don't modify it!
//

#import "TickMeter.h"
#import "CVObjcUtil.h"



@implementation TickMeter


- (instancetype)initWithNativePtr:(cv::Ptr<cv::TickMeter>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::TickMeter>)nativePtr {
    return [[TickMeter alloc] initWithNativePtr:nativePtr];
}



//
//   cv::TickMeter::TickMeter()
//
- (instancetype)init {
    return [self initWithNativePtr:cv::Ptr<cv::TickMeter>(new cv::TickMeter())];
}


//
//  void cv::TickMeter::start()
//
- (void)start {
    self.nativePtr->start();
}


//
//  void cv::TickMeter::stop()
//
- (void)stop {
    self.nativePtr->stop();
}


//
//  int64 cv::TickMeter::getTimeTicks()
//
- (long)getTimeTicks {
    int64 retVal = self.nativePtr->getTimeTicks();
    return retVal;
}


//
//  double cv::TickMeter::getTimeMicro()
//
- (double)getTimeMicro {
    double retVal = self.nativePtr->getTimeMicro();
    return retVal;
}


//
//  double cv::TickMeter::getTimeMilli()
//
- (double)getTimeMilli {
    double retVal = self.nativePtr->getTimeMilli();
    return retVal;
}


//
//  double cv::TickMeter::getTimeSec()
//
- (double)getTimeSec {
    double retVal = self.nativePtr->getTimeSec();
    return retVal;
}


//
//  int64 cv::TickMeter::getCounter()
//
- (long)getCounter {
    int64 retVal = self.nativePtr->getCounter();
    return retVal;
}


//
//  double cv::TickMeter::getFPS()
//
- (double)getFPS {
    double retVal = self.nativePtr->getFPS();
    return retVal;
}


//
//  double cv::TickMeter::getAvgTimeSec()
//
- (double)getAvgTimeSec {
    double retVal = self.nativePtr->getAvgTimeSec();
    return retVal;
}


//
//  double cv::TickMeter::getAvgTimeMilli()
//
- (double)getAvgTimeMilli {
    double retVal = self.nativePtr->getAvgTimeMilli();
    return retVal;
}


//
//  void cv::TickMeter::reset()
//
- (void)reset {
    self.nativePtr->reset();
}



@end



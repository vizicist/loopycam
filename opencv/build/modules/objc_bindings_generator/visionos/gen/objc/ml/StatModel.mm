//
// This file is auto-generated. Please don't modify it!
//

#import "StatModel.h"
#import "CVObjcUtil.h"

#import "Mat.h"
#import "TrainData.h"

@implementation StatModel


- (instancetype)initWithNativePtr:(cv::Ptr<cv::ml::StatModel>)nativePtr {
    self = [super initWithNativePtr:nativePtr];
    if (self) {
        _nativePtrStatModel = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::ml::StatModel>)nativePtr {
    return [[StatModel alloc] initWithNativePtr:nativePtr];
}



//
//  int cv::ml::StatModel::getVarCount()
//
- (int)getVarCount {
    int retVal = self.nativePtrStatModel->getVarCount();
    return retVal;
}


//
//  bool cv::ml::StatModel::empty()
//
- (BOOL)empty {
    bool retVal = self.nativePtrStatModel->empty();
    return retVal;
}


//
//  bool cv::ml::StatModel::isTrained()
//
- (BOOL)isTrained {
    bool retVal = self.nativePtrStatModel->isTrained();
    return retVal;
}


//
//  bool cv::ml::StatModel::isClassifier()
//
- (BOOL)isClassifier {
    bool retVal = self.nativePtrStatModel->isClassifier();
    return retVal;
}


//
//  bool cv::ml::StatModel::train(Ptr_TrainData trainData, int flags = 0)
//
- (BOOL)train:(TrainData*)trainData flags:(int)flags {
    bool retVal = self.nativePtrStatModel->train(trainData.nativePtr, flags);
    return retVal;
}

- (BOOL)train:(TrainData*)trainData {
    bool retVal = self.nativePtrStatModel->train(trainData.nativePtr);
    return retVal;
}


//
//  bool cv::ml::StatModel::train(Mat samples, int layout, Mat responses)
//
- (BOOL)train:(Mat*)samples layout:(int)layout responses:(Mat*)responses {
    bool retVal = self.nativePtrStatModel->train(samples.nativeRef, layout, responses.nativeRef);
    return retVal;
}


//
//  float cv::ml::StatModel::calcError(Ptr_TrainData data, bool test, Mat& resp)
//
- (float)calcError:(TrainData*)data test:(BOOL)test resp:(Mat*)resp {
    float retVal = self.nativePtrStatModel->calcError(data.nativePtr, (bool)test, resp.nativeRef);
    return retVal;
}


//
//  float cv::ml::StatModel::predict(Mat samples, Mat& results = Mat(), int flags = 0)
//
- (float)predict:(Mat*)samples results:(Mat*)results flags:(int)flags {
    float retVal = self.nativePtrStatModel->predict(samples.nativeRef, results.nativeRef, flags);
    return retVal;
}

- (float)predict:(Mat*)samples results:(Mat*)results {
    float retVal = self.nativePtrStatModel->predict(samples.nativeRef, results.nativeRef);
    return retVal;
}

- (float)predict:(Mat*)samples {
    float retVal = self.nativePtrStatModel->predict(samples.nativeRef);
    return retVal;
}



@end



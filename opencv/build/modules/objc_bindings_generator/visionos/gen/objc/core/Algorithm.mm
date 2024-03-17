//
// This file is auto-generated. Please don't modify it!
//

#import "Algorithm.h"
#import "CVObjcUtil.h"



@implementation Algorithm


- (instancetype)initWithNativePtr:(cv::Ptr<cv::Algorithm>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::Algorithm>)nativePtr {
    return [[Algorithm alloc] initWithNativePtr:nativePtr];
}



//
//  void cv::Algorithm::clear()
//
- (void)clear {
    self.nativePtr->clear();
}


//
//  void cv::Algorithm::write(FileStorage fs)
//

//
//  void cv::Algorithm::write(FileStorage fs, String name)
//

//
//  void cv::Algorithm::read(FileNode fn)
//

//
//  bool cv::Algorithm::empty()
//
- (BOOL)empty {
    bool retVal = self.nativePtr->empty();
    return retVal;
}


//
//  void cv::Algorithm::save(String filename)
//
- (void)save:(NSString*)filename {
    self.nativePtr->save(cv::String(filename.UTF8String));
}


//
//  String cv::Algorithm::getDefaultName()
//
- (NSString*)getDefaultName {
    cv::String retVal = self.nativePtr->getDefaultName();
    return [NSString stringWithUTF8String:retVal.c_str()];
}



@end



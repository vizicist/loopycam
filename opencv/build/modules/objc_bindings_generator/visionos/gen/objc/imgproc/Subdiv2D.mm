//
// This file is auto-generated. Please don't modify it!
//

#import "Subdiv2D.h"
#import "CVObjcUtil.h"

#import "Float4.h"
#import "Float6.h"
#import "IntVector.h"
#import "Point2f.h"
#import "Rect2i.h"

@implementation Subdiv2D


- (instancetype)initWithNativePtr:(cv::Ptr<cv::Subdiv2D>)nativePtr {
    self = [super init];
    if (self) {
        _nativePtr = nativePtr;
    }
    return self;
}

+ (instancetype)fromNative:(cv::Ptr<cv::Subdiv2D>)nativePtr {
    return [[Subdiv2D alloc] initWithNativePtr:nativePtr];
}


+ (int)PTLOC_ERROR {
    return -2;
}

+ (int)PTLOC_OUTSIDE_RECT {
    return -1;
}

+ (int)PTLOC_INSIDE {
    return 0;
}

+ (int)PTLOC_VERTEX {
    return 1;
}

+ (int)PTLOC_ON_EDGE {
    return 2;
}

+ (int)NEXT_AROUND_ORG {
    return 0x00;
}

+ (int)NEXT_AROUND_DST {
    return 0x22;
}

+ (int)PREV_AROUND_ORG {
    return 0x11;
}

+ (int)PREV_AROUND_DST {
    return 0x33;
}

+ (int)NEXT_AROUND_LEFT {
    return 0x13;
}

+ (int)NEXT_AROUND_RIGHT {
    return 0x31;
}

+ (int)PREV_AROUND_LEFT {
    return 0x20;
}

+ (int)PREV_AROUND_RIGHT {
    return 0x02;
}


//
//   cv::Subdiv2D::Subdiv2D()
//
- (instancetype)init {
    return [self initWithNativePtr:cv::Ptr<cv::Subdiv2D>(new cv::Subdiv2D())];
}


//
//   cv::Subdiv2D::Subdiv2D(Rect rect)
//
- (instancetype)initWithRect:(Rect2i*)rect {
    return [self initWithNativePtr:cv::Ptr<cv::Subdiv2D>(new cv::Subdiv2D(rect.nativeRef))];
}


//
//  void cv::Subdiv2D::initDelaunay(Rect rect)
//
- (void)initDelaunay:(Rect2i*)rect {
    self.nativePtr->initDelaunay(rect.nativeRef);
}


//
//  int cv::Subdiv2D::insert(Point2f pt)
//
- (int)insert:(Point2f*)pt {
    int retVal = self.nativePtr->insert(pt.nativeRef);
    return retVal;
}


//
//  void cv::Subdiv2D::insert(vector_Point2f ptvec)
//
- (void)insertVector:(NSArray<Point2f*>*)ptvec {
    OBJC2CV(cv::Point2f, Point2f, ptvecVector, ptvec);
    self.nativePtr->insert(ptvecVector);
}


//
//  int cv::Subdiv2D::locate(Point2f pt, int& edge, int& vertex)
//
- (int)locate:(Point2f*)pt edge:(int*)edge vertex:(int*)vertex {
    int retVal = self.nativePtr->locate(pt.nativeRef, *(int*)(edge), *(int*)(vertex));
    return retVal;
}


//
//  int cv::Subdiv2D::findNearest(Point2f pt, Point2f* nearestPt = 0)
//
- (int)findNearest:(Point2f*)pt nearestPt:(Point2f*)nearestPt {
    int retVal = self.nativePtr->findNearest(pt.nativeRef, &(nearestPt.nativeRef));
    return retVal;
}

- (int)findNearest:(Point2f*)pt {
    int retVal = self.nativePtr->findNearest(pt.nativeRef);
    return retVal;
}


//
//  void cv::Subdiv2D::getEdgeList(vector_Vec4f& edgeList)
//
- (void)getEdgeList:(NSMutableArray<Float4*>*)edgeList {
    OBJC2CV(cv::Vec4f, Float4, edgeListVector, edgeList);
    self.nativePtr->getEdgeList(edgeListVector);
    CV2OBJC(cv::Vec4f, Float4, edgeListVector, edgeList);
}


//
//  void cv::Subdiv2D::getLeadingEdgeList(vector_int& leadingEdgeList)
//
- (void)getLeadingEdgeList:(IntVector*)leadingEdgeList {
    self.nativePtr->getLeadingEdgeList(leadingEdgeList.nativeRef);
}


//
//  void cv::Subdiv2D::getTriangleList(vector_Vec6f& triangleList)
//
- (void)getTriangleList:(NSMutableArray<Float6*>*)triangleList {
    OBJC2CV(cv::Vec6f, Float6, triangleListVector, triangleList);
    self.nativePtr->getTriangleList(triangleListVector);
    CV2OBJC(cv::Vec6f, Float6, triangleListVector, triangleList);
}


//
//  void cv::Subdiv2D::getVoronoiFacetList(vector_int idx, vector_vector_Point2f& facetList, vector_Point2f& facetCenters)
//
- (void)getVoronoiFacetList:(IntVector*)idx facetList:(NSMutableArray<NSMutableArray<Point2f*>*>*)facetList facetCenters:(NSMutableArray<Point2f*>*)facetCenters {
    OBJC2CV2(cv::Point2f, Point2f, facetListVector2, facetList);
    OBJC2CV(cv::Point2f, Point2f, facetCentersVector, facetCenters);
    self.nativePtr->getVoronoiFacetList(idx.nativeRef, facetListVector2, facetCentersVector);
    CV2OBJC2(cv::Point2f, Point2f, facetListVector2, facetList);
    CV2OBJC(cv::Point2f, Point2f, facetCentersVector, facetCenters);
}


//
//  Point2f cv::Subdiv2D::getVertex(int vertex, int* firstEdge = 0)
//
- (Point2f*)getVertex:(int)vertex firstEdge:(int*)firstEdge {
    cv::Point2f retVal = self.nativePtr->getVertex(vertex, firstEdge);
    return [Point2f fromNative:retVal];
}

- (Point2f*)getVertex:(int)vertex {
    cv::Point2f retVal = self.nativePtr->getVertex(vertex);
    return [Point2f fromNative:retVal];
}


//
//  int cv::Subdiv2D::getEdge(int edge, int nextEdgeType)
//
- (int)getEdge:(int)edge nextEdgeType:(int)nextEdgeType {
    int retVal = self.nativePtr->getEdge(edge, nextEdgeType);
    return retVal;
}


//
//  int cv::Subdiv2D::nextEdge(int edge)
//
- (int)nextEdge:(int)edge {
    int retVal = self.nativePtr->nextEdge(edge);
    return retVal;
}


//
//  int cv::Subdiv2D::rotateEdge(int edge, int rotate)
//
- (int)rotateEdge:(int)edge rotate:(int)rotate {
    int retVal = self.nativePtr->rotateEdge(edge, rotate);
    return retVal;
}


//
//  int cv::Subdiv2D::symEdge(int edge)
//
- (int)symEdge:(int)edge {
    int retVal = self.nativePtr->symEdge(edge);
    return retVal;
}


//
//  int cv::Subdiv2D::edgeOrg(int edge, Point2f* orgpt = 0)
//
- (int)edgeOrg:(int)edge orgpt:(Point2f*)orgpt {
    int retVal = self.nativePtr->edgeOrg(edge, &(orgpt.nativeRef));
    return retVal;
}

- (int)edgeOrg:(int)edge {
    int retVal = self.nativePtr->edgeOrg(edge);
    return retVal;
}


//
//  int cv::Subdiv2D::edgeDst(int edge, Point2f* dstpt = 0)
//
- (int)edgeDst:(int)edge dstpt:(Point2f*)dstpt {
    int retVal = self.nativePtr->edgeDst(edge, &(dstpt.nativeRef));
    return retVal;
}

- (int)edgeDst:(int)edge {
    int retVal = self.nativePtr->edgeDst(edge);
    return retVal;
}



@end



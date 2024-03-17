public extension Imgproc {
    @nonobjc class func goodFeaturesToTrack(image: Mat, corners: inout [Point2i], maxCorners: Int32, qualityLevel: Double, minDistance: Double, mask: Mat, blockSize: Int32, useHarrisDetector: Bool, k: Double) -> Void {
        let cornersArray = NSMutableArray(array: corners)
        Imgproc.goodFeaturesToTrack(image: image, corners: cornersArray, maxCorners: maxCorners, qualityLevel: qualityLevel, minDistance: minDistance, mask: mask, blockSize: blockSize, useHarrisDetector: useHarrisDetector, k: k)
        corners.removeAll()
        corners.append(contentsOf: cornersArray as! [Point2i])
    }
}

public extension Imgproc {
    @nonobjc class func goodFeaturesToTrack(image: Mat, corners: inout [Point2i], maxCorners: Int32, qualityLevel: Double, minDistance: Double, mask: Mat, blockSize: Int32, useHarrisDetector: Bool) -> Void {
        let cornersArray = NSMutableArray(array: corners)
        Imgproc.goodFeaturesToTrack(image: image, corners: cornersArray, maxCorners: maxCorners, qualityLevel: qualityLevel, minDistance: minDistance, mask: mask, blockSize: blockSize, useHarrisDetector: useHarrisDetector)
        corners.removeAll()
        corners.append(contentsOf: cornersArray as! [Point2i])
    }
}

public extension Imgproc {
    @nonobjc class func goodFeaturesToTrack(image: Mat, corners: inout [Point2i], maxCorners: Int32, qualityLevel: Double, minDistance: Double, mask: Mat, blockSize: Int32) -> Void {
        let cornersArray = NSMutableArray(array: corners)
        Imgproc.goodFeaturesToTrack(image: image, corners: cornersArray, maxCorners: maxCorners, qualityLevel: qualityLevel, minDistance: minDistance, mask: mask, blockSize: blockSize)
        corners.removeAll()
        corners.append(contentsOf: cornersArray as! [Point2i])
    }
}

public extension Imgproc {
    @nonobjc class func goodFeaturesToTrack(image: Mat, corners: inout [Point2i], maxCorners: Int32, qualityLevel: Double, minDistance: Double, mask: Mat) -> Void {
        let cornersArray = NSMutableArray(array: corners)
        Imgproc.goodFeaturesToTrack(image: image, corners: cornersArray, maxCorners: maxCorners, qualityLevel: qualityLevel, minDistance: minDistance, mask: mask)
        corners.removeAll()
        corners.append(contentsOf: cornersArray as! [Point2i])
    }
}

public extension Imgproc {
    @nonobjc class func goodFeaturesToTrack(image: Mat, corners: inout [Point2i], maxCorners: Int32, qualityLevel: Double, minDistance: Double) -> Void {
        let cornersArray = NSMutableArray(array: corners)
        Imgproc.goodFeaturesToTrack(image: image, corners: cornersArray, maxCorners: maxCorners, qualityLevel: qualityLevel, minDistance: minDistance)
        corners.removeAll()
        corners.append(contentsOf: cornersArray as! [Point2i])
    }
}

public extension Imgproc {
    @nonobjc class func goodFeaturesToTrack(image: Mat, corners: inout [Point2i], maxCorners: Int32, qualityLevel: Double, minDistance: Double, mask: Mat, blockSize: Int32, gradientSize: Int32, useHarrisDetector: Bool, k: Double) -> Void {
        let cornersArray = NSMutableArray(array: corners)
        Imgproc.goodFeaturesToTrack(image: image, corners: cornersArray, maxCorners: maxCorners, qualityLevel: qualityLevel, minDistance: minDistance, mask: mask, blockSize: blockSize, gradientSize: gradientSize, useHarrisDetector: useHarrisDetector, k: k)
        corners.removeAll()
        corners.append(contentsOf: cornersArray as! [Point2i])
    }
}

public extension Imgproc {
    @nonobjc class func goodFeaturesToTrack(image: Mat, corners: inout [Point2i], maxCorners: Int32, qualityLevel: Double, minDistance: Double, mask: Mat, blockSize: Int32, gradientSize: Int32, useHarrisDetector: Bool) -> Void {
        let cornersArray = NSMutableArray(array: corners)
        Imgproc.goodFeaturesToTrack(image: image, corners: cornersArray, maxCorners: maxCorners, qualityLevel: qualityLevel, minDistance: minDistance, mask: mask, blockSize: blockSize, gradientSize: gradientSize, useHarrisDetector: useHarrisDetector)
        corners.removeAll()
        corners.append(contentsOf: cornersArray as! [Point2i])
    }
}

public extension Imgproc {
    @nonobjc class func goodFeaturesToTrack(image: Mat, corners: inout [Point2i], maxCorners: Int32, qualityLevel: Double, minDistance: Double, mask: Mat, blockSize: Int32, gradientSize: Int32) -> Void {
        let cornersArray = NSMutableArray(array: corners)
        Imgproc.goodFeaturesToTrack(image: image, corners: cornersArray, maxCorners: maxCorners, qualityLevel: qualityLevel, minDistance: minDistance, mask: mask, blockSize: blockSize, gradientSize: gradientSize)
        corners.removeAll()
        corners.append(contentsOf: cornersArray as! [Point2i])
    }
}

public extension Imgproc {
    @nonobjc class func calcHist(images: [Mat], channels: [Int32], mask: Mat, hist: Mat, histSize: [Int32], ranges: [Float], accumulate: Bool) -> Void {
        let channelsVector = IntVector(channels)
        let histSizeVector = IntVector(histSize)
        let rangesVector = FloatVector(ranges)
        Imgproc.calcHist(images: images, channels: channelsVector, mask: mask, hist: hist, histSize: histSizeVector, ranges: rangesVector, accumulate: accumulate)
    }
}

public extension Imgproc {
    @nonobjc class func calcHist(images: [Mat], channels: [Int32], mask: Mat, hist: Mat, histSize: [Int32], ranges: [Float]) -> Void {
        let channelsVector = IntVector(channels)
        let histSizeVector = IntVector(histSize)
        let rangesVector = FloatVector(ranges)
        Imgproc.calcHist(images: images, channels: channelsVector, mask: mask, hist: hist, histSize: histSizeVector, ranges: rangesVector)
    }
}

public extension Imgproc {
    @nonobjc class func calcBackProject(images: [Mat], channels: [Int32], hist: Mat, dst: Mat, ranges: [Float], scale: Double) -> Void {
        let channelsVector = IntVector(channels)
        let rangesVector = FloatVector(ranges)
        Imgproc.calcBackProject(images: images, channels: channelsVector, hist: hist, dst: dst, ranges: rangesVector, scale: scale)
    }
}

public extension Imgproc {
    @nonobjc class func findContours(image: Mat, contours: inout [[Point2i]], hierarchy: Mat, mode: RetrievalModes, method: ContourApproximationModes, offset: Point2i) -> Void {
        let contoursArray = NSMutableArray(array: contours)
        Imgproc.findContours(image: image, contours: contoursArray, hierarchy: hierarchy, mode: mode, method: method, offset: offset)
        contours.removeAll()
        contours.append(contentsOf: contoursArray as! [[Point2i]])
    }
}

public extension Imgproc {
    @nonobjc class func findContours(image: Mat, contours: inout [[Point2i]], hierarchy: Mat, mode: RetrievalModes, method: ContourApproximationModes) -> Void {
        let contoursArray = NSMutableArray(array: contours)
        Imgproc.findContours(image: image, contours: contoursArray, hierarchy: hierarchy, mode: mode, method: method)
        contours.removeAll()
        contours.append(contentsOf: contoursArray as! [[Point2i]])
    }
}

public extension Imgproc {
    @nonobjc class func approxPolyDP(curve: [Point2f], approxCurve: inout [Point2f], epsilon: Double, closed: Bool) -> Void {
        let approxCurveArray = NSMutableArray(array: approxCurve)
        Imgproc.approxPolyDP(curve: curve, approxCurve: approxCurveArray, epsilon: epsilon, closed: closed)
        approxCurve.removeAll()
        approxCurve.append(contentsOf: approxCurveArray as! [Point2f])
    }
}

public extension Imgproc {
    @nonobjc class func convexHull(points: [Point2i], hull: inout [Int32], clockwise: Bool) -> Void {
        let hullVector = IntVector(hull)
        Imgproc.convexHull(points: points, hull: hullVector, clockwise: clockwise)
        hull.removeAll()
        hull.append(contentsOf: hullVector.array)
    }
}

public extension Imgproc {
    @nonobjc class func convexHull(points: [Point2i], hull: inout [Int32]) -> Void {
        let hullVector = IntVector(hull)
        Imgproc.convexHull(points: points, hull: hullVector)
        hull.removeAll()
        hull.append(contentsOf: hullVector.array)
    }
}

public extension Imgproc {
    @nonobjc class func convexityDefects(contour: [Point2i], convexhull: [Int32], convexityDefects: inout [Int4]) -> Void {
        let convexhullVector = IntVector(convexhull)
        let convexityDefectsArray = NSMutableArray(array: convexityDefects)
        Imgproc.convexityDefects(contour: contour, convexhull: convexhullVector, convexityDefects: convexityDefectsArray)
        convexityDefects.removeAll()
        convexityDefects.append(contentsOf: convexityDefectsArray as! [Int4])
    }
}

public extension Imgproc {
    @nonobjc class func ellipse2Poly(center: Point2i, axes: Size2i, angle: Int32, arcStart: Int32, arcEnd: Int32, delta: Int32, pts: inout [Point2i]) -> Void {
        let ptsArray = NSMutableArray(array: pts)
        Imgproc.ellipse2Poly(center: center, axes: axes, angle: angle, arcStart: arcStart, arcEnd: arcEnd, delta: delta, pts: ptsArray)
        pts.removeAll()
        pts.append(contentsOf: ptsArray as! [Point2i])
    }
}

public extension Subdiv2D {
    @nonobjc func getEdgeList(edgeList: inout [Float4]) -> Void {
        let edgeListArray = NSMutableArray(array: edgeList)
        getEdgeList(edgeList: edgeListArray)
        edgeList.removeAll()
        edgeList.append(contentsOf: edgeListArray as! [Float4])
    }
}

public extension Subdiv2D {
    @nonobjc func getLeadingEdgeList(leadingEdgeList: inout [Int32]) -> Void {
        let leadingEdgeListVector = IntVector(leadingEdgeList)
        getLeadingEdgeList(leadingEdgeList: leadingEdgeListVector)
        leadingEdgeList.removeAll()
        leadingEdgeList.append(contentsOf: leadingEdgeListVector.array)
    }
}

public extension Subdiv2D {
    @nonobjc func getTriangleList(triangleList: inout [Float6]) -> Void {
        let triangleListArray = NSMutableArray(array: triangleList)
        getTriangleList(triangleList: triangleListArray)
        triangleList.removeAll()
        triangleList.append(contentsOf: triangleListArray as! [Float6])
    }
}

public extension Subdiv2D {
    @nonobjc func getVoronoiFacetList(idx: [Int32], facetList: inout [[Point2f]], facetCenters: inout [Point2f]) -> Void {
        let idxVector = IntVector(idx)
        let facetListArray = NSMutableArray(array: facetList)
        let facetCentersArray = NSMutableArray(array: facetCenters)
        getVoronoiFacetList(idx: idxVector, facetList: facetListArray, facetCenters: facetCentersArray)
        facetList.removeAll()
        facetList.append(contentsOf: facetListArray as! [[Point2f]])
        facetCenters.removeAll()
        facetCenters.append(contentsOf: facetCentersArray as! [Point2f])
    }
}


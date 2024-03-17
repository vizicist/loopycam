public extension Video {
    @nonobjc class func buildOpticalFlowPyramid(img: Mat, pyramid: inout [Mat], winSize: Size2i, maxLevel: Int32, withDerivatives: Bool, pyrBorder: Int32, derivBorder: Int32, tryReuseInputImage: Bool) -> Int32 {
        let pyramidArray = NSMutableArray(array: pyramid)
        let ret = Video.buildOpticalFlowPyramid(img: img, pyramid: pyramidArray, winSize: winSize, maxLevel: maxLevel, withDerivatives: withDerivatives, pyrBorder: pyrBorder, derivBorder: derivBorder, tryReuseInputImage: tryReuseInputImage)
        pyramid.removeAll()
        pyramid.append(contentsOf: pyramidArray as! [Mat])
        return ret
    }
}

public extension Video {
    @nonobjc class func buildOpticalFlowPyramid(img: Mat, pyramid: inout [Mat], winSize: Size2i, maxLevel: Int32, withDerivatives: Bool, pyrBorder: Int32, derivBorder: Int32) -> Int32 {
        let pyramidArray = NSMutableArray(array: pyramid)
        let ret = Video.buildOpticalFlowPyramid(img: img, pyramid: pyramidArray, winSize: winSize, maxLevel: maxLevel, withDerivatives: withDerivatives, pyrBorder: pyrBorder, derivBorder: derivBorder)
        pyramid.removeAll()
        pyramid.append(contentsOf: pyramidArray as! [Mat])
        return ret
    }
}

public extension Video {
    @nonobjc class func buildOpticalFlowPyramid(img: Mat, pyramid: inout [Mat], winSize: Size2i, maxLevel: Int32, withDerivatives: Bool, pyrBorder: Int32) -> Int32 {
        let pyramidArray = NSMutableArray(array: pyramid)
        let ret = Video.buildOpticalFlowPyramid(img: img, pyramid: pyramidArray, winSize: winSize, maxLevel: maxLevel, withDerivatives: withDerivatives, pyrBorder: pyrBorder)
        pyramid.removeAll()
        pyramid.append(contentsOf: pyramidArray as! [Mat])
        return ret
    }
}

public extension Video {
    @nonobjc class func buildOpticalFlowPyramid(img: Mat, pyramid: inout [Mat], winSize: Size2i, maxLevel: Int32, withDerivatives: Bool) -> Int32 {
        let pyramidArray = NSMutableArray(array: pyramid)
        let ret = Video.buildOpticalFlowPyramid(img: img, pyramid: pyramidArray, winSize: winSize, maxLevel: maxLevel, withDerivatives: withDerivatives)
        pyramid.removeAll()
        pyramid.append(contentsOf: pyramidArray as! [Mat])
        return ret
    }
}

public extension Video {
    @nonobjc class func buildOpticalFlowPyramid(img: Mat, pyramid: inout [Mat], winSize: Size2i, maxLevel: Int32) -> Int32 {
        let pyramidArray = NSMutableArray(array: pyramid)
        let ret = Video.buildOpticalFlowPyramid(img: img, pyramid: pyramidArray, winSize: winSize, maxLevel: maxLevel)
        pyramid.removeAll()
        pyramid.append(contentsOf: pyramidArray as! [Mat])
        return ret
    }
}


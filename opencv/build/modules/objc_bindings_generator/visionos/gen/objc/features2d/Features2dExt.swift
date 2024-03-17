public extension Features2d {
    @nonobjc class func drawMatches(img1: Mat, keypoints1: [KeyPoint], img2: Mat, keypoints2: [KeyPoint], matches1to2: [DMatch], outImg: Mat, matchColor: Scalar, singlePointColor: Scalar, matchesMask: [Int8], flags: DrawMatchesFlags) -> Void {
        let matchesMaskVector = ByteVector(matchesMask)
        Features2d.drawMatches(img1: img1, keypoints1: keypoints1, img2: img2, keypoints2: keypoints2, matches1to2: matches1to2, outImg: outImg, matchColor: matchColor, singlePointColor: singlePointColor, matchesMask: matchesMaskVector, flags: flags)
    }
}

public extension Features2d {
    @nonobjc class func drawMatches(img1: Mat, keypoints1: [KeyPoint], img2: Mat, keypoints2: [KeyPoint], matches1to2: [DMatch], outImg: Mat, matchColor: Scalar, singlePointColor: Scalar, matchesMask: [Int8]) -> Void {
        let matchesMaskVector = ByteVector(matchesMask)
        Features2d.drawMatches(img1: img1, keypoints1: keypoints1, img2: img2, keypoints2: keypoints2, matches1to2: matches1to2, outImg: outImg, matchColor: matchColor, singlePointColor: singlePointColor, matchesMask: matchesMaskVector)
    }
}

public extension Features2d {
    @nonobjc class func drawMatches(img1: Mat, keypoints1: [KeyPoint], img2: Mat, keypoints2: [KeyPoint], matches1to2: [DMatch], outImg: Mat, matchesThickness: Int32, matchColor: Scalar, singlePointColor: Scalar, matchesMask: [Int8], flags: DrawMatchesFlags) -> Void {
        let matchesMaskVector = ByteVector(matchesMask)
        Features2d.drawMatches(img1: img1, keypoints1: keypoints1, img2: img2, keypoints2: keypoints2, matches1to2: matches1to2, outImg: outImg, matchesThickness: matchesThickness, matchColor: matchColor, singlePointColor: singlePointColor, matchesMask: matchesMaskVector, flags: flags)
    }
}

public extension Features2d {
    @nonobjc class func drawMatches(img1: Mat, keypoints1: [KeyPoint], img2: Mat, keypoints2: [KeyPoint], matches1to2: [DMatch], outImg: Mat, matchesThickness: Int32, matchColor: Scalar, singlePointColor: Scalar, matchesMask: [Int8]) -> Void {
        let matchesMaskVector = ByteVector(matchesMask)
        Features2d.drawMatches(img1: img1, keypoints1: keypoints1, img2: img2, keypoints2: keypoints2, matches1to2: matches1to2, outImg: outImg, matchesThickness: matchesThickness, matchColor: matchColor, singlePointColor: singlePointColor, matchesMask: matchesMaskVector)
    }
}

public extension Features2d {
    @nonobjc class func drawMatches(img1: Mat, keypoints1: [KeyPoint], img2: Mat, keypoints2: [KeyPoint], matches1to2: [[DMatch]], outImg: Mat, matchColor: Scalar, singlePointColor: Scalar, matchesMask: [[Int8]], flags: DrawMatchesFlags) -> Void {
        let matchesMaskVector = matchesMask.map {ByteVector($0) }
        Features2d.drawMatches(img1: img1, keypoints1: keypoints1, img2: img2, keypoints2: keypoints2, matches1to2: matches1to2, outImg: outImg, matchColor: matchColor, singlePointColor: singlePointColor, matchesMask: matchesMaskVector, flags: flags)
    }
}

public extension Features2d {
    @nonobjc class func drawMatches(img1: Mat, keypoints1: [KeyPoint], img2: Mat, keypoints2: [KeyPoint], matches1to2: [[DMatch]], outImg: Mat, matchColor: Scalar, singlePointColor: Scalar, matchesMask: [[Int8]]) -> Void {
        let matchesMaskVector = matchesMask.map {ByteVector($0) }
        Features2d.drawMatches(img1: img1, keypoints1: keypoints1, img2: img2, keypoints2: keypoints2, matches1to2: matches1to2, outImg: outImg, matchColor: matchColor, singlePointColor: singlePointColor, matchesMask: matchesMaskVector)
    }
}

public extension AffineFeature {
    @nonobjc func setViewParams(tilts: [Float], rolls: [Float]) -> Void {
        let tiltsVector = FloatVector(tilts)
        let rollsVector = FloatVector(rolls)
        setViewParams(tilts: tiltsVector, rolls: rollsVector)
    }
}

public extension AffineFeature {
    @nonobjc func getViewParams(tilts: [Float], rolls: [Float]) -> Void {
        let tiltsVector = FloatVector(tilts)
        let rollsVector = FloatVector(rolls)
        getViewParams(tilts: tiltsVector, rolls: rollsVector)
    }
}

public extension BRISK {
    @nonobjc class func create(radiusList: [Float], numberList: [Int32], dMax: Float, dMin: Float, indexChange: [Int32]) -> BRISK {
        let radiusListVector = FloatVector(radiusList)
        let numberListVector = IntVector(numberList)
        let indexChangeVector = IntVector(indexChange)
        let ret = BRISK.create(radiusList: radiusListVector, numberList: numberListVector, dMax: dMax, dMin: dMin, indexChange: indexChangeVector)
        return ret
    }
}

public extension BRISK {
    @nonobjc class func create(radiusList: [Float], numberList: [Int32], dMax: Float, dMin: Float) -> BRISK {
        let radiusListVector = FloatVector(radiusList)
        let numberListVector = IntVector(numberList)
        let ret = BRISK.create(radiusList: radiusListVector, numberList: numberListVector, dMax: dMax, dMin: dMin)
        return ret
    }
}

public extension BRISK {
    @nonobjc class func create(radiusList: [Float], numberList: [Int32], dMax: Float) -> BRISK {
        let radiusListVector = FloatVector(radiusList)
        let numberListVector = IntVector(numberList)
        let ret = BRISK.create(radiusList: radiusListVector, numberList: numberListVector, dMax: dMax)
        return ret
    }
}

public extension BRISK {
    @nonobjc class func create(radiusList: [Float], numberList: [Int32]) -> BRISK {
        let radiusListVector = FloatVector(radiusList)
        let numberListVector = IntVector(numberList)
        let ret = BRISK.create(radiusList: radiusListVector, numberList: numberListVector)
        return ret
    }
}

public extension BRISK {
    @nonobjc class func create(thresh: Int32, octaves: Int32, radiusList: [Float], numberList: [Int32], dMax: Float, dMin: Float, indexChange: [Int32]) -> BRISK {
        let radiusListVector = FloatVector(radiusList)
        let numberListVector = IntVector(numberList)
        let indexChangeVector = IntVector(indexChange)
        let ret = BRISK.create(thresh: thresh, octaves: octaves, radiusList: radiusListVector, numberList: numberListVector, dMax: dMax, dMin: dMin, indexChange: indexChangeVector)
        return ret
    }
}

public extension BRISK {
    @nonobjc class func create(thresh: Int32, octaves: Int32, radiusList: [Float], numberList: [Int32], dMax: Float, dMin: Float) -> BRISK {
        let radiusListVector = FloatVector(radiusList)
        let numberListVector = IntVector(numberList)
        let ret = BRISK.create(thresh: thresh, octaves: octaves, radiusList: radiusListVector, numberList: numberListVector, dMax: dMax, dMin: dMin)
        return ret
    }
}

public extension BRISK {
    @nonobjc class func create(thresh: Int32, octaves: Int32, radiusList: [Float], numberList: [Int32], dMax: Float) -> BRISK {
        let radiusListVector = FloatVector(radiusList)
        let numberListVector = IntVector(numberList)
        let ret = BRISK.create(thresh: thresh, octaves: octaves, radiusList: radiusListVector, numberList: numberListVector, dMax: dMax)
        return ret
    }
}

public extension BRISK {
    @nonobjc class func create(thresh: Int32, octaves: Int32, radiusList: [Float], numberList: [Int32]) -> BRISK {
        let radiusListVector = FloatVector(radiusList)
        let numberListVector = IntVector(numberList)
        let ret = BRISK.create(thresh: thresh, octaves: octaves, radiusList: radiusListVector, numberList: numberListVector)
        return ret
    }
}

public extension DescriptorMatcher {
    @nonobjc func match(queryDescriptors: Mat, trainDescriptors: Mat, matches: inout [DMatch], mask: Mat) -> Void {
        let matchesArray = NSMutableArray(array: matches)
        match(queryDescriptors: queryDescriptors, trainDescriptors: trainDescriptors, matches: matchesArray, mask: mask)
        matches.removeAll()
        matches.append(contentsOf: matchesArray as! [DMatch])
    }
}

public extension DescriptorMatcher {
    @nonobjc func match(queryDescriptors: Mat, trainDescriptors: Mat, matches: inout [DMatch]) -> Void {
        let matchesArray = NSMutableArray(array: matches)
        match(queryDescriptors: queryDescriptors, trainDescriptors: trainDescriptors, matches: matchesArray)
        matches.removeAll()
        matches.append(contentsOf: matchesArray as! [DMatch])
    }
}

public extension DescriptorMatcher {
    @nonobjc func knnMatch(queryDescriptors: Mat, trainDescriptors: Mat, matches: inout [[DMatch]], k: Int32, mask: Mat, compactResult: Bool) -> Void {
        let matchesArray = NSMutableArray(array: matches)
        knnMatch(queryDescriptors: queryDescriptors, trainDescriptors: trainDescriptors, matches: matchesArray, k: k, mask: mask, compactResult: compactResult)
        matches.removeAll()
        matches.append(contentsOf: matchesArray as! [[DMatch]])
    }
}

public extension DescriptorMatcher {
    @nonobjc func knnMatch(queryDescriptors: Mat, trainDescriptors: Mat, matches: inout [[DMatch]], k: Int32, mask: Mat) -> Void {
        let matchesArray = NSMutableArray(array: matches)
        knnMatch(queryDescriptors: queryDescriptors, trainDescriptors: trainDescriptors, matches: matchesArray, k: k, mask: mask)
        matches.removeAll()
        matches.append(contentsOf: matchesArray as! [[DMatch]])
    }
}

public extension DescriptorMatcher {
    @nonobjc func knnMatch(queryDescriptors: Mat, trainDescriptors: Mat, matches: inout [[DMatch]], k: Int32) -> Void {
        let matchesArray = NSMutableArray(array: matches)
        knnMatch(queryDescriptors: queryDescriptors, trainDescriptors: trainDescriptors, matches: matchesArray, k: k)
        matches.removeAll()
        matches.append(contentsOf: matchesArray as! [[DMatch]])
    }
}

public extension DescriptorMatcher {
    @nonobjc func radiusMatch(queryDescriptors: Mat, trainDescriptors: Mat, matches: inout [[DMatch]], maxDistance: Float, mask: Mat, compactResult: Bool) -> Void {
        let matchesArray = NSMutableArray(array: matches)
        radiusMatch(queryDescriptors: queryDescriptors, trainDescriptors: trainDescriptors, matches: matchesArray, maxDistance: maxDistance, mask: mask, compactResult: compactResult)
        matches.removeAll()
        matches.append(contentsOf: matchesArray as! [[DMatch]])
    }
}

public extension DescriptorMatcher {
    @nonobjc func radiusMatch(queryDescriptors: Mat, trainDescriptors: Mat, matches: inout [[DMatch]], maxDistance: Float, mask: Mat) -> Void {
        let matchesArray = NSMutableArray(array: matches)
        radiusMatch(queryDescriptors: queryDescriptors, trainDescriptors: trainDescriptors, matches: matchesArray, maxDistance: maxDistance, mask: mask)
        matches.removeAll()
        matches.append(contentsOf: matchesArray as! [[DMatch]])
    }
}

public extension DescriptorMatcher {
    @nonobjc func radiusMatch(queryDescriptors: Mat, trainDescriptors: Mat, matches: inout [[DMatch]], maxDistance: Float) -> Void {
        let matchesArray = NSMutableArray(array: matches)
        radiusMatch(queryDescriptors: queryDescriptors, trainDescriptors: trainDescriptors, matches: matchesArray, maxDistance: maxDistance)
        matches.removeAll()
        matches.append(contentsOf: matchesArray as! [[DMatch]])
    }
}

public extension DescriptorMatcher {
    @nonobjc func match(queryDescriptors: Mat, matches: inout [DMatch], masks: [Mat]) -> Void {
        let matchesArray = NSMutableArray(array: matches)
        match(queryDescriptors: queryDescriptors, matches: matchesArray, masks: masks)
        matches.removeAll()
        matches.append(contentsOf: matchesArray as! [DMatch])
    }
}

public extension DescriptorMatcher {
    @nonobjc func match(queryDescriptors: Mat, matches: inout [DMatch]) -> Void {
        let matchesArray = NSMutableArray(array: matches)
        match(queryDescriptors: queryDescriptors, matches: matchesArray)
        matches.removeAll()
        matches.append(contentsOf: matchesArray as! [DMatch])
    }
}

public extension DescriptorMatcher {
    @nonobjc func knnMatch(queryDescriptors: Mat, matches: inout [[DMatch]], k: Int32, masks: [Mat], compactResult: Bool) -> Void {
        let matchesArray = NSMutableArray(array: matches)
        knnMatch(queryDescriptors: queryDescriptors, matches: matchesArray, k: k, masks: masks, compactResult: compactResult)
        matches.removeAll()
        matches.append(contentsOf: matchesArray as! [[DMatch]])
    }
}

public extension DescriptorMatcher {
    @nonobjc func knnMatch(queryDescriptors: Mat, matches: inout [[DMatch]], k: Int32, masks: [Mat]) -> Void {
        let matchesArray = NSMutableArray(array: matches)
        knnMatch(queryDescriptors: queryDescriptors, matches: matchesArray, k: k, masks: masks)
        matches.removeAll()
        matches.append(contentsOf: matchesArray as! [[DMatch]])
    }
}

public extension DescriptorMatcher {
    @nonobjc func knnMatch(queryDescriptors: Mat, matches: inout [[DMatch]], k: Int32) -> Void {
        let matchesArray = NSMutableArray(array: matches)
        knnMatch(queryDescriptors: queryDescriptors, matches: matchesArray, k: k)
        matches.removeAll()
        matches.append(contentsOf: matchesArray as! [[DMatch]])
    }
}

public extension DescriptorMatcher {
    @nonobjc func radiusMatch(queryDescriptors: Mat, matches: inout [[DMatch]], maxDistance: Float, masks: [Mat], compactResult: Bool) -> Void {
        let matchesArray = NSMutableArray(array: matches)
        radiusMatch(queryDescriptors: queryDescriptors, matches: matchesArray, maxDistance: maxDistance, masks: masks, compactResult: compactResult)
        matches.removeAll()
        matches.append(contentsOf: matchesArray as! [[DMatch]])
    }
}

public extension DescriptorMatcher {
    @nonobjc func radiusMatch(queryDescriptors: Mat, matches: inout [[DMatch]], maxDistance: Float, masks: [Mat]) -> Void {
        let matchesArray = NSMutableArray(array: matches)
        radiusMatch(queryDescriptors: queryDescriptors, matches: matchesArray, maxDistance: maxDistance, masks: masks)
        matches.removeAll()
        matches.append(contentsOf: matchesArray as! [[DMatch]])
    }
}

public extension DescriptorMatcher {
    @nonobjc func radiusMatch(queryDescriptors: Mat, matches: inout [[DMatch]], maxDistance: Float) -> Void {
        let matchesArray = NSMutableArray(array: matches)
        radiusMatch(queryDescriptors: queryDescriptors, matches: matchesArray, maxDistance: maxDistance)
        matches.removeAll()
        matches.append(contentsOf: matchesArray as! [[DMatch]])
    }
}

public extension Feature2D {
    @nonobjc func detect(image: Mat, keypoints: inout [KeyPoint], mask: Mat) -> Void {
        let keypointsArray = NSMutableArray(array: keypoints)
        detect(image: image, keypoints: keypointsArray, mask: mask)
        keypoints.removeAll()
        keypoints.append(contentsOf: keypointsArray as! [KeyPoint])
    }
}

public extension Feature2D {
    @nonobjc func detect(image: Mat, keypoints: inout [KeyPoint]) -> Void {
        let keypointsArray = NSMutableArray(array: keypoints)
        detect(image: image, keypoints: keypointsArray)
        keypoints.removeAll()
        keypoints.append(contentsOf: keypointsArray as! [KeyPoint])
    }
}

public extension Feature2D {
    @nonobjc func detect(images: [Mat], keypoints: inout [[KeyPoint]], masks: [Mat]) -> Void {
        let keypointsArray = NSMutableArray(array: keypoints)
        detect(images: images, keypoints: keypointsArray, masks: masks)
        keypoints.removeAll()
        keypoints.append(contentsOf: keypointsArray as! [[KeyPoint]])
    }
}

public extension Feature2D {
    @nonobjc func detect(images: [Mat], keypoints: inout [[KeyPoint]]) -> Void {
        let keypointsArray = NSMutableArray(array: keypoints)
        detect(images: images, keypoints: keypointsArray)
        keypoints.removeAll()
        keypoints.append(contentsOf: keypointsArray as! [[KeyPoint]])
    }
}

public extension Feature2D {
    @nonobjc func compute(image: Mat, keypoints: inout [KeyPoint], descriptors: Mat) -> Void {
        let keypointsArray = NSMutableArray(array: keypoints)
        compute(image: image, keypoints: keypointsArray, descriptors: descriptors)
        keypoints.removeAll()
        keypoints.append(contentsOf: keypointsArray as! [KeyPoint])
    }
}

public extension Feature2D {
    @nonobjc func compute(images: [Mat], keypoints: inout [[KeyPoint]], descriptors: inout [Mat]) -> Void {
        let keypointsArray = NSMutableArray(array: keypoints)
        let descriptorsArray = NSMutableArray(array: descriptors)
        compute(images: images, keypoints: keypointsArray, descriptors: descriptorsArray)
        keypoints.removeAll()
        keypoints.append(contentsOf: keypointsArray as! [[KeyPoint]])
        descriptors.removeAll()
        descriptors.append(contentsOf: descriptorsArray as! [Mat])
    }
}

public extension Feature2D {
    @nonobjc func detectAndCompute(image: Mat, mask: Mat, keypoints: inout [KeyPoint], descriptors: Mat, useProvidedKeypoints: Bool) -> Void {
        let keypointsArray = NSMutableArray(array: keypoints)
        detectAndCompute(image: image, mask: mask, keypoints: keypointsArray, descriptors: descriptors, useProvidedKeypoints: useProvidedKeypoints)
        keypoints.removeAll()
        keypoints.append(contentsOf: keypointsArray as! [KeyPoint])
    }
}

public extension Feature2D {
    @nonobjc func detectAndCompute(image: Mat, mask: Mat, keypoints: inout [KeyPoint], descriptors: Mat) -> Void {
        let keypointsArray = NSMutableArray(array: keypoints)
        detectAndCompute(image: image, mask: mask, keypoints: keypointsArray, descriptors: descriptors)
        keypoints.removeAll()
        keypoints.append(contentsOf: keypointsArray as! [KeyPoint])
    }
}

public extension MSER {
    @nonobjc func detectRegions(image: Mat, msers: inout [[Point2i]], bboxes: inout [Rect2i]) -> Void {
        let msersArray = NSMutableArray(array: msers)
        let bboxesArray = NSMutableArray(array: bboxes)
        detectRegions(image: image, msers: msersArray, bboxes: bboxesArray)
        msers.removeAll()
        msers.append(contentsOf: msersArray as! [[Point2i]])
        bboxes.removeAll()
        bboxes.append(contentsOf: bboxesArray as! [Rect2i])
    }
}


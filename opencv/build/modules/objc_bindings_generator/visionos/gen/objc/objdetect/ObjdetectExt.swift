public extension Objdetect {
    @nonobjc class func groupRectangles(rectList: inout [Rect2i], weights: inout [Int32], groupThreshold: Int32, eps: Double) -> Void {
        let rectListArray = NSMutableArray(array: rectList)
        let weightsVector = IntVector(weights)
        Objdetect.groupRectangles(rectList: rectListArray, weights: weightsVector, groupThreshold: groupThreshold, eps: eps)
        rectList.removeAll()
        rectList.append(contentsOf: rectListArray as! [Rect2i])
        weights.removeAll()
        weights.append(contentsOf: weightsVector.array)
    }
}

public extension Objdetect {
    @nonobjc class func groupRectangles(rectList: inout [Rect2i], weights: inout [Int32], groupThreshold: Int32) -> Void {
        let rectListArray = NSMutableArray(array: rectList)
        let weightsVector = IntVector(weights)
        Objdetect.groupRectangles(rectList: rectListArray, weights: weightsVector, groupThreshold: groupThreshold)
        rectList.removeAll()
        rectList.append(contentsOf: rectListArray as! [Rect2i])
        weights.removeAll()
        weights.append(contentsOf: weightsVector.array)
    }
}

public extension CascadeClassifier {
    @nonobjc func detectMultiScale(image: Mat, objects: inout [Rect2i], scaleFactor: Double, minNeighbors: Int32, flags: Int32, minSize: Size2i, maxSize: Size2i) -> Void {
        let objectsArray = NSMutableArray(array: objects)
        detectMultiScale(image: image, objects: objectsArray, scaleFactor: scaleFactor, minNeighbors: minNeighbors, flags: flags, minSize: minSize, maxSize: maxSize)
        objects.removeAll()
        objects.append(contentsOf: objectsArray as! [Rect2i])
    }
}

public extension CascadeClassifier {
    @nonobjc func detectMultiScale(image: Mat, objects: inout [Rect2i], scaleFactor: Double, minNeighbors: Int32, flags: Int32, minSize: Size2i) -> Void {
        let objectsArray = NSMutableArray(array: objects)
        detectMultiScale(image: image, objects: objectsArray, scaleFactor: scaleFactor, minNeighbors: minNeighbors, flags: flags, minSize: minSize)
        objects.removeAll()
        objects.append(contentsOf: objectsArray as! [Rect2i])
    }
}

public extension CascadeClassifier {
    @nonobjc func detectMultiScale(image: Mat, objects: inout [Rect2i], scaleFactor: Double, minNeighbors: Int32, flags: Int32) -> Void {
        let objectsArray = NSMutableArray(array: objects)
        detectMultiScale(image: image, objects: objectsArray, scaleFactor: scaleFactor, minNeighbors: minNeighbors, flags: flags)
        objects.removeAll()
        objects.append(contentsOf: objectsArray as! [Rect2i])
    }
}

public extension CascadeClassifier {
    @nonobjc func detectMultiScale(image: Mat, objects: inout [Rect2i], scaleFactor: Double, minNeighbors: Int32) -> Void {
        let objectsArray = NSMutableArray(array: objects)
        detectMultiScale(image: image, objects: objectsArray, scaleFactor: scaleFactor, minNeighbors: minNeighbors)
        objects.removeAll()
        objects.append(contentsOf: objectsArray as! [Rect2i])
    }
}

public extension CascadeClassifier {
    @nonobjc func detectMultiScale(image: Mat, objects: inout [Rect2i], scaleFactor: Double) -> Void {
        let objectsArray = NSMutableArray(array: objects)
        detectMultiScale(image: image, objects: objectsArray, scaleFactor: scaleFactor)
        objects.removeAll()
        objects.append(contentsOf: objectsArray as! [Rect2i])
    }
}

public extension CascadeClassifier {
    @nonobjc func detectMultiScale(image: Mat, objects: inout [Rect2i]) -> Void {
        let objectsArray = NSMutableArray(array: objects)
        detectMultiScale(image: image, objects: objectsArray)
        objects.removeAll()
        objects.append(contentsOf: objectsArray as! [Rect2i])
    }
}

public extension CascadeClassifier {
    @nonobjc func detectMultiScale(image: Mat, objects: inout [Rect2i], numDetections: inout [Int32], scaleFactor: Double, minNeighbors: Int32, flags: Int32, minSize: Size2i, maxSize: Size2i) -> Void {
        let objectsArray = NSMutableArray(array: objects)
        let numDetectionsVector = IntVector(numDetections)
        detectMultiScale(image: image, objects: objectsArray, numDetections: numDetectionsVector, scaleFactor: scaleFactor, minNeighbors: minNeighbors, flags: flags, minSize: minSize, maxSize: maxSize)
        objects.removeAll()
        objects.append(contentsOf: objectsArray as! [Rect2i])
        numDetections.removeAll()
        numDetections.append(contentsOf: numDetectionsVector.array)
    }
}

public extension CascadeClassifier {
    @nonobjc func detectMultiScale(image: Mat, objects: inout [Rect2i], numDetections: inout [Int32], scaleFactor: Double, minNeighbors: Int32, flags: Int32, minSize: Size2i) -> Void {
        let objectsArray = NSMutableArray(array: objects)
        let numDetectionsVector = IntVector(numDetections)
        detectMultiScale(image: image, objects: objectsArray, numDetections: numDetectionsVector, scaleFactor: scaleFactor, minNeighbors: minNeighbors, flags: flags, minSize: minSize)
        objects.removeAll()
        objects.append(contentsOf: objectsArray as! [Rect2i])
        numDetections.removeAll()
        numDetections.append(contentsOf: numDetectionsVector.array)
    }
}

public extension CascadeClassifier {
    @nonobjc func detectMultiScale(image: Mat, objects: inout [Rect2i], numDetections: inout [Int32], scaleFactor: Double, minNeighbors: Int32, flags: Int32) -> Void {
        let objectsArray = NSMutableArray(array: objects)
        let numDetectionsVector = IntVector(numDetections)
        detectMultiScale(image: image, objects: objectsArray, numDetections: numDetectionsVector, scaleFactor: scaleFactor, minNeighbors: minNeighbors, flags: flags)
        objects.removeAll()
        objects.append(contentsOf: objectsArray as! [Rect2i])
        numDetections.removeAll()
        numDetections.append(contentsOf: numDetectionsVector.array)
    }
}

public extension CascadeClassifier {
    @nonobjc func detectMultiScale(image: Mat, objects: inout [Rect2i], numDetections: inout [Int32], scaleFactor: Double, minNeighbors: Int32) -> Void {
        let objectsArray = NSMutableArray(array: objects)
        let numDetectionsVector = IntVector(numDetections)
        detectMultiScale(image: image, objects: objectsArray, numDetections: numDetectionsVector, scaleFactor: scaleFactor, minNeighbors: minNeighbors)
        objects.removeAll()
        objects.append(contentsOf: objectsArray as! [Rect2i])
        numDetections.removeAll()
        numDetections.append(contentsOf: numDetectionsVector.array)
    }
}

public extension CascadeClassifier {
    @nonobjc func detectMultiScale(image: Mat, objects: inout [Rect2i], numDetections: inout [Int32], scaleFactor: Double) -> Void {
        let objectsArray = NSMutableArray(array: objects)
        let numDetectionsVector = IntVector(numDetections)
        detectMultiScale(image: image, objects: objectsArray, numDetections: numDetectionsVector, scaleFactor: scaleFactor)
        objects.removeAll()
        objects.append(contentsOf: objectsArray as! [Rect2i])
        numDetections.removeAll()
        numDetections.append(contentsOf: numDetectionsVector.array)
    }
}

public extension CascadeClassifier {
    @nonobjc func detectMultiScale(image: Mat, objects: inout [Rect2i], numDetections: inout [Int32]) -> Void {
        let objectsArray = NSMutableArray(array: objects)
        let numDetectionsVector = IntVector(numDetections)
        detectMultiScale(image: image, objects: objectsArray, numDetections: numDetectionsVector)
        objects.removeAll()
        objects.append(contentsOf: objectsArray as! [Rect2i])
        numDetections.removeAll()
        numDetections.append(contentsOf: numDetectionsVector.array)
    }
}

public extension CascadeClassifier {
    @nonobjc func detectMultiScale(image: Mat, objects: inout [Rect2i], rejectLevels: inout [Int32], levelWeights: inout [Double], scaleFactor: Double, minNeighbors: Int32, flags: Int32, minSize: Size2i, maxSize: Size2i, outputRejectLevels: Bool) -> Void {
        let objectsArray = NSMutableArray(array: objects)
        let rejectLevelsVector = IntVector(rejectLevels)
        let levelWeightsVector = DoubleVector(levelWeights)
        detectMultiScale(image: image, objects: objectsArray, rejectLevels: rejectLevelsVector, levelWeights: levelWeightsVector, scaleFactor: scaleFactor, minNeighbors: minNeighbors, flags: flags, minSize: minSize, maxSize: maxSize, outputRejectLevels: outputRejectLevels)
        objects.removeAll()
        objects.append(contentsOf: objectsArray as! [Rect2i])
        rejectLevels.removeAll()
        rejectLevels.append(contentsOf: rejectLevelsVector.array)
        levelWeights.removeAll()
        levelWeights.append(contentsOf: levelWeightsVector.array)
    }
}

public extension CascadeClassifier {
    @nonobjc func detectMultiScale(image: Mat, objects: inout [Rect2i], rejectLevels: inout [Int32], levelWeights: inout [Double], scaleFactor: Double, minNeighbors: Int32, flags: Int32, minSize: Size2i, maxSize: Size2i) -> Void {
        let objectsArray = NSMutableArray(array: objects)
        let rejectLevelsVector = IntVector(rejectLevels)
        let levelWeightsVector = DoubleVector(levelWeights)
        detectMultiScale(image: image, objects: objectsArray, rejectLevels: rejectLevelsVector, levelWeights: levelWeightsVector, scaleFactor: scaleFactor, minNeighbors: minNeighbors, flags: flags, minSize: minSize, maxSize: maxSize)
        objects.removeAll()
        objects.append(contentsOf: objectsArray as! [Rect2i])
        rejectLevels.removeAll()
        rejectLevels.append(contentsOf: rejectLevelsVector.array)
        levelWeights.removeAll()
        levelWeights.append(contentsOf: levelWeightsVector.array)
    }
}

public extension CascadeClassifier {
    @nonobjc func detectMultiScale(image: Mat, objects: inout [Rect2i], rejectLevels: inout [Int32], levelWeights: inout [Double], scaleFactor: Double, minNeighbors: Int32, flags: Int32, minSize: Size2i) -> Void {
        let objectsArray = NSMutableArray(array: objects)
        let rejectLevelsVector = IntVector(rejectLevels)
        let levelWeightsVector = DoubleVector(levelWeights)
        detectMultiScale(image: image, objects: objectsArray, rejectLevels: rejectLevelsVector, levelWeights: levelWeightsVector, scaleFactor: scaleFactor, minNeighbors: minNeighbors, flags: flags, minSize: minSize)
        objects.removeAll()
        objects.append(contentsOf: objectsArray as! [Rect2i])
        rejectLevels.removeAll()
        rejectLevels.append(contentsOf: rejectLevelsVector.array)
        levelWeights.removeAll()
        levelWeights.append(contentsOf: levelWeightsVector.array)
    }
}

public extension CascadeClassifier {
    @nonobjc func detectMultiScale(image: Mat, objects: inout [Rect2i], rejectLevels: inout [Int32], levelWeights: inout [Double], scaleFactor: Double, minNeighbors: Int32, flags: Int32) -> Void {
        let objectsArray = NSMutableArray(array: objects)
        let rejectLevelsVector = IntVector(rejectLevels)
        let levelWeightsVector = DoubleVector(levelWeights)
        detectMultiScale(image: image, objects: objectsArray, rejectLevels: rejectLevelsVector, levelWeights: levelWeightsVector, scaleFactor: scaleFactor, minNeighbors: minNeighbors, flags: flags)
        objects.removeAll()
        objects.append(contentsOf: objectsArray as! [Rect2i])
        rejectLevels.removeAll()
        rejectLevels.append(contentsOf: rejectLevelsVector.array)
        levelWeights.removeAll()
        levelWeights.append(contentsOf: levelWeightsVector.array)
    }
}

public extension CascadeClassifier {
    @nonobjc func detectMultiScale(image: Mat, objects: inout [Rect2i], rejectLevels: inout [Int32], levelWeights: inout [Double], scaleFactor: Double, minNeighbors: Int32) -> Void {
        let objectsArray = NSMutableArray(array: objects)
        let rejectLevelsVector = IntVector(rejectLevels)
        let levelWeightsVector = DoubleVector(levelWeights)
        detectMultiScale(image: image, objects: objectsArray, rejectLevels: rejectLevelsVector, levelWeights: levelWeightsVector, scaleFactor: scaleFactor, minNeighbors: minNeighbors)
        objects.removeAll()
        objects.append(contentsOf: objectsArray as! [Rect2i])
        rejectLevels.removeAll()
        rejectLevels.append(contentsOf: rejectLevelsVector.array)
        levelWeights.removeAll()
        levelWeights.append(contentsOf: levelWeightsVector.array)
    }
}

public extension CascadeClassifier {
    @nonobjc func detectMultiScale(image: Mat, objects: inout [Rect2i], rejectLevels: inout [Int32], levelWeights: inout [Double], scaleFactor: Double) -> Void {
        let objectsArray = NSMutableArray(array: objects)
        let rejectLevelsVector = IntVector(rejectLevels)
        let levelWeightsVector = DoubleVector(levelWeights)
        detectMultiScale(image: image, objects: objectsArray, rejectLevels: rejectLevelsVector, levelWeights: levelWeightsVector, scaleFactor: scaleFactor)
        objects.removeAll()
        objects.append(contentsOf: objectsArray as! [Rect2i])
        rejectLevels.removeAll()
        rejectLevels.append(contentsOf: rejectLevelsVector.array)
        levelWeights.removeAll()
        levelWeights.append(contentsOf: levelWeightsVector.array)
    }
}

public extension CascadeClassifier {
    @nonobjc func detectMultiScale(image: Mat, objects: inout [Rect2i], rejectLevels: inout [Int32], levelWeights: inout [Double]) -> Void {
        let objectsArray = NSMutableArray(array: objects)
        let rejectLevelsVector = IntVector(rejectLevels)
        let levelWeightsVector = DoubleVector(levelWeights)
        detectMultiScale(image: image, objects: objectsArray, rejectLevels: rejectLevelsVector, levelWeights: levelWeightsVector)
        objects.removeAll()
        objects.append(contentsOf: objectsArray as! [Rect2i])
        rejectLevels.removeAll()
        rejectLevels.append(contentsOf: rejectLevelsVector.array)
        levelWeights.removeAll()
        levelWeights.append(contentsOf: levelWeightsVector.array)
    }
}

public extension FaceDetectorYN {
    @nonobjc class func create(framework: String, bufferModel: [UInt8], bufferConfig: [UInt8], input_size: Size2i, score_threshold: Float, nms_threshold: Float, top_k: Int32, backend_id: Int32, target_id: Int32) -> FaceDetectorYN {
        let bufferModelVector = ByteVector(bufferModel)
        let bufferConfigVector = ByteVector(bufferConfig)
        let ret = FaceDetectorYN.create(framework: framework, bufferModel: bufferModelVector, bufferConfig: bufferConfigVector, input_size: input_size, score_threshold: score_threshold, nms_threshold: nms_threshold, top_k: top_k, backend_id: backend_id, target_id: target_id)
        return ret
    }
}

public extension FaceDetectorYN {
    @nonobjc class func create(framework: String, bufferModel: [UInt8], bufferConfig: [UInt8], input_size: Size2i, score_threshold: Float, nms_threshold: Float, top_k: Int32, backend_id: Int32) -> FaceDetectorYN {
        let bufferModelVector = ByteVector(bufferModel)
        let bufferConfigVector = ByteVector(bufferConfig)
        let ret = FaceDetectorYN.create(framework: framework, bufferModel: bufferModelVector, bufferConfig: bufferConfigVector, input_size: input_size, score_threshold: score_threshold, nms_threshold: nms_threshold, top_k: top_k, backend_id: backend_id)
        return ret
    }
}

public extension FaceDetectorYN {
    @nonobjc class func create(framework: String, bufferModel: [UInt8], bufferConfig: [UInt8], input_size: Size2i, score_threshold: Float, nms_threshold: Float, top_k: Int32) -> FaceDetectorYN {
        let bufferModelVector = ByteVector(bufferModel)
        let bufferConfigVector = ByteVector(bufferConfig)
        let ret = FaceDetectorYN.create(framework: framework, bufferModel: bufferModelVector, bufferConfig: bufferConfigVector, input_size: input_size, score_threshold: score_threshold, nms_threshold: nms_threshold, top_k: top_k)
        return ret
    }
}

public extension FaceDetectorYN {
    @nonobjc class func create(framework: String, bufferModel: [UInt8], bufferConfig: [UInt8], input_size: Size2i, score_threshold: Float, nms_threshold: Float) -> FaceDetectorYN {
        let bufferModelVector = ByteVector(bufferModel)
        let bufferConfigVector = ByteVector(bufferConfig)
        let ret = FaceDetectorYN.create(framework: framework, bufferModel: bufferModelVector, bufferConfig: bufferConfigVector, input_size: input_size, score_threshold: score_threshold, nms_threshold: nms_threshold)
        return ret
    }
}

public extension FaceDetectorYN {
    @nonobjc class func create(framework: String, bufferModel: [UInt8], bufferConfig: [UInt8], input_size: Size2i, score_threshold: Float) -> FaceDetectorYN {
        let bufferModelVector = ByteVector(bufferModel)
        let bufferConfigVector = ByteVector(bufferConfig)
        let ret = FaceDetectorYN.create(framework: framework, bufferModel: bufferModelVector, bufferConfig: bufferConfigVector, input_size: input_size, score_threshold: score_threshold)
        return ret
    }
}

public extension FaceDetectorYN {
    @nonobjc class func create(framework: String, bufferModel: [UInt8], bufferConfig: [UInt8], input_size: Size2i) -> FaceDetectorYN {
        let bufferModelVector = ByteVector(bufferModel)
        let bufferConfigVector = ByteVector(bufferConfig)
        let ret = FaceDetectorYN.create(framework: framework, bufferModel: bufferModelVector, bufferConfig: bufferConfigVector, input_size: input_size)
        return ret
    }
}

public extension GraphicalCodeDetector {
    @nonobjc func decodeMulti(img: Mat, points: Mat, decoded_info: inout [String], straight_code: inout [Mat]) -> Bool {
        let decoded_infoArray = NSMutableArray(array: decoded_info)
        let straight_codeArray = NSMutableArray(array: straight_code)
        let ret = decodeMulti(img: img, points: points, decoded_info: decoded_infoArray, straight_code: straight_codeArray)
        decoded_info.removeAll()
        decoded_info.append(contentsOf: decoded_infoArray as! [String])
        straight_code.removeAll()
        straight_code.append(contentsOf: straight_codeArray as! [Mat])
        return ret
    }
}

public extension GraphicalCodeDetector {
    @nonobjc func decodeMulti(img: Mat, points: Mat, decoded_info: inout [String]) -> Bool {
        let decoded_infoArray = NSMutableArray(array: decoded_info)
        let ret = decodeMulti(img: img, points: points, decoded_info: decoded_infoArray)
        decoded_info.removeAll()
        decoded_info.append(contentsOf: decoded_infoArray as! [String])
        return ret
    }
}

public extension GraphicalCodeDetector {
    @nonobjc func detectAndDecodeMulti(img: Mat, decoded_info: inout [String], points: Mat, straight_code: inout [Mat]) -> Bool {
        let decoded_infoArray = NSMutableArray(array: decoded_info)
        let straight_codeArray = NSMutableArray(array: straight_code)
        let ret = detectAndDecodeMulti(img: img, decoded_info: decoded_infoArray, points: points, straight_code: straight_codeArray)
        decoded_info.removeAll()
        decoded_info.append(contentsOf: decoded_infoArray as! [String])
        straight_code.removeAll()
        straight_code.append(contentsOf: straight_codeArray as! [Mat])
        return ret
    }
}

public extension GraphicalCodeDetector {
    @nonobjc func detectAndDecodeMulti(img: Mat, decoded_info: inout [String], points: Mat) -> Bool {
        let decoded_infoArray = NSMutableArray(array: decoded_info)
        let ret = detectAndDecodeMulti(img: img, decoded_info: decoded_infoArray, points: points)
        decoded_info.removeAll()
        decoded_info.append(contentsOf: decoded_infoArray as! [String])
        return ret
    }
}

public extension GraphicalCodeDetector {
    @nonobjc func detectAndDecodeMulti(img: Mat, decoded_info: inout [String]) -> Bool {
        let decoded_infoArray = NSMutableArray(array: decoded_info)
        let ret = detectAndDecodeMulti(img: img, decoded_info: decoded_infoArray)
        decoded_info.removeAll()
        decoded_info.append(contentsOf: decoded_infoArray as! [String])
        return ret
    }
}

public extension HOGDescriptor {
    @nonobjc func compute(img: Mat, descriptors: inout [Float], winStride: Size2i, padding: Size2i, locations: [Point2i]) -> Void {
        let descriptorsVector = FloatVector(descriptors)
        compute(img: img, descriptors: descriptorsVector, winStride: winStride, padding: padding, locations: locations)
        descriptors.removeAll()
        descriptors.append(contentsOf: descriptorsVector.array)
    }
}

public extension HOGDescriptor {
    @nonobjc func compute(img: Mat, descriptors: inout [Float], winStride: Size2i, padding: Size2i) -> Void {
        let descriptorsVector = FloatVector(descriptors)
        compute(img: img, descriptors: descriptorsVector, winStride: winStride, padding: padding)
        descriptors.removeAll()
        descriptors.append(contentsOf: descriptorsVector.array)
    }
}

public extension HOGDescriptor {
    @nonobjc func compute(img: Mat, descriptors: inout [Float], winStride: Size2i) -> Void {
        let descriptorsVector = FloatVector(descriptors)
        compute(img: img, descriptors: descriptorsVector, winStride: winStride)
        descriptors.removeAll()
        descriptors.append(contentsOf: descriptorsVector.array)
    }
}

public extension HOGDescriptor {
    @nonobjc func compute(img: Mat, descriptors: inout [Float]) -> Void {
        let descriptorsVector = FloatVector(descriptors)
        compute(img: img, descriptors: descriptorsVector)
        descriptors.removeAll()
        descriptors.append(contentsOf: descriptorsVector.array)
    }
}

public extension HOGDescriptor {
    @nonobjc func detect(img: Mat, foundLocations: inout [Point2i], weights: inout [Double], hitThreshold: Double, winStride: Size2i, padding: Size2i, searchLocations: [Point2i]) -> Void {
        let foundLocationsArray = NSMutableArray(array: foundLocations)
        let weightsVector = DoubleVector(weights)
        detect(img: img, foundLocations: foundLocationsArray, weights: weightsVector, hitThreshold: hitThreshold, winStride: winStride, padding: padding, searchLocations: searchLocations)
        foundLocations.removeAll()
        foundLocations.append(contentsOf: foundLocationsArray as! [Point2i])
        weights.removeAll()
        weights.append(contentsOf: weightsVector.array)
    }
}

public extension HOGDescriptor {
    @nonobjc func detect(img: Mat, foundLocations: inout [Point2i], weights: inout [Double], hitThreshold: Double, winStride: Size2i, padding: Size2i) -> Void {
        let foundLocationsArray = NSMutableArray(array: foundLocations)
        let weightsVector = DoubleVector(weights)
        detect(img: img, foundLocations: foundLocationsArray, weights: weightsVector, hitThreshold: hitThreshold, winStride: winStride, padding: padding)
        foundLocations.removeAll()
        foundLocations.append(contentsOf: foundLocationsArray as! [Point2i])
        weights.removeAll()
        weights.append(contentsOf: weightsVector.array)
    }
}

public extension HOGDescriptor {
    @nonobjc func detect(img: Mat, foundLocations: inout [Point2i], weights: inout [Double], hitThreshold: Double, winStride: Size2i) -> Void {
        let foundLocationsArray = NSMutableArray(array: foundLocations)
        let weightsVector = DoubleVector(weights)
        detect(img: img, foundLocations: foundLocationsArray, weights: weightsVector, hitThreshold: hitThreshold, winStride: winStride)
        foundLocations.removeAll()
        foundLocations.append(contentsOf: foundLocationsArray as! [Point2i])
        weights.removeAll()
        weights.append(contentsOf: weightsVector.array)
    }
}

public extension HOGDescriptor {
    @nonobjc func detect(img: Mat, foundLocations: inout [Point2i], weights: inout [Double], hitThreshold: Double) -> Void {
        let foundLocationsArray = NSMutableArray(array: foundLocations)
        let weightsVector = DoubleVector(weights)
        detect(img: img, foundLocations: foundLocationsArray, weights: weightsVector, hitThreshold: hitThreshold)
        foundLocations.removeAll()
        foundLocations.append(contentsOf: foundLocationsArray as! [Point2i])
        weights.removeAll()
        weights.append(contentsOf: weightsVector.array)
    }
}

public extension HOGDescriptor {
    @nonobjc func detect(img: Mat, foundLocations: inout [Point2i], weights: inout [Double]) -> Void {
        let foundLocationsArray = NSMutableArray(array: foundLocations)
        let weightsVector = DoubleVector(weights)
        detect(img: img, foundLocations: foundLocationsArray, weights: weightsVector)
        foundLocations.removeAll()
        foundLocations.append(contentsOf: foundLocationsArray as! [Point2i])
        weights.removeAll()
        weights.append(contentsOf: weightsVector.array)
    }
}

public extension HOGDescriptor {
    @nonobjc func detectMultiScale(img: Mat, foundLocations: inout [Rect2i], foundWeights: inout [Double], hitThreshold: Double, winStride: Size2i, padding: Size2i, scale: Double, groupThreshold: Double, useMeanshiftGrouping: Bool) -> Void {
        let foundLocationsArray = NSMutableArray(array: foundLocations)
        let foundWeightsVector = DoubleVector(foundWeights)
        detectMultiScale(img: img, foundLocations: foundLocationsArray, foundWeights: foundWeightsVector, hitThreshold: hitThreshold, winStride: winStride, padding: padding, scale: scale, groupThreshold: groupThreshold, useMeanshiftGrouping: useMeanshiftGrouping)
        foundLocations.removeAll()
        foundLocations.append(contentsOf: foundLocationsArray as! [Rect2i])
        foundWeights.removeAll()
        foundWeights.append(contentsOf: foundWeightsVector.array)
    }
}

public extension HOGDescriptor {
    @nonobjc func detectMultiScale(img: Mat, foundLocations: inout [Rect2i], foundWeights: inout [Double], hitThreshold: Double, winStride: Size2i, padding: Size2i, scale: Double, groupThreshold: Double) -> Void {
        let foundLocationsArray = NSMutableArray(array: foundLocations)
        let foundWeightsVector = DoubleVector(foundWeights)
        detectMultiScale(img: img, foundLocations: foundLocationsArray, foundWeights: foundWeightsVector, hitThreshold: hitThreshold, winStride: winStride, padding: padding, scale: scale, groupThreshold: groupThreshold)
        foundLocations.removeAll()
        foundLocations.append(contentsOf: foundLocationsArray as! [Rect2i])
        foundWeights.removeAll()
        foundWeights.append(contentsOf: foundWeightsVector.array)
    }
}

public extension HOGDescriptor {
    @nonobjc func detectMultiScale(img: Mat, foundLocations: inout [Rect2i], foundWeights: inout [Double], hitThreshold: Double, winStride: Size2i, padding: Size2i, scale: Double) -> Void {
        let foundLocationsArray = NSMutableArray(array: foundLocations)
        let foundWeightsVector = DoubleVector(foundWeights)
        detectMultiScale(img: img, foundLocations: foundLocationsArray, foundWeights: foundWeightsVector, hitThreshold: hitThreshold, winStride: winStride, padding: padding, scale: scale)
        foundLocations.removeAll()
        foundLocations.append(contentsOf: foundLocationsArray as! [Rect2i])
        foundWeights.removeAll()
        foundWeights.append(contentsOf: foundWeightsVector.array)
    }
}

public extension HOGDescriptor {
    @nonobjc func detectMultiScale(img: Mat, foundLocations: inout [Rect2i], foundWeights: inout [Double], hitThreshold: Double, winStride: Size2i, padding: Size2i) -> Void {
        let foundLocationsArray = NSMutableArray(array: foundLocations)
        let foundWeightsVector = DoubleVector(foundWeights)
        detectMultiScale(img: img, foundLocations: foundLocationsArray, foundWeights: foundWeightsVector, hitThreshold: hitThreshold, winStride: winStride, padding: padding)
        foundLocations.removeAll()
        foundLocations.append(contentsOf: foundLocationsArray as! [Rect2i])
        foundWeights.removeAll()
        foundWeights.append(contentsOf: foundWeightsVector.array)
    }
}

public extension HOGDescriptor {
    @nonobjc func detectMultiScale(img: Mat, foundLocations: inout [Rect2i], foundWeights: inout [Double], hitThreshold: Double, winStride: Size2i) -> Void {
        let foundLocationsArray = NSMutableArray(array: foundLocations)
        let foundWeightsVector = DoubleVector(foundWeights)
        detectMultiScale(img: img, foundLocations: foundLocationsArray, foundWeights: foundWeightsVector, hitThreshold: hitThreshold, winStride: winStride)
        foundLocations.removeAll()
        foundLocations.append(contentsOf: foundLocationsArray as! [Rect2i])
        foundWeights.removeAll()
        foundWeights.append(contentsOf: foundWeightsVector.array)
    }
}

public extension HOGDescriptor {
    @nonobjc func detectMultiScale(img: Mat, foundLocations: inout [Rect2i], foundWeights: inout [Double], hitThreshold: Double) -> Void {
        let foundLocationsArray = NSMutableArray(array: foundLocations)
        let foundWeightsVector = DoubleVector(foundWeights)
        detectMultiScale(img: img, foundLocations: foundLocationsArray, foundWeights: foundWeightsVector, hitThreshold: hitThreshold)
        foundLocations.removeAll()
        foundLocations.append(contentsOf: foundLocationsArray as! [Rect2i])
        foundWeights.removeAll()
        foundWeights.append(contentsOf: foundWeightsVector.array)
    }
}

public extension HOGDescriptor {
    @nonobjc func detectMultiScale(img: Mat, foundLocations: inout [Rect2i], foundWeights: inout [Double]) -> Void {
        let foundLocationsArray = NSMutableArray(array: foundLocations)
        let foundWeightsVector = DoubleVector(foundWeights)
        detectMultiScale(img: img, foundLocations: foundLocationsArray, foundWeights: foundWeightsVector)
        foundLocations.removeAll()
        foundLocations.append(contentsOf: foundLocationsArray as! [Rect2i])
        foundWeights.removeAll()
        foundWeights.append(contentsOf: foundWeightsVector.array)
    }
}

public extension QRCodeEncoder {
    @nonobjc func encodeStructuredAppend(encoded_info: String, qrcodes: inout [Mat]) -> Void {
        let qrcodesArray = NSMutableArray(array: qrcodes)
        encodeStructuredAppend(encoded_info: encoded_info, qrcodes: qrcodesArray)
        qrcodes.removeAll()
        qrcodes.append(contentsOf: qrcodesArray as! [Mat])
    }
}

public extension ArucoDetector {
    @nonobjc func detectMarkers(image: Mat, corners: inout [Mat], ids: Mat, rejectedImgPoints: inout [Mat]) -> Void {
        let cornersArray = NSMutableArray(array: corners)
        let rejectedImgPointsArray = NSMutableArray(array: rejectedImgPoints)
        detectMarkers(image: image, corners: cornersArray, ids: ids, rejectedImgPoints: rejectedImgPointsArray)
        corners.removeAll()
        corners.append(contentsOf: cornersArray as! [Mat])
        rejectedImgPoints.removeAll()
        rejectedImgPoints.append(contentsOf: rejectedImgPointsArray as! [Mat])
    }
}

public extension ArucoDetector {
    @nonobjc func detectMarkers(image: Mat, corners: inout [Mat], ids: Mat) -> Void {
        let cornersArray = NSMutableArray(array: corners)
        detectMarkers(image: image, corners: cornersArray, ids: ids)
        corners.removeAll()
        corners.append(contentsOf: cornersArray as! [Mat])
    }
}

public extension ArucoDetector {
    @nonobjc func refineDetectedMarkers(image: Mat, board: Board, detectedCorners: inout [Mat], detectedIds: Mat, rejectedCorners: inout [Mat], cameraMatrix: Mat, distCoeffs: Mat, recoveredIdxs: Mat) -> Void {
        let detectedCornersArray = NSMutableArray(array: detectedCorners)
        let rejectedCornersArray = NSMutableArray(array: rejectedCorners)
        refineDetectedMarkers(image: image, board: board, detectedCorners: detectedCornersArray, detectedIds: detectedIds, rejectedCorners: rejectedCornersArray, cameraMatrix: cameraMatrix, distCoeffs: distCoeffs, recoveredIdxs: recoveredIdxs)
        detectedCorners.removeAll()
        detectedCorners.append(contentsOf: detectedCornersArray as! [Mat])
        rejectedCorners.removeAll()
        rejectedCorners.append(contentsOf: rejectedCornersArray as! [Mat])
    }
}

public extension ArucoDetector {
    @nonobjc func refineDetectedMarkers(image: Mat, board: Board, detectedCorners: inout [Mat], detectedIds: Mat, rejectedCorners: inout [Mat], cameraMatrix: Mat, distCoeffs: Mat) -> Void {
        let detectedCornersArray = NSMutableArray(array: detectedCorners)
        let rejectedCornersArray = NSMutableArray(array: rejectedCorners)
        refineDetectedMarkers(image: image, board: board, detectedCorners: detectedCornersArray, detectedIds: detectedIds, rejectedCorners: rejectedCornersArray, cameraMatrix: cameraMatrix, distCoeffs: distCoeffs)
        detectedCorners.removeAll()
        detectedCorners.append(contentsOf: detectedCornersArray as! [Mat])
        rejectedCorners.removeAll()
        rejectedCorners.append(contentsOf: rejectedCornersArray as! [Mat])
    }
}

public extension ArucoDetector {
    @nonobjc func refineDetectedMarkers(image: Mat, board: Board, detectedCorners: inout [Mat], detectedIds: Mat, rejectedCorners: inout [Mat], cameraMatrix: Mat) -> Void {
        let detectedCornersArray = NSMutableArray(array: detectedCorners)
        let rejectedCornersArray = NSMutableArray(array: rejectedCorners)
        refineDetectedMarkers(image: image, board: board, detectedCorners: detectedCornersArray, detectedIds: detectedIds, rejectedCorners: rejectedCornersArray, cameraMatrix: cameraMatrix)
        detectedCorners.removeAll()
        detectedCorners.append(contentsOf: detectedCornersArray as! [Mat])
        rejectedCorners.removeAll()
        rejectedCorners.append(contentsOf: rejectedCornersArray as! [Mat])
    }
}

public extension ArucoDetector {
    @nonobjc func refineDetectedMarkers(image: Mat, board: Board, detectedCorners: inout [Mat], detectedIds: Mat, rejectedCorners: inout [Mat]) -> Void {
        let detectedCornersArray = NSMutableArray(array: detectedCorners)
        let rejectedCornersArray = NSMutableArray(array: rejectedCorners)
        refineDetectedMarkers(image: image, board: board, detectedCorners: detectedCornersArray, detectedIds: detectedIds, rejectedCorners: rejectedCornersArray)
        detectedCorners.removeAll()
        detectedCorners.append(contentsOf: detectedCornersArray as! [Mat])
        rejectedCorners.removeAll()
        rejectedCorners.append(contentsOf: rejectedCornersArray as! [Mat])
    }
}

public extension CharucoDetector {
    @nonobjc func detectBoard(image: Mat, charucoCorners: Mat, charucoIds: Mat, markerCorners: inout [Mat], markerIds: Mat) -> Void {
        let markerCornersArray = NSMutableArray(array: markerCorners)
        detectBoard(image: image, charucoCorners: charucoCorners, charucoIds: charucoIds, markerCorners: markerCornersArray, markerIds: markerIds)
        markerCorners.removeAll()
        markerCorners.append(contentsOf: markerCornersArray as! [Mat])
    }
}

public extension CharucoDetector {
    @nonobjc func detectBoard(image: Mat, charucoCorners: Mat, charucoIds: Mat, markerCorners: inout [Mat]) -> Void {
        let markerCornersArray = NSMutableArray(array: markerCorners)
        detectBoard(image: image, charucoCorners: charucoCorners, charucoIds: charucoIds, markerCorners: markerCornersArray)
        markerCorners.removeAll()
        markerCorners.append(contentsOf: markerCornersArray as! [Mat])
    }
}

public extension CharucoDetector {
    @nonobjc func detectDiamonds(image: Mat, diamondCorners: inout [Mat], diamondIds: Mat, markerCorners: inout [Mat], markerIds: Mat) -> Void {
        let diamondCornersArray = NSMutableArray(array: diamondCorners)
        let markerCornersArray = NSMutableArray(array: markerCorners)
        detectDiamonds(image: image, diamondCorners: diamondCornersArray, diamondIds: diamondIds, markerCorners: markerCornersArray, markerIds: markerIds)
        diamondCorners.removeAll()
        diamondCorners.append(contentsOf: diamondCornersArray as! [Mat])
        markerCorners.removeAll()
        markerCorners.append(contentsOf: markerCornersArray as! [Mat])
    }
}

public extension CharucoDetector {
    @nonobjc func detectDiamonds(image: Mat, diamondCorners: inout [Mat], diamondIds: Mat, markerCorners: inout [Mat]) -> Void {
        let diamondCornersArray = NSMutableArray(array: diamondCorners)
        let markerCornersArray = NSMutableArray(array: markerCorners)
        detectDiamonds(image: image, diamondCorners: diamondCornersArray, diamondIds: diamondIds, markerCorners: markerCornersArray)
        diamondCorners.removeAll()
        diamondCorners.append(contentsOf: diamondCornersArray as! [Mat])
        markerCorners.removeAll()
        markerCorners.append(contentsOf: markerCornersArray as! [Mat])
    }
}

public extension CharucoDetector {
    @nonobjc func detectDiamonds(image: Mat, diamondCorners: inout [Mat], diamondIds: Mat) -> Void {
        let diamondCornersArray = NSMutableArray(array: diamondCorners)
        detectDiamonds(image: image, diamondCorners: diamondCornersArray, diamondIds: diamondIds)
        diamondCorners.removeAll()
        diamondCorners.append(contentsOf: diamondCornersArray as! [Mat])
    }
}

public extension BarcodeDetector {
    @nonobjc func decodeWithType(img: Mat, points: Mat, decoded_info: inout [String], decoded_type: inout [String]) -> Bool {
        let decoded_infoArray = NSMutableArray(array: decoded_info)
        let decoded_typeArray = NSMutableArray(array: decoded_type)
        let ret = decodeWithType(img: img, points: points, decoded_info: decoded_infoArray, decoded_type: decoded_typeArray)
        decoded_info.removeAll()
        decoded_info.append(contentsOf: decoded_infoArray as! [String])
        decoded_type.removeAll()
        decoded_type.append(contentsOf: decoded_typeArray as! [String])
        return ret
    }
}

public extension BarcodeDetector {
    @nonobjc func detectAndDecodeWithType(img: Mat, decoded_info: inout [String], decoded_type: inout [String], points: Mat) -> Bool {
        let decoded_infoArray = NSMutableArray(array: decoded_info)
        let decoded_typeArray = NSMutableArray(array: decoded_type)
        let ret = detectAndDecodeWithType(img: img, decoded_info: decoded_infoArray, decoded_type: decoded_typeArray, points: points)
        decoded_info.removeAll()
        decoded_info.append(contentsOf: decoded_infoArray as! [String])
        decoded_type.removeAll()
        decoded_type.append(contentsOf: decoded_typeArray as! [String])
        return ret
    }
}

public extension BarcodeDetector {
    @nonobjc func detectAndDecodeWithType(img: Mat, decoded_info: inout [String], decoded_type: inout [String]) -> Bool {
        let decoded_infoArray = NSMutableArray(array: decoded_info)
        let decoded_typeArray = NSMutableArray(array: decoded_type)
        let ret = detectAndDecodeWithType(img: img, decoded_info: decoded_infoArray, decoded_type: decoded_typeArray)
        decoded_info.removeAll()
        decoded_info.append(contentsOf: decoded_infoArray as! [String])
        decoded_type.removeAll()
        decoded_type.append(contentsOf: decoded_typeArray as! [String])
        return ret
    }
}


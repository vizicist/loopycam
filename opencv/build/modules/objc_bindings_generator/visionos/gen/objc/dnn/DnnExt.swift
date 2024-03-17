public extension Dnn {
    @nonobjc class func readNetFromDarknet(bufferCfg: [UInt8], bufferModel: [UInt8]) -> Net {
        let bufferCfgVector = ByteVector(bufferCfg)
        let bufferModelVector = ByteVector(bufferModel)
        let ret = Dnn.readNetFromDarknet(bufferCfg: bufferCfgVector, bufferModel: bufferModelVector)
        return ret
    }
}

public extension Dnn {
    @nonobjc class func readNetFromDarknet(bufferCfg: [UInt8]) -> Net {
        let bufferCfgVector = ByteVector(bufferCfg)
        let ret = Dnn.readNetFromDarknet(bufferCfg: bufferCfgVector)
        return ret
    }
}

public extension Dnn {
    @nonobjc class func readNetFromCaffe(bufferProto: [UInt8], bufferModel: [UInt8]) -> Net {
        let bufferProtoVector = ByteVector(bufferProto)
        let bufferModelVector = ByteVector(bufferModel)
        let ret = Dnn.readNetFromCaffe(bufferProto: bufferProtoVector, bufferModel: bufferModelVector)
        return ret
    }
}

public extension Dnn {
    @nonobjc class func readNetFromCaffe(bufferProto: [UInt8]) -> Net {
        let bufferProtoVector = ByteVector(bufferProto)
        let ret = Dnn.readNetFromCaffe(bufferProto: bufferProtoVector)
        return ret
    }
}

public extension Dnn {
    @nonobjc class func readNetFromTensorflow(bufferModel: [UInt8], bufferConfig: [UInt8]) -> Net {
        let bufferModelVector = ByteVector(bufferModel)
        let bufferConfigVector = ByteVector(bufferConfig)
        let ret = Dnn.readNetFromTensorflow(bufferModel: bufferModelVector, bufferConfig: bufferConfigVector)
        return ret
    }
}

public extension Dnn {
    @nonobjc class func readNetFromTensorflow(bufferModel: [UInt8]) -> Net {
        let bufferModelVector = ByteVector(bufferModel)
        let ret = Dnn.readNetFromTensorflow(bufferModel: bufferModelVector)
        return ret
    }
}

public extension Dnn {
    @nonobjc class func readNetFromTFLite(bufferModel: [UInt8]) -> Net {
        let bufferModelVector = ByteVector(bufferModel)
        let ret = Dnn.readNetFromTFLite(bufferModel: bufferModelVector)
        return ret
    }
}

public extension Dnn {
    @nonobjc class func readNet(framework: String, bufferModel: [UInt8], bufferConfig: [UInt8]) -> Net {
        let bufferModelVector = ByteVector(bufferModel)
        let bufferConfigVector = ByteVector(bufferConfig)
        let ret = Dnn.readNet(framework: framework, bufferModel: bufferModelVector, bufferConfig: bufferConfigVector)
        return ret
    }
}

public extension Dnn {
    @nonobjc class func readNet(framework: String, bufferModel: [UInt8]) -> Net {
        let bufferModelVector = ByteVector(bufferModel)
        let ret = Dnn.readNet(framework: framework, bufferModel: bufferModelVector)
        return ret
    }
}

public extension Dnn {
    @nonobjc class func readNetFromModelOptimizer(bufferModelConfig: [UInt8], bufferWeights: [UInt8]) -> Net {
        let bufferModelConfigVector = ByteVector(bufferModelConfig)
        let bufferWeightsVector = ByteVector(bufferWeights)
        let ret = Dnn.readNetFromModelOptimizer(bufferModelConfig: bufferModelConfigVector, bufferWeights: bufferWeightsVector)
        return ret
    }
}

public extension Dnn {
    @nonobjc class func readNetFromONNX(buffer: [UInt8]) -> Net {
        let bufferVector = ByteVector(buffer)
        let ret = Dnn.readNetFromONNX(buffer: bufferVector)
        return ret
    }
}

public extension Dnn {
    @nonobjc class func imagesFromBlob(blob_: Mat, images_: inout [Mat]) -> Void {
        let images_Array = NSMutableArray(array: images_)
        Dnn.imagesFromBlob(blob_: blob_, images_: images_Array)
        images_.removeAll()
        images_.append(contentsOf: images_Array as! [Mat])
    }
}

public extension Dnn {
    @nonobjc class func NMSBoxes(bboxes: [Rect2d], scores: [Float], score_threshold: Float, nms_threshold: Float, indices: inout [Int32], eta: Float, top_k: Int32) -> Void {
        let scoresVector = FloatVector(scores)
        let indicesVector = IntVector(indices)
        Dnn.NMSBoxes(bboxes: bboxes, scores: scoresVector, score_threshold: score_threshold, nms_threshold: nms_threshold, indices: indicesVector, eta: eta, top_k: top_k)
        indices.removeAll()
        indices.append(contentsOf: indicesVector.array)
    }
}

public extension Dnn {
    @nonobjc class func NMSBoxes(bboxes: [Rect2d], scores: [Float], score_threshold: Float, nms_threshold: Float, indices: inout [Int32], eta: Float) -> Void {
        let scoresVector = FloatVector(scores)
        let indicesVector = IntVector(indices)
        Dnn.NMSBoxes(bboxes: bboxes, scores: scoresVector, score_threshold: score_threshold, nms_threshold: nms_threshold, indices: indicesVector, eta: eta)
        indices.removeAll()
        indices.append(contentsOf: indicesVector.array)
    }
}

public extension Dnn {
    @nonobjc class func NMSBoxes(bboxes: [Rect2d], scores: [Float], score_threshold: Float, nms_threshold: Float, indices: inout [Int32]) -> Void {
        let scoresVector = FloatVector(scores)
        let indicesVector = IntVector(indices)
        Dnn.NMSBoxes(bboxes: bboxes, scores: scoresVector, score_threshold: score_threshold, nms_threshold: nms_threshold, indices: indicesVector)
        indices.removeAll()
        indices.append(contentsOf: indicesVector.array)
    }
}

public extension Dnn {
    @nonobjc class func NMSBoxes(bboxes: [RotatedRect], scores: [Float], score_threshold: Float, nms_threshold: Float, indices: inout [Int32], eta: Float, top_k: Int32) -> Void {
        let scoresVector = FloatVector(scores)
        let indicesVector = IntVector(indices)
        Dnn.NMSBoxes(bboxes: bboxes, scores: scoresVector, score_threshold: score_threshold, nms_threshold: nms_threshold, indices: indicesVector, eta: eta, top_k: top_k)
        indices.removeAll()
        indices.append(contentsOf: indicesVector.array)
    }
}

public extension Dnn {
    @nonobjc class func NMSBoxes(bboxes: [RotatedRect], scores: [Float], score_threshold: Float, nms_threshold: Float, indices: inout [Int32], eta: Float) -> Void {
        let scoresVector = FloatVector(scores)
        let indicesVector = IntVector(indices)
        Dnn.NMSBoxes(bboxes: bboxes, scores: scoresVector, score_threshold: score_threshold, nms_threshold: nms_threshold, indices: indicesVector, eta: eta)
        indices.removeAll()
        indices.append(contentsOf: indicesVector.array)
    }
}

public extension Dnn {
    @nonobjc class func NMSBoxes(bboxes: [RotatedRect], scores: [Float], score_threshold: Float, nms_threshold: Float, indices: inout [Int32]) -> Void {
        let scoresVector = FloatVector(scores)
        let indicesVector = IntVector(indices)
        Dnn.NMSBoxes(bboxes: bboxes, scores: scoresVector, score_threshold: score_threshold, nms_threshold: nms_threshold, indices: indicesVector)
        indices.removeAll()
        indices.append(contentsOf: indicesVector.array)
    }
}

public extension Dnn {
    @nonobjc class func NMSBoxesBatched(bboxes: [Rect2d], scores: [Float], class_ids: [Int32], score_threshold: Float, nms_threshold: Float, indices: inout [Int32], eta: Float, top_k: Int32) -> Void {
        let scoresVector = FloatVector(scores)
        let class_idsVector = IntVector(class_ids)
        let indicesVector = IntVector(indices)
        Dnn.NMSBoxesBatched(bboxes: bboxes, scores: scoresVector, class_ids: class_idsVector, score_threshold: score_threshold, nms_threshold: nms_threshold, indices: indicesVector, eta: eta, top_k: top_k)
        indices.removeAll()
        indices.append(contentsOf: indicesVector.array)
    }
}

public extension Dnn {
    @nonobjc class func NMSBoxesBatched(bboxes: [Rect2d], scores: [Float], class_ids: [Int32], score_threshold: Float, nms_threshold: Float, indices: inout [Int32], eta: Float) -> Void {
        let scoresVector = FloatVector(scores)
        let class_idsVector = IntVector(class_ids)
        let indicesVector = IntVector(indices)
        Dnn.NMSBoxesBatched(bboxes: bboxes, scores: scoresVector, class_ids: class_idsVector, score_threshold: score_threshold, nms_threshold: nms_threshold, indices: indicesVector, eta: eta)
        indices.removeAll()
        indices.append(contentsOf: indicesVector.array)
    }
}

public extension Dnn {
    @nonobjc class func NMSBoxesBatched(bboxes: [Rect2d], scores: [Float], class_ids: [Int32], score_threshold: Float, nms_threshold: Float, indices: inout [Int32]) -> Void {
        let scoresVector = FloatVector(scores)
        let class_idsVector = IntVector(class_ids)
        let indicesVector = IntVector(indices)
        Dnn.NMSBoxesBatched(bboxes: bboxes, scores: scoresVector, class_ids: class_idsVector, score_threshold: score_threshold, nms_threshold: nms_threshold, indices: indicesVector)
        indices.removeAll()
        indices.append(contentsOf: indicesVector.array)
    }
}

public extension Dnn {
    @nonobjc class func softNMSBoxes(bboxes: [Rect2i], scores: [Float], updated_scores: inout [Float], score_threshold: Float, nms_threshold: Float, indices: inout [Int32], top_k: size_t, sigma: Float, method: SoftNMSMethod) -> Void {
        let scoresVector = FloatVector(scores)
        let updated_scoresVector = FloatVector(updated_scores)
        let indicesVector = IntVector(indices)
        Dnn.softNMSBoxes(bboxes: bboxes, scores: scoresVector, updated_scores: updated_scoresVector, score_threshold: score_threshold, nms_threshold: nms_threshold, indices: indicesVector, top_k: top_k, sigma: sigma, method: method)
        updated_scores.removeAll()
        updated_scores.append(contentsOf: updated_scoresVector.array)
        indices.removeAll()
        indices.append(contentsOf: indicesVector.array)
    }
}

public extension Dnn {
    @nonobjc class func softNMSBoxes(bboxes: [Rect2i], scores: [Float], updated_scores: inout [Float], score_threshold: Float, nms_threshold: Float, indices: inout [Int32], top_k: size_t, sigma: Float) -> Void {
        let scoresVector = FloatVector(scores)
        let updated_scoresVector = FloatVector(updated_scores)
        let indicesVector = IntVector(indices)
        Dnn.softNMSBoxes(bboxes: bboxes, scores: scoresVector, updated_scores: updated_scoresVector, score_threshold: score_threshold, nms_threshold: nms_threshold, indices: indicesVector, top_k: top_k, sigma: sigma)
        updated_scores.removeAll()
        updated_scores.append(contentsOf: updated_scoresVector.array)
        indices.removeAll()
        indices.append(contentsOf: indicesVector.array)
    }
}

public extension Dnn {
    @nonobjc class func softNMSBoxes(bboxes: [Rect2i], scores: [Float], updated_scores: inout [Float], score_threshold: Float, nms_threshold: Float, indices: inout [Int32], top_k: size_t) -> Void {
        let scoresVector = FloatVector(scores)
        let updated_scoresVector = FloatVector(updated_scores)
        let indicesVector = IntVector(indices)
        Dnn.softNMSBoxes(bboxes: bboxes, scores: scoresVector, updated_scores: updated_scoresVector, score_threshold: score_threshold, nms_threshold: nms_threshold, indices: indicesVector, top_k: top_k)
        updated_scores.removeAll()
        updated_scores.append(contentsOf: updated_scoresVector.array)
        indices.removeAll()
        indices.append(contentsOf: indicesVector.array)
    }
}

public extension Dnn {
    @nonobjc class func softNMSBoxes(bboxes: [Rect2i], scores: [Float], updated_scores: inout [Float], score_threshold: Float, nms_threshold: Float, indices: inout [Int32]) -> Void {
        let scoresVector = FloatVector(scores)
        let updated_scoresVector = FloatVector(updated_scores)
        let indicesVector = IntVector(indices)
        Dnn.softNMSBoxes(bboxes: bboxes, scores: scoresVector, updated_scores: updated_scoresVector, score_threshold: score_threshold, nms_threshold: nms_threshold, indices: indicesVector)
        updated_scores.removeAll()
        updated_scores.append(contentsOf: updated_scoresVector.array)
        indices.removeAll()
        indices.append(contentsOf: indicesVector.array)
    }
}

public extension DetectionModel {
    @nonobjc func detect(frame: Mat, classIds: inout [Int32], confidences: inout [Float], boxes: inout [Rect2i], confThreshold: Float, nmsThreshold: Float) -> Void {
        let classIdsVector = IntVector(classIds)
        let confidencesVector = FloatVector(confidences)
        let boxesArray = NSMutableArray(array: boxes)
        detect(frame: frame, classIds: classIdsVector, confidences: confidencesVector, boxes: boxesArray, confThreshold: confThreshold, nmsThreshold: nmsThreshold)
        classIds.removeAll()
        classIds.append(contentsOf: classIdsVector.array)
        confidences.removeAll()
        confidences.append(contentsOf: confidencesVector.array)
        boxes.removeAll()
        boxes.append(contentsOf: boxesArray as! [Rect2i])
    }
}

public extension DetectionModel {
    @nonobjc func detect(frame: Mat, classIds: inout [Int32], confidences: inout [Float], boxes: inout [Rect2i], confThreshold: Float) -> Void {
        let classIdsVector = IntVector(classIds)
        let confidencesVector = FloatVector(confidences)
        let boxesArray = NSMutableArray(array: boxes)
        detect(frame: frame, classIds: classIdsVector, confidences: confidencesVector, boxes: boxesArray, confThreshold: confThreshold)
        classIds.removeAll()
        classIds.append(contentsOf: classIdsVector.array)
        confidences.removeAll()
        confidences.append(contentsOf: confidencesVector.array)
        boxes.removeAll()
        boxes.append(contentsOf: boxesArray as! [Rect2i])
    }
}

public extension DetectionModel {
    @nonobjc func detect(frame: Mat, classIds: inout [Int32], confidences: inout [Float], boxes: inout [Rect2i]) -> Void {
        let classIdsVector = IntVector(classIds)
        let confidencesVector = FloatVector(confidences)
        let boxesArray = NSMutableArray(array: boxes)
        detect(frame: frame, classIds: classIdsVector, confidences: confidencesVector, boxes: boxesArray)
        classIds.removeAll()
        classIds.append(contentsOf: classIdsVector.array)
        confidences.removeAll()
        confidences.append(contentsOf: confidencesVector.array)
        boxes.removeAll()
        boxes.append(contentsOf: boxesArray as! [Rect2i])
    }
}

public extension Image2BlobParams {
    @nonobjc func blobRectsToImageRects(rBlob: [Rect2i], rImg: inout [Rect2i], size: Size2i) -> Void {
        let rImgArray = NSMutableArray(array: rImg)
        blobRectsToImageRects(rBlob: rBlob, rImg: rImgArray, size: size)
        rImg.removeAll()
        rImg.append(contentsOf: rImgArray as! [Rect2i])
    }
}

public extension Layer {
    @nonobjc func finalize(inputs: [Mat], outputs: inout [Mat]) -> Void {
        let outputsArray = NSMutableArray(array: outputs)
        finalize(inputs: inputs, outputs: outputsArray)
        outputs.removeAll()
        outputs.append(contentsOf: outputsArray as! [Mat])
    }
}

public extension Layer {
    @available(*, deprecated)
    @nonobjc func run(inputs: [Mat], outputs: inout [Mat], internals: inout [Mat]) -> Void {
        let outputsArray = NSMutableArray(array: outputs)
        let internalsArray = NSMutableArray(array: internals)
        run(inputs: inputs, outputs: outputsArray, internals: internalsArray)
        outputs.removeAll()
        outputs.append(contentsOf: outputsArray as! [Mat])
        internals.removeAll()
        internals.append(contentsOf: internalsArray as! [Mat])
    }
}

public extension Model {
    @nonobjc func predict(frame: Mat, outs: inout [Mat]) -> Void {
        let outsArray = NSMutableArray(array: outs)
        predict(frame: frame, outs: outsArray)
        outs.removeAll()
        outs.append(contentsOf: outsArray as! [Mat])
    }
}

public extension Net {
    @nonobjc class func readFromModelOptimizer(bufferModelConfig: [UInt8], bufferWeights: [UInt8]) -> Net {
        let bufferModelConfigVector = ByteVector(bufferModelConfig)
        let bufferWeightsVector = ByteVector(bufferWeights)
        let ret = Net.readFromModelOptimizer(bufferModelConfig: bufferModelConfigVector, bufferWeights: bufferWeightsVector)
        return ret
    }
}

public extension Net {
    @nonobjc func forward(outputBlobs: inout [Mat], outputName: String) -> Void {
        let outputBlobsArray = NSMutableArray(array: outputBlobs)
        forward(outputBlobs: outputBlobsArray, outputName: outputName)
        outputBlobs.removeAll()
        outputBlobs.append(contentsOf: outputBlobsArray as! [Mat])
    }
}

public extension Net {
    @nonobjc func forward(outputBlobs: inout [Mat]) -> Void {
        let outputBlobsArray = NSMutableArray(array: outputBlobs)
        forward(outputBlobs: outputBlobsArray)
        outputBlobs.removeAll()
        outputBlobs.append(contentsOf: outputBlobsArray as! [Mat])
    }
}

public extension Net {
    @nonobjc func forward(outputBlobs: inout [Mat], outBlobNames: [String]) -> Void {
        let outputBlobsArray = NSMutableArray(array: outputBlobs)
        forward(outputBlobs: outputBlobsArray, outBlobNames: outBlobNames)
        outputBlobs.removeAll()
        outputBlobs.append(contentsOf: outputBlobsArray as! [Mat])
    }
}

public extension Net {
    @nonobjc func forwardAndRetrieve(outputBlobs: inout [[Mat]], outBlobNames: [String]) -> Void {
        let outputBlobsArray = NSMutableArray(array: outputBlobs)
        forwardAndRetrieve(outputBlobs: outputBlobsArray, outBlobNames: outBlobNames)
        outputBlobs.removeAll()
        outputBlobs.append(contentsOf: outputBlobsArray as! [[Mat]])
    }
}

public extension Net {
    @nonobjc func getInputDetails(scales: inout [Float], zeropoints: inout [Int32]) -> Void {
        let scalesVector = FloatVector(scales)
        let zeropointsVector = IntVector(zeropoints)
        getInputDetails(scales: scalesVector, zeropoints: zeropointsVector)
        scales.removeAll()
        scales.append(contentsOf: scalesVector.array)
        zeropoints.removeAll()
        zeropoints.append(contentsOf: zeropointsVector.array)
    }
}

public extension Net {
    @nonobjc func getOutputDetails(scales: inout [Float], zeropoints: inout [Int32]) -> Void {
        let scalesVector = FloatVector(scales)
        let zeropointsVector = IntVector(zeropoints)
        getOutputDetails(scales: scalesVector, zeropoints: zeropointsVector)
        scales.removeAll()
        scales.append(contentsOf: scalesVector.array)
        zeropoints.removeAll()
        zeropoints.append(contentsOf: zeropointsVector.array)
    }
}

public extension Net {
    @nonobjc func getLayersShapes(netInputShapes: [IntVector], layersIds: inout [Int32], inLayersShapes: inout [[IntVector]], outLayersShapes: inout [[IntVector]]) -> Void {
        let layersIdsVector = IntVector(layersIds)
        let inLayersShapesArray = NSMutableArray(array: inLayersShapes)
        let outLayersShapesArray = NSMutableArray(array: outLayersShapes)
        getLayersShapes(netInputShapes: netInputShapes, layersIds: layersIdsVector, inLayersShapes: inLayersShapesArray, outLayersShapes: outLayersShapesArray)
        layersIds.removeAll()
        layersIds.append(contentsOf: layersIdsVector.array)
        inLayersShapes.removeAll()
        inLayersShapes.append(contentsOf: inLayersShapesArray as! [[IntVector]])
        outLayersShapes.removeAll()
        outLayersShapes.append(contentsOf: outLayersShapesArray as! [[IntVector]])
    }
}

public extension Net {
    @nonobjc func getLayersShapes(netInputShape: IntVector, layersIds: inout [Int32], inLayersShapes: inout [[IntVector]], outLayersShapes: inout [[IntVector]]) -> Void {
        let layersIdsVector = IntVector(layersIds)
        let inLayersShapesArray = NSMutableArray(array: inLayersShapes)
        let outLayersShapesArray = NSMutableArray(array: outLayersShapes)
        getLayersShapes(netInputShape: netInputShape, layersIds: layersIdsVector, inLayersShapes: inLayersShapesArray, outLayersShapes: outLayersShapesArray)
        layersIds.removeAll()
        layersIds.append(contentsOf: layersIdsVector.array)
        inLayersShapes.removeAll()
        inLayersShapes.append(contentsOf: inLayersShapesArray as! [[IntVector]])
        outLayersShapes.removeAll()
        outLayersShapes.append(contentsOf: outLayersShapesArray as! [[IntVector]])
    }
}

public extension Net {
    @nonobjc func getLayerTypes(layersTypes: inout [String]) -> Void {
        let layersTypesArray = NSMutableArray(array: layersTypes)
        getLayerTypes(layersTypes: layersTypesArray)
        layersTypes.removeAll()
        layersTypes.append(contentsOf: layersTypesArray as! [String])
    }
}

public extension Net {
    @nonobjc func getPerfProfile(timings: inout [Double]) -> Int {
        let timingsVector = DoubleVector(timings)
        let ret = getPerfProfile(timings: timingsVector)
        timings.removeAll()
        timings.append(contentsOf: timingsVector.array)
        return ret
    }
}

public extension TextDetectionModel {
    @nonobjc func detect(frame: Mat, detections: inout [[Point2i]], confidences: inout [Float]) -> Void {
        let detectionsArray = NSMutableArray(array: detections)
        let confidencesVector = FloatVector(confidences)
        detect(frame: frame, detections: detectionsArray, confidences: confidencesVector)
        detections.removeAll()
        detections.append(contentsOf: detectionsArray as! [[Point2i]])
        confidences.removeAll()
        confidences.append(contentsOf: confidencesVector.array)
    }
}

public extension TextDetectionModel {
    @nonobjc func detect(frame: Mat, detections: inout [[Point2i]]) -> Void {
        let detectionsArray = NSMutableArray(array: detections)
        detect(frame: frame, detections: detectionsArray)
        detections.removeAll()
        detections.append(contentsOf: detectionsArray as! [[Point2i]])
    }
}

public extension TextDetectionModel {
    @nonobjc func detectTextRectangles(frame: Mat, detections: inout [RotatedRect], confidences: inout [Float]) -> Void {
        let detectionsArray = NSMutableArray(array: detections)
        let confidencesVector = FloatVector(confidences)
        detectTextRectangles(frame: frame, detections: detectionsArray, confidences: confidencesVector)
        detections.removeAll()
        detections.append(contentsOf: detectionsArray as! [RotatedRect])
        confidences.removeAll()
        confidences.append(contentsOf: confidencesVector.array)
    }
}

public extension TextDetectionModel {
    @nonobjc func detectTextRectangles(frame: Mat, detections: inout [RotatedRect]) -> Void {
        let detectionsArray = NSMutableArray(array: detections)
        detectTextRectangles(frame: frame, detections: detectionsArray)
        detections.removeAll()
        detections.append(contentsOf: detectionsArray as! [RotatedRect])
    }
}

public extension TextRecognitionModel {
    @nonobjc func recognize(frame: Mat, roiRects: [Mat], results: inout [String]) -> Void {
        let resultsArray = NSMutableArray(array: results)
        recognize(frame: frame, roiRects: roiRects, results: resultsArray)
        results.removeAll()
        results.append(contentsOf: resultsArray as! [String])
    }
}


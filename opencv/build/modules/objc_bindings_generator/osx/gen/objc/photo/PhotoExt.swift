public extension Photo {
    @nonobjc class func fastNlMeansDenoising(src: Mat, dst: Mat, hVector: [Float], templateWindowSize: Int32, searchWindowSize: Int32, normType: Int32) -> Void {
        let hVectorVector = FloatVector(hVector)
        Photo.fastNlMeansDenoising(src: src, dst: dst, hVector: hVectorVector, templateWindowSize: templateWindowSize, searchWindowSize: searchWindowSize, normType: normType)
    }
}

public extension Photo {
    @nonobjc class func fastNlMeansDenoising(src: Mat, dst: Mat, hVector: [Float], templateWindowSize: Int32, searchWindowSize: Int32) -> Void {
        let hVectorVector = FloatVector(hVector)
        Photo.fastNlMeansDenoising(src: src, dst: dst, hVector: hVectorVector, templateWindowSize: templateWindowSize, searchWindowSize: searchWindowSize)
    }
}

public extension Photo {
    @nonobjc class func fastNlMeansDenoising(src: Mat, dst: Mat, hVector: [Float], templateWindowSize: Int32) -> Void {
        let hVectorVector = FloatVector(hVector)
        Photo.fastNlMeansDenoising(src: src, dst: dst, hVector: hVectorVector, templateWindowSize: templateWindowSize)
    }
}

public extension Photo {
    @nonobjc class func fastNlMeansDenoising(src: Mat, dst: Mat, hVector: [Float]) -> Void {
        let hVectorVector = FloatVector(hVector)
        Photo.fastNlMeansDenoising(src: src, dst: dst, hVector: hVectorVector)
    }
}

public extension Photo {
    @nonobjc class func fastNlMeansDenoisingMulti(srcImgs: [Mat], dst: Mat, imgToDenoiseIndex: Int32, temporalWindowSize: Int32, hVector: [Float], templateWindowSize: Int32, searchWindowSize: Int32, normType: Int32) -> Void {
        let hVectorVector = FloatVector(hVector)
        Photo.fastNlMeansDenoisingMulti(srcImgs: srcImgs, dst: dst, imgToDenoiseIndex: imgToDenoiseIndex, temporalWindowSize: temporalWindowSize, hVector: hVectorVector, templateWindowSize: templateWindowSize, searchWindowSize: searchWindowSize, normType: normType)
    }
}

public extension Photo {
    @nonobjc class func fastNlMeansDenoisingMulti(srcImgs: [Mat], dst: Mat, imgToDenoiseIndex: Int32, temporalWindowSize: Int32, hVector: [Float], templateWindowSize: Int32, searchWindowSize: Int32) -> Void {
        let hVectorVector = FloatVector(hVector)
        Photo.fastNlMeansDenoisingMulti(srcImgs: srcImgs, dst: dst, imgToDenoiseIndex: imgToDenoiseIndex, temporalWindowSize: temporalWindowSize, hVector: hVectorVector, templateWindowSize: templateWindowSize, searchWindowSize: searchWindowSize)
    }
}

public extension Photo {
    @nonobjc class func fastNlMeansDenoisingMulti(srcImgs: [Mat], dst: Mat, imgToDenoiseIndex: Int32, temporalWindowSize: Int32, hVector: [Float], templateWindowSize: Int32) -> Void {
        let hVectorVector = FloatVector(hVector)
        Photo.fastNlMeansDenoisingMulti(srcImgs: srcImgs, dst: dst, imgToDenoiseIndex: imgToDenoiseIndex, temporalWindowSize: temporalWindowSize, hVector: hVectorVector, templateWindowSize: templateWindowSize)
    }
}

public extension Photo {
    @nonobjc class func fastNlMeansDenoisingMulti(srcImgs: [Mat], dst: Mat, imgToDenoiseIndex: Int32, temporalWindowSize: Int32, hVector: [Float]) -> Void {
        let hVectorVector = FloatVector(hVector)
        Photo.fastNlMeansDenoisingMulti(srcImgs: srcImgs, dst: dst, imgToDenoiseIndex: imgToDenoiseIndex, temporalWindowSize: temporalWindowSize, hVector: hVectorVector)
    }
}


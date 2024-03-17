public extension Calib3d {
    @nonobjc class func solveP3P(objectPoints: Mat, imagePoints: Mat, cameraMatrix: Mat, distCoeffs: Mat, rvecs: inout [Mat], tvecs: inout [Mat], flags: Int32) -> Int32 {
        let rvecsArray = NSMutableArray(array: rvecs)
        let tvecsArray = NSMutableArray(array: tvecs)
        let ret = Calib3d.solveP3P(objectPoints: objectPoints, imagePoints: imagePoints, cameraMatrix: cameraMatrix, distCoeffs: distCoeffs, rvecs: rvecsArray, tvecs: tvecsArray, flags: flags)
        rvecs.removeAll()
        rvecs.append(contentsOf: rvecsArray as! [Mat])
        tvecs.removeAll()
        tvecs.append(contentsOf: tvecsArray as! [Mat])
        return ret
    }
}

public extension Calib3d {
    @nonobjc class func solvePnPGeneric(objectPoints: Mat, imagePoints: Mat, cameraMatrix: Mat, distCoeffs: Mat, rvecs: inout [Mat], tvecs: inout [Mat], useExtrinsicGuess: Bool, flags: SolvePnPMethod, rvec: Mat, tvec: Mat, reprojectionError: Mat) -> Int32 {
        let rvecsArray = NSMutableArray(array: rvecs)
        let tvecsArray = NSMutableArray(array: tvecs)
        let ret = Calib3d.solvePnPGeneric(objectPoints: objectPoints, imagePoints: imagePoints, cameraMatrix: cameraMatrix, distCoeffs: distCoeffs, rvecs: rvecsArray, tvecs: tvecsArray, useExtrinsicGuess: useExtrinsicGuess, flags: flags, rvec: rvec, tvec: tvec, reprojectionError: reprojectionError)
        rvecs.removeAll()
        rvecs.append(contentsOf: rvecsArray as! [Mat])
        tvecs.removeAll()
        tvecs.append(contentsOf: tvecsArray as! [Mat])
        return ret
    }
}

public extension Calib3d {
    @nonobjc class func solvePnPGeneric(objectPoints: Mat, imagePoints: Mat, cameraMatrix: Mat, distCoeffs: Mat, rvecs: inout [Mat], tvecs: inout [Mat], useExtrinsicGuess: Bool, flags: SolvePnPMethod, rvec: Mat, tvec: Mat) -> Int32 {
        let rvecsArray = NSMutableArray(array: rvecs)
        let tvecsArray = NSMutableArray(array: tvecs)
        let ret = Calib3d.solvePnPGeneric(objectPoints: objectPoints, imagePoints: imagePoints, cameraMatrix: cameraMatrix, distCoeffs: distCoeffs, rvecs: rvecsArray, tvecs: tvecsArray, useExtrinsicGuess: useExtrinsicGuess, flags: flags, rvec: rvec, tvec: tvec)
        rvecs.removeAll()
        rvecs.append(contentsOf: rvecsArray as! [Mat])
        tvecs.removeAll()
        tvecs.append(contentsOf: tvecsArray as! [Mat])
        return ret
    }
}

public extension Calib3d {
    @nonobjc class func solvePnPGeneric(objectPoints: Mat, imagePoints: Mat, cameraMatrix: Mat, distCoeffs: Mat, rvecs: inout [Mat], tvecs: inout [Mat], useExtrinsicGuess: Bool, flags: SolvePnPMethod, rvec: Mat) -> Int32 {
        let rvecsArray = NSMutableArray(array: rvecs)
        let tvecsArray = NSMutableArray(array: tvecs)
        let ret = Calib3d.solvePnPGeneric(objectPoints: objectPoints, imagePoints: imagePoints, cameraMatrix: cameraMatrix, distCoeffs: distCoeffs, rvecs: rvecsArray, tvecs: tvecsArray, useExtrinsicGuess: useExtrinsicGuess, flags: flags, rvec: rvec)
        rvecs.removeAll()
        rvecs.append(contentsOf: rvecsArray as! [Mat])
        tvecs.removeAll()
        tvecs.append(contentsOf: tvecsArray as! [Mat])
        return ret
    }
}

public extension Calib3d {
    @nonobjc class func solvePnPGeneric(objectPoints: Mat, imagePoints: Mat, cameraMatrix: Mat, distCoeffs: Mat, rvecs: inout [Mat], tvecs: inout [Mat], useExtrinsicGuess: Bool, flags: SolvePnPMethod) -> Int32 {
        let rvecsArray = NSMutableArray(array: rvecs)
        let tvecsArray = NSMutableArray(array: tvecs)
        let ret = Calib3d.solvePnPGeneric(objectPoints: objectPoints, imagePoints: imagePoints, cameraMatrix: cameraMatrix, distCoeffs: distCoeffs, rvecs: rvecsArray, tvecs: tvecsArray, useExtrinsicGuess: useExtrinsicGuess, flags: flags)
        rvecs.removeAll()
        rvecs.append(contentsOf: rvecsArray as! [Mat])
        tvecs.removeAll()
        tvecs.append(contentsOf: tvecsArray as! [Mat])
        return ret
    }
}

public extension Calib3d {
    @nonobjc class func solvePnPGeneric(objectPoints: Mat, imagePoints: Mat, cameraMatrix: Mat, distCoeffs: Mat, rvecs: inout [Mat], tvecs: inout [Mat], useExtrinsicGuess: Bool) -> Int32 {
        let rvecsArray = NSMutableArray(array: rvecs)
        let tvecsArray = NSMutableArray(array: tvecs)
        let ret = Calib3d.solvePnPGeneric(objectPoints: objectPoints, imagePoints: imagePoints, cameraMatrix: cameraMatrix, distCoeffs: distCoeffs, rvecs: rvecsArray, tvecs: tvecsArray, useExtrinsicGuess: useExtrinsicGuess)
        rvecs.removeAll()
        rvecs.append(contentsOf: rvecsArray as! [Mat])
        tvecs.removeAll()
        tvecs.append(contentsOf: tvecsArray as! [Mat])
        return ret
    }
}

public extension Calib3d {
    @nonobjc class func solvePnPGeneric(objectPoints: Mat, imagePoints: Mat, cameraMatrix: Mat, distCoeffs: Mat, rvecs: inout [Mat], tvecs: inout [Mat]) -> Int32 {
        let rvecsArray = NSMutableArray(array: rvecs)
        let tvecsArray = NSMutableArray(array: tvecs)
        let ret = Calib3d.solvePnPGeneric(objectPoints: objectPoints, imagePoints: imagePoints, cameraMatrix: cameraMatrix, distCoeffs: distCoeffs, rvecs: rvecsArray, tvecs: tvecsArray)
        rvecs.removeAll()
        rvecs.append(contentsOf: rvecsArray as! [Mat])
        tvecs.removeAll()
        tvecs.append(contentsOf: tvecsArray as! [Mat])
        return ret
    }
}

public extension Calib3d {
    @nonobjc class func calibrateCamera(objectPoints: [Mat], imagePoints: [Mat], imageSize: Size2i, cameraMatrix: Mat, distCoeffs: Mat, rvecs: inout [Mat], tvecs: inout [Mat], stdDeviationsIntrinsics: Mat, stdDeviationsExtrinsics: Mat, perViewErrors: Mat, flags: Int32, criteria: TermCriteria) -> Double {
        let rvecsArray = NSMutableArray(array: rvecs)
        let tvecsArray = NSMutableArray(array: tvecs)
        let ret = Calib3d.calibrateCamera(objectPoints: objectPoints, imagePoints: imagePoints, imageSize: imageSize, cameraMatrix: cameraMatrix, distCoeffs: distCoeffs, rvecs: rvecsArray, tvecs: tvecsArray, stdDeviationsIntrinsics: stdDeviationsIntrinsics, stdDeviationsExtrinsics: stdDeviationsExtrinsics, perViewErrors: perViewErrors, flags: flags, criteria: criteria)
        rvecs.removeAll()
        rvecs.append(contentsOf: rvecsArray as! [Mat])
        tvecs.removeAll()
        tvecs.append(contentsOf: tvecsArray as! [Mat])
        return ret
    }
}

public extension Calib3d {
    @nonobjc class func calibrateCamera(objectPoints: [Mat], imagePoints: [Mat], imageSize: Size2i, cameraMatrix: Mat, distCoeffs: Mat, rvecs: inout [Mat], tvecs: inout [Mat], stdDeviationsIntrinsics: Mat, stdDeviationsExtrinsics: Mat, perViewErrors: Mat, flags: Int32) -> Double {
        let rvecsArray = NSMutableArray(array: rvecs)
        let tvecsArray = NSMutableArray(array: tvecs)
        let ret = Calib3d.calibrateCamera(objectPoints: objectPoints, imagePoints: imagePoints, imageSize: imageSize, cameraMatrix: cameraMatrix, distCoeffs: distCoeffs, rvecs: rvecsArray, tvecs: tvecsArray, stdDeviationsIntrinsics: stdDeviationsIntrinsics, stdDeviationsExtrinsics: stdDeviationsExtrinsics, perViewErrors: perViewErrors, flags: flags)
        rvecs.removeAll()
        rvecs.append(contentsOf: rvecsArray as! [Mat])
        tvecs.removeAll()
        tvecs.append(contentsOf: tvecsArray as! [Mat])
        return ret
    }
}

public extension Calib3d {
    @nonobjc class func calibrateCamera(objectPoints: [Mat], imagePoints: [Mat], imageSize: Size2i, cameraMatrix: Mat, distCoeffs: Mat, rvecs: inout [Mat], tvecs: inout [Mat], stdDeviationsIntrinsics: Mat, stdDeviationsExtrinsics: Mat, perViewErrors: Mat) -> Double {
        let rvecsArray = NSMutableArray(array: rvecs)
        let tvecsArray = NSMutableArray(array: tvecs)
        let ret = Calib3d.calibrateCamera(objectPoints: objectPoints, imagePoints: imagePoints, imageSize: imageSize, cameraMatrix: cameraMatrix, distCoeffs: distCoeffs, rvecs: rvecsArray, tvecs: tvecsArray, stdDeviationsIntrinsics: stdDeviationsIntrinsics, stdDeviationsExtrinsics: stdDeviationsExtrinsics, perViewErrors: perViewErrors)
        rvecs.removeAll()
        rvecs.append(contentsOf: rvecsArray as! [Mat])
        tvecs.removeAll()
        tvecs.append(contentsOf: tvecsArray as! [Mat])
        return ret
    }
}

public extension Calib3d {
    @nonobjc class func calibrateCamera(objectPoints: [Mat], imagePoints: [Mat], imageSize: Size2i, cameraMatrix: Mat, distCoeffs: Mat, rvecs: inout [Mat], tvecs: inout [Mat], flags: Int32, criteria: TermCriteria) -> Double {
        let rvecsArray = NSMutableArray(array: rvecs)
        let tvecsArray = NSMutableArray(array: tvecs)
        let ret = Calib3d.calibrateCamera(objectPoints: objectPoints, imagePoints: imagePoints, imageSize: imageSize, cameraMatrix: cameraMatrix, distCoeffs: distCoeffs, rvecs: rvecsArray, tvecs: tvecsArray, flags: flags, criteria: criteria)
        rvecs.removeAll()
        rvecs.append(contentsOf: rvecsArray as! [Mat])
        tvecs.removeAll()
        tvecs.append(contentsOf: tvecsArray as! [Mat])
        return ret
    }
}

public extension Calib3d {
    @nonobjc class func calibrateCamera(objectPoints: [Mat], imagePoints: [Mat], imageSize: Size2i, cameraMatrix: Mat, distCoeffs: Mat, rvecs: inout [Mat], tvecs: inout [Mat], flags: Int32) -> Double {
        let rvecsArray = NSMutableArray(array: rvecs)
        let tvecsArray = NSMutableArray(array: tvecs)
        let ret = Calib3d.calibrateCamera(objectPoints: objectPoints, imagePoints: imagePoints, imageSize: imageSize, cameraMatrix: cameraMatrix, distCoeffs: distCoeffs, rvecs: rvecsArray, tvecs: tvecsArray, flags: flags)
        rvecs.removeAll()
        rvecs.append(contentsOf: rvecsArray as! [Mat])
        tvecs.removeAll()
        tvecs.append(contentsOf: tvecsArray as! [Mat])
        return ret
    }
}

public extension Calib3d {
    @nonobjc class func calibrateCamera(objectPoints: [Mat], imagePoints: [Mat], imageSize: Size2i, cameraMatrix: Mat, distCoeffs: Mat, rvecs: inout [Mat], tvecs: inout [Mat]) -> Double {
        let rvecsArray = NSMutableArray(array: rvecs)
        let tvecsArray = NSMutableArray(array: tvecs)
        let ret = Calib3d.calibrateCamera(objectPoints: objectPoints, imagePoints: imagePoints, imageSize: imageSize, cameraMatrix: cameraMatrix, distCoeffs: distCoeffs, rvecs: rvecsArray, tvecs: tvecsArray)
        rvecs.removeAll()
        rvecs.append(contentsOf: rvecsArray as! [Mat])
        tvecs.removeAll()
        tvecs.append(contentsOf: tvecsArray as! [Mat])
        return ret
    }
}

public extension Calib3d {
    @nonobjc class func calibrateCameraRO(objectPoints: [Mat], imagePoints: [Mat], imageSize: Size2i, iFixedPoint: Int32, cameraMatrix: Mat, distCoeffs: Mat, rvecs: inout [Mat], tvecs: inout [Mat], newObjPoints: Mat, stdDeviationsIntrinsics: Mat, stdDeviationsExtrinsics: Mat, stdDeviationsObjPoints: Mat, perViewErrors: Mat, flags: Int32, criteria: TermCriteria) -> Double {
        let rvecsArray = NSMutableArray(array: rvecs)
        let tvecsArray = NSMutableArray(array: tvecs)
        let ret = Calib3d.calibrateCameraRO(objectPoints: objectPoints, imagePoints: imagePoints, imageSize: imageSize, iFixedPoint: iFixedPoint, cameraMatrix: cameraMatrix, distCoeffs: distCoeffs, rvecs: rvecsArray, tvecs: tvecsArray, newObjPoints: newObjPoints, stdDeviationsIntrinsics: stdDeviationsIntrinsics, stdDeviationsExtrinsics: stdDeviationsExtrinsics, stdDeviationsObjPoints: stdDeviationsObjPoints, perViewErrors: perViewErrors, flags: flags, criteria: criteria)
        rvecs.removeAll()
        rvecs.append(contentsOf: rvecsArray as! [Mat])
        tvecs.removeAll()
        tvecs.append(contentsOf: tvecsArray as! [Mat])
        return ret
    }
}

public extension Calib3d {
    @nonobjc class func calibrateCameraRO(objectPoints: [Mat], imagePoints: [Mat], imageSize: Size2i, iFixedPoint: Int32, cameraMatrix: Mat, distCoeffs: Mat, rvecs: inout [Mat], tvecs: inout [Mat], newObjPoints: Mat, stdDeviationsIntrinsics: Mat, stdDeviationsExtrinsics: Mat, stdDeviationsObjPoints: Mat, perViewErrors: Mat, flags: Int32) -> Double {
        let rvecsArray = NSMutableArray(array: rvecs)
        let tvecsArray = NSMutableArray(array: tvecs)
        let ret = Calib3d.calibrateCameraRO(objectPoints: objectPoints, imagePoints: imagePoints, imageSize: imageSize, iFixedPoint: iFixedPoint, cameraMatrix: cameraMatrix, distCoeffs: distCoeffs, rvecs: rvecsArray, tvecs: tvecsArray, newObjPoints: newObjPoints, stdDeviationsIntrinsics: stdDeviationsIntrinsics, stdDeviationsExtrinsics: stdDeviationsExtrinsics, stdDeviationsObjPoints: stdDeviationsObjPoints, perViewErrors: perViewErrors, flags: flags)
        rvecs.removeAll()
        rvecs.append(contentsOf: rvecsArray as! [Mat])
        tvecs.removeAll()
        tvecs.append(contentsOf: tvecsArray as! [Mat])
        return ret
    }
}

public extension Calib3d {
    @nonobjc class func calibrateCameraRO(objectPoints: [Mat], imagePoints: [Mat], imageSize: Size2i, iFixedPoint: Int32, cameraMatrix: Mat, distCoeffs: Mat, rvecs: inout [Mat], tvecs: inout [Mat], newObjPoints: Mat, stdDeviationsIntrinsics: Mat, stdDeviationsExtrinsics: Mat, stdDeviationsObjPoints: Mat, perViewErrors: Mat) -> Double {
        let rvecsArray = NSMutableArray(array: rvecs)
        let tvecsArray = NSMutableArray(array: tvecs)
        let ret = Calib3d.calibrateCameraRO(objectPoints: objectPoints, imagePoints: imagePoints, imageSize: imageSize, iFixedPoint: iFixedPoint, cameraMatrix: cameraMatrix, distCoeffs: distCoeffs, rvecs: rvecsArray, tvecs: tvecsArray, newObjPoints: newObjPoints, stdDeviationsIntrinsics: stdDeviationsIntrinsics, stdDeviationsExtrinsics: stdDeviationsExtrinsics, stdDeviationsObjPoints: stdDeviationsObjPoints, perViewErrors: perViewErrors)
        rvecs.removeAll()
        rvecs.append(contentsOf: rvecsArray as! [Mat])
        tvecs.removeAll()
        tvecs.append(contentsOf: tvecsArray as! [Mat])
        return ret
    }
}

public extension Calib3d {
    @nonobjc class func calibrateCameraRO(objectPoints: [Mat], imagePoints: [Mat], imageSize: Size2i, iFixedPoint: Int32, cameraMatrix: Mat, distCoeffs: Mat, rvecs: inout [Mat], tvecs: inout [Mat], newObjPoints: Mat, flags: Int32, criteria: TermCriteria) -> Double {
        let rvecsArray = NSMutableArray(array: rvecs)
        let tvecsArray = NSMutableArray(array: tvecs)
        let ret = Calib3d.calibrateCameraRO(objectPoints: objectPoints, imagePoints: imagePoints, imageSize: imageSize, iFixedPoint: iFixedPoint, cameraMatrix: cameraMatrix, distCoeffs: distCoeffs, rvecs: rvecsArray, tvecs: tvecsArray, newObjPoints: newObjPoints, flags: flags, criteria: criteria)
        rvecs.removeAll()
        rvecs.append(contentsOf: rvecsArray as! [Mat])
        tvecs.removeAll()
        tvecs.append(contentsOf: tvecsArray as! [Mat])
        return ret
    }
}

public extension Calib3d {
    @nonobjc class func calibrateCameraRO(objectPoints: [Mat], imagePoints: [Mat], imageSize: Size2i, iFixedPoint: Int32, cameraMatrix: Mat, distCoeffs: Mat, rvecs: inout [Mat], tvecs: inout [Mat], newObjPoints: Mat, flags: Int32) -> Double {
        let rvecsArray = NSMutableArray(array: rvecs)
        let tvecsArray = NSMutableArray(array: tvecs)
        let ret = Calib3d.calibrateCameraRO(objectPoints: objectPoints, imagePoints: imagePoints, imageSize: imageSize, iFixedPoint: iFixedPoint, cameraMatrix: cameraMatrix, distCoeffs: distCoeffs, rvecs: rvecsArray, tvecs: tvecsArray, newObjPoints: newObjPoints, flags: flags)
        rvecs.removeAll()
        rvecs.append(contentsOf: rvecsArray as! [Mat])
        tvecs.removeAll()
        tvecs.append(contentsOf: tvecsArray as! [Mat])
        return ret
    }
}

public extension Calib3d {
    @nonobjc class func calibrateCameraRO(objectPoints: [Mat], imagePoints: [Mat], imageSize: Size2i, iFixedPoint: Int32, cameraMatrix: Mat, distCoeffs: Mat, rvecs: inout [Mat], tvecs: inout [Mat], newObjPoints: Mat) -> Double {
        let rvecsArray = NSMutableArray(array: rvecs)
        let tvecsArray = NSMutableArray(array: tvecs)
        let ret = Calib3d.calibrateCameraRO(objectPoints: objectPoints, imagePoints: imagePoints, imageSize: imageSize, iFixedPoint: iFixedPoint, cameraMatrix: cameraMatrix, distCoeffs: distCoeffs, rvecs: rvecsArray, tvecs: tvecsArray, newObjPoints: newObjPoints)
        rvecs.removeAll()
        rvecs.append(contentsOf: rvecsArray as! [Mat])
        tvecs.removeAll()
        tvecs.append(contentsOf: tvecsArray as! [Mat])
        return ret
    }
}

public extension Calib3d {
    @nonobjc class func stereoCalibrate(objectPoints: [Mat], imagePoints1: [Mat], imagePoints2: [Mat], cameraMatrix1: Mat, distCoeffs1: Mat, cameraMatrix2: Mat, distCoeffs2: Mat, imageSize: Size2i, R: Mat, T: Mat, E: Mat, F: Mat, rvecs: inout [Mat], tvecs: inout [Mat], perViewErrors: Mat, flags: Int32, criteria: TermCriteria) -> Double {
        let rvecsArray = NSMutableArray(array: rvecs)
        let tvecsArray = NSMutableArray(array: tvecs)
        let ret = Calib3d.stereoCalibrate(objectPoints: objectPoints, imagePoints1: imagePoints1, imagePoints2: imagePoints2, cameraMatrix1: cameraMatrix1, distCoeffs1: distCoeffs1, cameraMatrix2: cameraMatrix2, distCoeffs2: distCoeffs2, imageSize: imageSize, R: R, T: T, E: E, F: F, rvecs: rvecsArray, tvecs: tvecsArray, perViewErrors: perViewErrors, flags: flags, criteria: criteria)
        rvecs.removeAll()
        rvecs.append(contentsOf: rvecsArray as! [Mat])
        tvecs.removeAll()
        tvecs.append(contentsOf: tvecsArray as! [Mat])
        return ret
    }
}

public extension Calib3d {
    @nonobjc class func stereoCalibrate(objectPoints: [Mat], imagePoints1: [Mat], imagePoints2: [Mat], cameraMatrix1: Mat, distCoeffs1: Mat, cameraMatrix2: Mat, distCoeffs2: Mat, imageSize: Size2i, R: Mat, T: Mat, E: Mat, F: Mat, rvecs: inout [Mat], tvecs: inout [Mat], perViewErrors: Mat, flags: Int32) -> Double {
        let rvecsArray = NSMutableArray(array: rvecs)
        let tvecsArray = NSMutableArray(array: tvecs)
        let ret = Calib3d.stereoCalibrate(objectPoints: objectPoints, imagePoints1: imagePoints1, imagePoints2: imagePoints2, cameraMatrix1: cameraMatrix1, distCoeffs1: distCoeffs1, cameraMatrix2: cameraMatrix2, distCoeffs2: distCoeffs2, imageSize: imageSize, R: R, T: T, E: E, F: F, rvecs: rvecsArray, tvecs: tvecsArray, perViewErrors: perViewErrors, flags: flags)
        rvecs.removeAll()
        rvecs.append(contentsOf: rvecsArray as! [Mat])
        tvecs.removeAll()
        tvecs.append(contentsOf: tvecsArray as! [Mat])
        return ret
    }
}

public extension Calib3d {
    @nonobjc class func stereoCalibrate(objectPoints: [Mat], imagePoints1: [Mat], imagePoints2: [Mat], cameraMatrix1: Mat, distCoeffs1: Mat, cameraMatrix2: Mat, distCoeffs2: Mat, imageSize: Size2i, R: Mat, T: Mat, E: Mat, F: Mat, rvecs: inout [Mat], tvecs: inout [Mat], perViewErrors: Mat) -> Double {
        let rvecsArray = NSMutableArray(array: rvecs)
        let tvecsArray = NSMutableArray(array: tvecs)
        let ret = Calib3d.stereoCalibrate(objectPoints: objectPoints, imagePoints1: imagePoints1, imagePoints2: imagePoints2, cameraMatrix1: cameraMatrix1, distCoeffs1: distCoeffs1, cameraMatrix2: cameraMatrix2, distCoeffs2: distCoeffs2, imageSize: imageSize, R: R, T: T, E: E, F: F, rvecs: rvecsArray, tvecs: tvecsArray, perViewErrors: perViewErrors)
        rvecs.removeAll()
        rvecs.append(contentsOf: rvecsArray as! [Mat])
        tvecs.removeAll()
        tvecs.append(contentsOf: tvecsArray as! [Mat])
        return ret
    }
}

public extension Calib3d {
    @nonobjc class func decomposeHomographyMat(H: Mat, K: Mat, rotations: inout [Mat], translations: inout [Mat], normals: inout [Mat]) -> Int32 {
        let rotationsArray = NSMutableArray(array: rotations)
        let translationsArray = NSMutableArray(array: translations)
        let normalsArray = NSMutableArray(array: normals)
        let ret = Calib3d.decomposeHomographyMat(H: H, K: K, rotations: rotationsArray, translations: translationsArray, normals: normalsArray)
        rotations.removeAll()
        rotations.append(contentsOf: rotationsArray as! [Mat])
        translations.removeAll()
        translations.append(contentsOf: translationsArray as! [Mat])
        normals.removeAll()
        normals.append(contentsOf: normalsArray as! [Mat])
        return ret
    }
}

public extension Calib3d {
    @nonobjc class func calibrate(objectPoints: [Mat], imagePoints: [Mat], image_size: Size2i, K: Mat, D: Mat, rvecs: inout [Mat], tvecs: inout [Mat], flags: Int32, criteria: TermCriteria) -> Double {
        let rvecsArray = NSMutableArray(array: rvecs)
        let tvecsArray = NSMutableArray(array: tvecs)
        let ret = Calib3d.calibrate(objectPoints: objectPoints, imagePoints: imagePoints, image_size: image_size, K: K, D: D, rvecs: rvecsArray, tvecs: tvecsArray, flags: flags, criteria: criteria)
        rvecs.removeAll()
        rvecs.append(contentsOf: rvecsArray as! [Mat])
        tvecs.removeAll()
        tvecs.append(contentsOf: tvecsArray as! [Mat])
        return ret
    }
}

public extension Calib3d {
    @nonobjc class func calibrate(objectPoints: [Mat], imagePoints: [Mat], image_size: Size2i, K: Mat, D: Mat, rvecs: inout [Mat], tvecs: inout [Mat], flags: Int32) -> Double {
        let rvecsArray = NSMutableArray(array: rvecs)
        let tvecsArray = NSMutableArray(array: tvecs)
        let ret = Calib3d.calibrate(objectPoints: objectPoints, imagePoints: imagePoints, image_size: image_size, K: K, D: D, rvecs: rvecsArray, tvecs: tvecsArray, flags: flags)
        rvecs.removeAll()
        rvecs.append(contentsOf: rvecsArray as! [Mat])
        tvecs.removeAll()
        tvecs.append(contentsOf: tvecsArray as! [Mat])
        return ret
    }
}

public extension Calib3d {
    @nonobjc class func calibrate(objectPoints: [Mat], imagePoints: [Mat], image_size: Size2i, K: Mat, D: Mat, rvecs: inout [Mat], tvecs: inout [Mat]) -> Double {
        let rvecsArray = NSMutableArray(array: rvecs)
        let tvecsArray = NSMutableArray(array: tvecs)
        let ret = Calib3d.calibrate(objectPoints: objectPoints, imagePoints: imagePoints, image_size: image_size, K: K, D: D, rvecs: rvecsArray, tvecs: tvecsArray)
        rvecs.removeAll()
        rvecs.append(contentsOf: rvecsArray as! [Mat])
        tvecs.removeAll()
        tvecs.append(contentsOf: tvecsArray as! [Mat])
        return ret
    }
}

public extension Calib3d {
    @nonobjc class func stereoCalibrate(objectPoints: [Mat], imagePoints1: [Mat], imagePoints2: [Mat], K1: Mat, D1: Mat, K2: Mat, D2: Mat, imageSize: Size2i, R: Mat, T: Mat, rvecs: inout [Mat], tvecs: inout [Mat], flags: Int32, criteria: TermCriteria) -> Double {
        let rvecsArray = NSMutableArray(array: rvecs)
        let tvecsArray = NSMutableArray(array: tvecs)
        let ret = Calib3d.stereoCalibrate(objectPoints: objectPoints, imagePoints1: imagePoints1, imagePoints2: imagePoints2, K1: K1, D1: D1, K2: K2, D2: D2, imageSize: imageSize, R: R, T: T, rvecs: rvecsArray, tvecs: tvecsArray, flags: flags, criteria: criteria)
        rvecs.removeAll()
        rvecs.append(contentsOf: rvecsArray as! [Mat])
        tvecs.removeAll()
        tvecs.append(contentsOf: tvecsArray as! [Mat])
        return ret
    }
}

public extension Calib3d {
    @nonobjc class func stereoCalibrate(objectPoints: [Mat], imagePoints1: [Mat], imagePoints2: [Mat], K1: Mat, D1: Mat, K2: Mat, D2: Mat, imageSize: Size2i, R: Mat, T: Mat, rvecs: inout [Mat], tvecs: inout [Mat], flags: Int32) -> Double {
        let rvecsArray = NSMutableArray(array: rvecs)
        let tvecsArray = NSMutableArray(array: tvecs)
        let ret = Calib3d.stereoCalibrate(objectPoints: objectPoints, imagePoints1: imagePoints1, imagePoints2: imagePoints2, K1: K1, D1: D1, K2: K2, D2: D2, imageSize: imageSize, R: R, T: T, rvecs: rvecsArray, tvecs: tvecsArray, flags: flags)
        rvecs.removeAll()
        rvecs.append(contentsOf: rvecsArray as! [Mat])
        tvecs.removeAll()
        tvecs.append(contentsOf: tvecsArray as! [Mat])
        return ret
    }
}

public extension Calib3d {
    @nonobjc class func stereoCalibrate(objectPoints: [Mat], imagePoints1: [Mat], imagePoints2: [Mat], K1: Mat, D1: Mat, K2: Mat, D2: Mat, imageSize: Size2i, R: Mat, T: Mat, rvecs: inout [Mat], tvecs: inout [Mat]) -> Double {
        let rvecsArray = NSMutableArray(array: rvecs)
        let tvecsArray = NSMutableArray(array: tvecs)
        let ret = Calib3d.stereoCalibrate(objectPoints: objectPoints, imagePoints1: imagePoints1, imagePoints2: imagePoints2, K1: K1, D1: D1, K2: K2, D2: D2, imageSize: imageSize, R: R, T: T, rvecs: rvecsArray, tvecs: tvecsArray)
        rvecs.removeAll()
        rvecs.append(contentsOf: rvecsArray as! [Mat])
        tvecs.removeAll()
        tvecs.append(contentsOf: tvecsArray as! [Mat])
        return ret
    }
}


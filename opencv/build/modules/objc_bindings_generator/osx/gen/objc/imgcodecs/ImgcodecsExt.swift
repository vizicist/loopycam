public extension Imgcodecs {
    @nonobjc class func imreadmulti(filename: String, mats: inout [Mat], flags: Int32) -> Bool {
        let matsArray = NSMutableArray(array: mats)
        let ret = Imgcodecs.imreadmulti(filename: filename, mats: matsArray, flags: flags)
        mats.removeAll()
        mats.append(contentsOf: matsArray as! [Mat])
        return ret
    }
}

public extension Imgcodecs {
    @nonobjc class func imreadmulti(filename: String, mats: inout [Mat]) -> Bool {
        let matsArray = NSMutableArray(array: mats)
        let ret = Imgcodecs.imreadmulti(filename: filename, mats: matsArray)
        mats.removeAll()
        mats.append(contentsOf: matsArray as! [Mat])
        return ret
    }
}

public extension Imgcodecs {
    @nonobjc class func imreadmulti(filename: String, mats: inout [Mat], start: Int32, count: Int32, flags: Int32) -> Bool {
        let matsArray = NSMutableArray(array: mats)
        let ret = Imgcodecs.imreadmulti(filename: filename, mats: matsArray, start: start, count: count, flags: flags)
        mats.removeAll()
        mats.append(contentsOf: matsArray as! [Mat])
        return ret
    }
}

public extension Imgcodecs {
    @nonobjc class func imreadmulti(filename: String, mats: inout [Mat], start: Int32, count: Int32) -> Bool {
        let matsArray = NSMutableArray(array: mats)
        let ret = Imgcodecs.imreadmulti(filename: filename, mats: matsArray, start: start, count: count)
        mats.removeAll()
        mats.append(contentsOf: matsArray as! [Mat])
        return ret
    }
}

public extension Imgcodecs {
    @nonobjc class func imwrite(filename: String, img: Mat, params: [Int32]) -> Bool {
        let paramsVector = IntVector(params)
        let ret = Imgcodecs.imwrite(filename: filename, img: img, params: paramsVector)
        return ret
    }
}

public extension Imgcodecs {
    @nonobjc class func imwritemulti(filename: String, img: [Mat], params: [Int32]) -> Bool {
        let paramsVector = IntVector(params)
        let ret = Imgcodecs.imwritemulti(filename: filename, img: img, params: paramsVector)
        return ret
    }
}

public extension Imgcodecs {
    @nonobjc class func imdecodemulti(buf: Mat, flags: Int32, mats: inout [Mat], range: Range) -> Bool {
        let matsArray = NSMutableArray(array: mats)
        let ret = Imgcodecs.imdecodemulti(buf: buf, flags: flags, mats: matsArray, range: range)
        mats.removeAll()
        mats.append(contentsOf: matsArray as! [Mat])
        return ret
    }
}

public extension Imgcodecs {
    @nonobjc class func imdecodemulti(buf: Mat, flags: Int32, mats: inout [Mat]) -> Bool {
        let matsArray = NSMutableArray(array: mats)
        let ret = Imgcodecs.imdecodemulti(buf: buf, flags: flags, mats: matsArray)
        mats.removeAll()
        mats.append(contentsOf: matsArray as! [Mat])
        return ret
    }
}

public extension Imgcodecs {
    @nonobjc class func imencode(ext: String, img: Mat, buf: inout [UInt8], params: [Int32]) -> Bool {
        let bufVector = ByteVector(buf)
        let paramsVector = IntVector(params)
        let ret = Imgcodecs.imencode(ext: ext, img: img, buf: bufVector, params: paramsVector)
        buf.removeAll()
        buf.append(contentsOf: bufVector.unsignedArray)
        return ret
    }
}

public extension Imgcodecs {
    @nonobjc class func imencode(ext: String, img: Mat, buf: inout [UInt8]) -> Bool {
        let bufVector = ByteVector(buf)
        let ret = Imgcodecs.imencode(ext: ext, img: img, buf: bufVector)
        buf.removeAll()
        buf.append(contentsOf: bufVector.unsignedArray)
        return ret
    }
}


public extension Core {
    @nonobjc class func meanStdDev(src: Mat, mean: inout [Double], stddev: inout [Double], mask: Mat) -> Void {
        let meanVector = DoubleVector(mean)
        let stddevVector = DoubleVector(stddev)
        Core.meanStdDev(src: src, mean: meanVector, stddev: stddevVector, mask: mask)
        mean.removeAll()
        mean.append(contentsOf: meanVector.array)
        stddev.removeAll()
        stddev.append(contentsOf: stddevVector.array)
    }
}

public extension Core {
    @nonobjc class func meanStdDev(src: Mat, mean: inout [Double], stddev: inout [Double]) -> Void {
        let meanVector = DoubleVector(mean)
        let stddevVector = DoubleVector(stddev)
        Core.meanStdDev(src: src, mean: meanVector, stddev: stddevVector)
        mean.removeAll()
        mean.append(contentsOf: meanVector.array)
        stddev.removeAll()
        stddev.append(contentsOf: stddevVector.array)
    }
}

public extension Core {
    @nonobjc class func split(m: Mat, mv: inout [Mat]) -> Void {
        let mvArray = NSMutableArray(array: mv)
        Core.split(m: m, mv: mvArray)
        mv.removeAll()
        mv.append(contentsOf: mvArray as! [Mat])
    }
}

public extension Core {
    @nonobjc class func mixChannels(src: [Mat], dst: [Mat], fromTo: [Int32]) -> Void {
        let fromToVector = IntVector(fromTo)
        Core.mixChannels(src: src, dst: dst, fromTo: fromToVector)
    }
}

public extension Core {
    @nonobjc class func transposeND(src: Mat, order: [Int32], dst: Mat) -> Void {
        let orderVector = IntVector(order)
        Core.transposeND(src: src, order: orderVector, dst: dst)
    }
}


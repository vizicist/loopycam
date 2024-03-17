public extension VideoCapture {
    @nonobjc convenience init(filename: String, apiPreference: Int32, params: [Int32]) {
        let paramsVector = IntVector(params)
        self.init(filename: filename, apiPreference: apiPreference, params: paramsVector)
    }
}

public extension VideoCapture {
    @nonobjc convenience init(index: Int32, apiPreference: Int32, params: [Int32]) {
        let paramsVector = IntVector(params)
        self.init(index: index, apiPreference: apiPreference, params: paramsVector)
    }
}

public extension VideoCapture {
    @nonobjc func open(filename: String, apiPreference: Int32, params: [Int32]) -> Bool {
        let paramsVector = IntVector(params)
        let ret = open(filename: filename, apiPreference: apiPreference, params: paramsVector)
        return ret
    }
}

public extension VideoCapture {
    @nonobjc func open(index: Int32, apiPreference: Int32, params: [Int32]) -> Bool {
        let paramsVector = IntVector(params)
        let ret = open(index: index, apiPreference: apiPreference, params: paramsVector)
        return ret
    }
}

public extension VideoWriter {
    @nonobjc convenience init(filename: String, fourcc: Int32, fps: Double, frameSize: Size2i, params: [Int32]) {
        let paramsVector = IntVector(params)
        self.init(filename: filename, fourcc: fourcc, fps: fps, frameSize: frameSize, params: paramsVector)
    }
}

public extension VideoWriter {
    @nonobjc convenience init(filename: String, apiPreference: Int32, fourcc: Int32, fps: Double, frameSize: Size2i, params: [Int32]) {
        let paramsVector = IntVector(params)
        self.init(filename: filename, apiPreference: apiPreference, fourcc: fourcc, fps: fps, frameSize: frameSize, params: paramsVector)
    }
}

public extension VideoWriter {
    @nonobjc func open(filename: String, fourcc: Int32, fps: Double, frameSize: Size2i, params: [Int32]) -> Bool {
        let paramsVector = IntVector(params)
        let ret = open(filename: filename, fourcc: fourcc, fps: fps, frameSize: frameSize, params: paramsVector)
        return ret
    }
}

public extension VideoWriter {
    @nonobjc func open(filename: String, apiPreference: Int32, fourcc: Int32, fps: Double, frameSize: Size2i, params: [Int32]) -> Bool {
        let paramsVector = IntVector(params)
        let ret = open(filename: filename, apiPreference: apiPreference, fourcc: fourcc, fps: fps, frameSize: frameSize, params: paramsVector)
        return ret
    }
}


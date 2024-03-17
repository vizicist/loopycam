public extension EM {
    @nonobjc func getCovs(covs: inout [Mat]) -> Void {
        let covsArray = NSMutableArray(array: covs)
        getCovs(covs: covsArray)
        covs.removeAll()
        covs.append(contentsOf: covsArray as! [Mat])
    }
}


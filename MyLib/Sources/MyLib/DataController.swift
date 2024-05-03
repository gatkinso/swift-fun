import Foundation

public struct DataController {
    var networkProvider: NetworkProviding

    public init(_ provider: NetworkProviding) {
        networkProvider = provider
    }
    
    public func performDataRequest() -> Int {
        return networkProvider.requestData()
    }

    public func doLookup() -> Bool {
        return networkProvider.someExpensiveLookup()
    }
}
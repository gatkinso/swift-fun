import Foundation

public protocol NetworkProviding {
    var elapsedTimeMs: Int { get set }

    func requestData() -> Int

    func someExpensiveLookup() -> Bool
}

public class NetworkProvider: NetworkProviding {
    public var elapsedTimeMs: Int

    public init() {
        self.elapsedTimeMs = 90000
    }

    public func requestData() -> Int {
        return self.elapsedTimeMs
    }

    public func someExpensiveLookup() -> Bool {
        return true
    }
}
 
class MockedNetworkProvider: NetworkProvider {
    var lookupRet: Bool

    override init() {
        self.lookupRet = true
        super.init()
        self.elapsedTimeMs = 1
    }

    override func requestData() -> Int {
        self.elapsedTimeMs = 1
        return self.elapsedTimeMs
    }

    override func someExpensiveLookup() -> Bool {
        return lookupRet
    }
}
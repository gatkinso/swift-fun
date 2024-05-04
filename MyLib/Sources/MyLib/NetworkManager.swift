import Foundation

protocol Networking {
    func someFunctionThatTakesAClosure(closure: () -> Bool) -> Bool
}

public func theClosure() -> Bool {
    print("The actual closure")
    return true
}

public class NetworkManager {
    public init() {}

    public func someFunctionThatTakesAClosure(closure: () -> Bool) -> Bool {
        print("The function that tales a closure")
        return closure()
    }
}
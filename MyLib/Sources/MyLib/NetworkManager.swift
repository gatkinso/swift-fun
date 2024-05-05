import Foundation

protocol Networking {
    func someFunctionThatTakesAClosure(closure: () -> Bool) -> Bool
}

public func theClosure() -> Bool {
    print("The actual closure")
    return true
}

public class NetworkManager : Networking{
    public init() {}

    public func someFunctionThatTakesAClosure(closure: () -> Bool) -> Bool {
        print("The function that tales a closure")
        return closure()
    }

    public func callsLotsOfLogic() -> Bool {
        let ret = lotsOfLogic()

        if ret == 0 {
            return true
        }

        return false
    }

    public func lotsOfLogic() -> Int {
        if false == A() && false == B() {
            return 1
        }

        if false == A() {
            return 2
        }

        if false == B() {
            if C() <= 3 {
                return 3
            }

            return 4
        }

        if C() == 5 {
            return 5
        }

        return 0
    }

    func A() -> Bool {
        return true
    }

    func B() -> Bool {
        return true
    }

    func C() -> Int {
        return 0
    }
}

class MockNetworkManager: NetworkManager {
    var retA, retB : Bool
    var retC : Int

    override public init() {
        retA = true
        retB = true
        retC = 0
    }

    override func someFunctionThatTakesAClosure(closure: () -> Bool) -> Bool {
        print("The function that tales a closure")
        return closure()
    }

    override func A() -> Bool {
        return retA
    }

    override func B() -> Bool {
        return retB
    }

    override func C() -> Int {
        return retC
    }
}
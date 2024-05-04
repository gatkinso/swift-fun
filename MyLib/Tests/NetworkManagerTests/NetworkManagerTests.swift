import Foundation
import XCTest

@testable import MyLib

func aClosure() -> Bool {
    print("The mock closure")
    return false
}

class MockNetworkManager: NetworkManager {
    override func someFunctionThatTakesAClosure(closure: () -> Bool) -> Bool {
        print("The function that tales a closure")
        return closure()
    }
}

class NetworkManagerTests: XCTestCase {
    func test_Placeholder() {
        let nm = NetworkManager()
        XCTAssertFalse(nm.someFunctionThatTakesAClosure(closure: aClosure), "Test is meant to be a placeholder")
    }
}

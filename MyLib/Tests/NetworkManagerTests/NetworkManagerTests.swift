import Foundation
import XCTest

@testable import MyLib

func aClosure() -> Bool {
    print("The mock closure")
    return false
}

class NetworkManagerTests: XCTestCase {
    func test_Closure() {
        let nm = NetworkManager()
        XCTAssertFalse(nm.someFunctionThatTakesAClosure(closure: aClosure), "Test is meant to be a placeholder")
    }

    func test_LOL_AFalse() {
        let nm = MockNetworkManager() 

        nm.retA = false
        nm.retB = false

        XCTAssertEqual(nm.lotsOfLogic(), 1, "Test is meant to return 1")
    }
}

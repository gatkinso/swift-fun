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
        XCTAssertFalse(nm.someFunctionThatTakesAClosure(closure: aClosure), "Should have retuerned false")
    }

    func test_LOL_ABFalse() {
        let nm = MockNetworkManager() 

        nm.retA = false
        nm.retB = false

        XCTAssertEqual(nm.lotsOfLogic(), 1, "Test is meant to return 1")
    }

    func test_LOL_AFalse() {
        let nm = MockNetworkManager() 

        nm.retA = false

        XCTAssertEqual(nm.lotsOfLogic(), 2, "Test is meant to return 2")
    }

    func test_LOL_BFalse() {
        let nm = MockNetworkManager() 

        nm.retB = false

        XCTAssertEqual(nm.lotsOfLogic(), 3, "Test is meant to return 3")
    }

    func test_LOL_BFalseCgt3() {
        let nm = MockNetworkManager() 

        nm.retB = false
        nm.retC = 4

        XCTAssertEqual(nm.lotsOfLogic(), 4, "Test is meant to return 4")
    }

    func test_LOL_Ceq5() {
        let nm = MockNetworkManager() 

        nm.retC = 5

        XCTAssertEqual(nm.lotsOfLogic(), 5, "Test is meant to return 5")
    }

    func test_LOL_Cgt5() {
        let nm = MockNetworkManager() 

        nm.retC = 6

        XCTAssertEqual(nm.lotsOfLogic(), 0, "Test is meant to return 0")
    }
}

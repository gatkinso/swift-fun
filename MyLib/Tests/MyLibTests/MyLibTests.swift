import XCTest
@testable import MyLib

final class MyLibTests: XCTestCase {
    func test_myLibAdd() throws {
        let x = 2
        let y = 2
        let expected =  x + y

        let result = myLibAdd( x, y)
        XCTAssertEqual(expected, result)
    }

    func test_myLibSub() throws {
        let x = 2
        let y = 2
        let expected =  x - y

        let result = myLibSub( x, y)
        XCTAssertEqual(expected, result)
    }
}

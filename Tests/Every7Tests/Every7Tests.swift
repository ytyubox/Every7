import XCTest
@testable import Every7

final class Every7Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Every7().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}

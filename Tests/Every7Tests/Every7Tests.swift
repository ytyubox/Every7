import XCTest

final class Every7Tests: XCTestCase {
    func testBruteForceGeneralCase() {
        let g = BruteForce.g
        XCTAssertEqual(g(6), 0)
        XCTAssertEqual(g(7), 1)
        XCTAssertEqual(g(10), 1)
        XCTAssertEqual(g(17), 2)
        XCTAssertEqual(g(17), g(10) + g(7))
        XCTAssertEqual(g(20), 2)
        XCTAssertEqual(g(27), 3)
        XCTAssertEqual(g(27), g(10) * 2 + g(7))
        XCTAssertEqual(g(69), 7)
        XCTAssertEqual(g(69), g(10) * 6 + g(7))
        XCTAssertEqual(g(70), 8)
        XCTAssertEqual(g(70), g(10) * 6 + g(7) + (70 % 10 + 1))
        XCTAssertEqual(g(100), 19)
        XCTAssertEqual(g(100), g(10) * 9 + 10)
        XCTAssertEqual(g(200), g(100) * 1 + g(99))
        XCTAssertEqual(g(600), g(100) * 6)
        XCTAssertEqual(g(600), g(100) * 5 + g(600 - 500))
        XCTAssertEqual(g(699), 133)
        XCTAssertEqual(g(699), g(100) * 6 + g(699 - 600))
        XCTAssertEqual(g(739), g(699) + 40)
        XCTAssertEqual(g(739), g(100) * 7 + 40)
        XCTAssertEqual(g(800), 233)
        XCTAssertEqual(g(800), g(100) * 7 + 100)
        XCTAssertEqual(g(900), g(100) * 8 + 100)
        XCTAssertEqual(271, 19 * 9 + 100)

        XCTAssertEqual(g(800), g(100) * 7 + 100)
        XCTAssertEqual(g(823), g(800) + g(23))

        XCTAssertEqual(g(923), g(899) + g(23))
        XCTAssertEqual(g(923), g(900) + g(23))

        XCTAssertEqual(g(1000), g(100) * 9 + 100)
        XCTAssertEqual(g(1000), 271)
        XCTAssertEqual(g(7890), g(6999) + 891)
        XCTAssertEqual(g(7890), g(1000) * 6 + g(999) + 891)
        XCTAssertEqual(g(7890), g(1000) * 7 + 891)
    }
}

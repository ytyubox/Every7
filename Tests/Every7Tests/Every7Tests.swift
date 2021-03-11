import XCTest
enum BruteForce {
    static func g(_ edge: Int) -> Int {
        (1...edge).map(\.description).filter{$0.contains("7")}.count
    }
}



final class Every7Tests: XCTestCase {
    func testBruteForce() {
        let g = BruteForce.g
        XCTAssertEqual(g(7), 1)
        XCTAssertEqual(g(20), 2)
        XCTAssertEqual(g(70), 8)
        XCTAssertEqual(g(100) ,19)
        XCTAssertEqual(g(699) ,133)
        XCTAssertEqual(g(800) ,233)
        XCTAssertEqual(271, 19 * 9 + 100)
        XCTAssertEqual(g(1000), g(100) * 9 + 100)
        XCTAssertEqual(g(800), g(100) * 7 + 100)
        XCTAssertEqual(g(1000), 271)
    }
}

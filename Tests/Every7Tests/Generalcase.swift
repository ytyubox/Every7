//
/*
 *		Created by 游宗諭 in 2021/3/11
 *
 *		Using Swift 5.0
 *
 *		Running on macOS 11.2
 */

import XCTest

/// General case with assertion
/// ```
/// g(6) == 0
/// g(7) == 1
/// g(10) == 1
/// g(20) == 2
/// g(70) == 8
/// g(100) == 19
/// g(699) == 133
/// g(800) == 233
/// g(1000) == 271
/// ```
func assertGeneralCase(_ g: (Int) -> Int, file: StaticString = #filePath, line: UInt = #line) {
    XCTAssertEqual(g(6), 0, "input = 6", file: file, line: line)
    XCTAssertEqual(g(7), 1, "input = 7", file: file, line: line)
    XCTAssertEqual(g(10), 1, "input = 10", file: file, line: line)
    XCTAssertEqual(g(20), 2, "input = 20", file: file, line: line)
    XCTAssertEqual(g(70), 8, "input = 70", file: file, line: line)
    XCTAssertEqual(g(100), 19, "input = 100", file: file, line: line)
    XCTAssertEqual(g(699), 133, "input = 699", file: file, line: line)
    XCTAssertEqual(g(800), 233, "input = 800", file: file, line: line)
    XCTAssertEqual(g(1000), 271, "input = 1000", file: file, line: line)
}

func assertWithBruteForce(_ g: (Int) -> Int, target: Int, file: StaticString = #filePath, line: UInt = #line) {
    XCTAssertEqual(g(target), BruteForce.g(target), "target = \(target)", file: file, line: line)
}

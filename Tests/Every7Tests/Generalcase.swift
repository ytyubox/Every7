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
///```
func assertGeneralCase(_ g: (Int) -> Int, file: StaticString = #filePath, line: UInt = #line) {
    XCTAssertEqual(g(6), 0)
    XCTAssertEqual(g(7), 1)
    XCTAssertEqual(g(10), 1)
    XCTAssertEqual(g(20), 2)
    XCTAssertEqual(g(70), 8)
    XCTAssertEqual(g(100) ,19)
    XCTAssertEqual(g(699) ,133)
    XCTAssertEqual(g(800) ,233)
    XCTAssertEqual(g(1000), 271)
}

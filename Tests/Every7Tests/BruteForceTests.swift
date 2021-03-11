//
/*
 *		Created by 游宗諭 in 2021/3/11
 *
 *		Using Swift 5.0
 *
 *		Running on macOS 11.2
 */

import Foundation
enum BruteForce {
    static func g(_ edge: Int) -> Int {
        var count = 0
        for i in 1 ... edge {
            if i.description.contains("7") { count += 1 }
        }
        return count
    }
}

import XCTest

final class BruteForceTests: XCTestCase {
    func test() {
        assertGeneralCase(BruteForce.g)
    }
}

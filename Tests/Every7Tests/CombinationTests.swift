//
/*
 *		Created by 游宗諭 in 2021/3/11
 *
 *		Using Swift 5.0
 *
 *		Running on macOS 11.2
 */

import Foundation

enum Combination {
    static func g(_ edge: Int) -> Int {
        decision(edge.description)
    }

    private static func decision<S: StringProtocol>(_ input: S) -> Int {
        let value = atol(input.description)
        if value <= 10 {
            return single(value)
        }
        let maxExponent = input.count - 1
        /*
         for example:
            123 == 1.23 * 10^2 where maxExponent == 2 == 3 - 1 == count - 1
         */
        guard let first = input.first?.wholeNumberValue else { return 0 }
        let base1 = powi(10, maxExponent - 1)
        if first == 1 {
            return decision(base1.description) * 9 + base1
        }

        let base = base1 * 10
        switch first {
        case ...6: return decision(base.description) * first + decision(input.dropFirst())
        case 7: return decision(base.description) * first + atol(input.dropFirst().description) + 1
        default: return decision((base * first - 1).description) + decision(input.dropFirst())
        }
    }

    private static func single(_ edge: Int) -> Int {
        if edge < 7 { return 0 }
        if edge <= 10 { return 1 }
        return 0
    }

    static func powi(_ base: Int, _ up: Int) -> Int {
        var r = 1
        guard up >= 0 else { return 0 }
        for _ in 0 ..< up {
            r = base &* r
        }
        return r
    }
}

import XCTest

final class CombinationTests: XCTestCase {
    let g = Combination.g
    func test6() {
        assertWithBruteForce(g, target: 6)
    }

    func test7() {
        assertWithBruteForce(g, target: 7)
    }

    func test10() {
        assertWithBruteForce(g, target: 10)
    }

    func test20() {
        assertWithBruteForce(g, target: 20)
    }

    func test70() {
        assertWithBruteForce(g, target: 70)
    }

    func test100() {
        assertWithBruteForce(g, target: 100)
    }

    func test699() {
        assertWithBruteForce(g, target: 699)
    }

    func test800() {
        assertWithBruteForce(g, target: 800)
    }

    func test1000() {
        assertWithBruteForce(g, target: 1000)
    }

    func testIntMax() {
        let result = 7_984_850_453_867_298_887
        let start = CFAbsoluteTimeGetCurrent()
        XCTAssertEqual(g(Int.max), result)
        let finished = CFAbsoluteTimeGetCurrent()
        let costOfTime = finished - start
        XCTAssertLessThan(costOfTime, 2)
    }

    func testpowi() {
        XCTAssertEqual(Combination.powi(10, 2), 100)
        XCTAssertEqual(Combination.powi(10, 0), 1)
        XCTAssertEqual(Combination.powi(10, -1), 0)
    }
}

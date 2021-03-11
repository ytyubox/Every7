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

    static func decision<S: StringProtocol>(_ input: S) -> Int {
        if atol(input.description) <= 10 {
            return single(atol(input.description))
        }
        guard let first = input.first?.wholeNumberValue else { return 0 }
        let base1 = powi(10, input.count - 2)
        if first == 1 {
            return decision(base1.description) * 9 + base1
        }
        
        let base = base1 * 10
        switch first {
        case 2 ... 6: return decision(base.description) * first + decision(input.dropFirst())
        case 7: return decision(base.description) * first + atol(input.dropFirst().description) + 1
        case 8 ... 9: return decision((base * first - 1).description) + decision(input.dropFirst())
        default:
            fatalError()
        }
    }

    static func single(_ edge: Int) -> Int {
        if edge < 7 { return 0 }
        if edge <= 10 { return 1 }
        return 0
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
        XCTAssertEqual(g(Int.max), 7984850453867298887)
    }
}

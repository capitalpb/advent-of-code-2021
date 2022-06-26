//
//  Solver01Tests.swift
//  AdventKitTests
//
//  Created by Peter on 2022-06-26.
//

import AdventKit
import XCTest

class Solver01Tests: XCTestCase {
    let solver = Solver01(input: """
199
200
208
210
200
207
240
269
260
263
""")

    func testStar1() {
        XCTAssertEqual(solver.star1().description, "7")
    }

    func testStar2() {
        XCTAssertEqual(solver.star2().description, "5")
    }
}

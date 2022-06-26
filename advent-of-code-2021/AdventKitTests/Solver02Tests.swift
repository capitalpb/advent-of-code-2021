//
//  Solver02Tests.swift
//  AdventKitTests
//
//  Created by Peter on 2022-06-26.
//

import AdventKit
import XCTest

class Solver02Tests: XCTestCase {
    let solver = Solver02(input: """
forward 5
down 5
forward 8
up 3
down 8
forward 2
""")

    func testStar1() {
        XCTAssertEqual(solver.star1().description, "150")
    }

    func testStar2() {
        XCTAssertEqual(solver.star2().description, "900")
    }
}

//
//  Solver.swift
//  AdventKit
//
//  Created by Peter on 2022-06-26.
//

import Foundation

public protocol Solver {
    init(input: String)
    func star1() -> CustomStringConvertible
    func star2() -> CustomStringConvertible
}

public func getSolver(_ day: Int, input: String) -> Solver? {
    switch day {
    case 1: return Solver01(input: input)
    case 2: return Solver02(input: input)
    default: return nil
    }
}

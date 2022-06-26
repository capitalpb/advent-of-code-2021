//
//  Solver01.swift
//  AdventKit
//
//  Created by Peter on 2022-06-26.
//

import Algorithms
import Foundation

public struct Solver01: Solver {
    private let depths: [Int]

    public init(input: String) {
        depths = input.components(separatedBy: "\n").compactMap(Int.init)
    }

    public func star1() -> CustomStringConvertible {
        depths
            .adjacentPairs()
            .filter(<)
            .count
    }

    public func star2() -> CustomStringConvertible {
        depths
            .windows(ofCount: 3)
            .map { $0.reduce(0, +) }
            .adjacentPairs()
            .filter(<)
            .count
    }
}

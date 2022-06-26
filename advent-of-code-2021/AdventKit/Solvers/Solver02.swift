//
//  Solver02.swift
//  AdventKit
//
//  Created by Peter on 2022-06-26.
//

import Foundation

public struct Solver02: Solver {
    let instructions: [(String, Int)]

    public init(input: String) {
        instructions = input
            .components(separatedBy: "\n")
            .map {
                let components = $0.components(separatedBy: " ")
                return (components[0], Int(components[1])!)
            }
    }

    public func star1() -> CustomStringConvertible {
        var position = 0
        var depth = 0

        for instruction in instructions {
            switch instruction.0 {
            case "forward": position += instruction.1
            case "down": depth += instruction.1
            case "up": depth -= instruction.1
            default: break
            }
        }

        return position * depth
    }

    public func star2() -> CustomStringConvertible {
        var position = 0
        var depth = 0
        var aim = 0

        for instruction in instructions {
            switch instruction.0 {
            case "forward":
                position += instruction.1
                depth += aim * instruction.1
            case "down": aim += instruction.1
            case "up": aim -= instruction.1
            default: break
            }
        }

        return position * depth
    }
}

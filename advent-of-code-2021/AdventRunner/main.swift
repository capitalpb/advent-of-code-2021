//
//  main.swift
//  AdventRunner
//
//  Created by Peter on 2022-06-26.
//

import AdventKit
import Foundation

let day = 1
let dayString = String(format: "%02d", day)

let currentDirectoryURL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)
let bundleURL = URL(fileURLWithPath: "Inputs.bundle", relativeTo: currentDirectoryURL)
let bundle = Bundle(url: bundleURL)
let inputFileURL = bundle!.url(forResource: "day\(dayString)", withExtension: "txt")!
var input = try String(contentsOfFile: inputFileURL.path)
input.removeLast()

if let solver = getSolver(day, input: input) {
    print("AoC 2021, Day \(dayString)")
    print("================")
    print("-> Star 1: \(solver.star1())")
    print("-> Star 2: \(solver.star2())")
}

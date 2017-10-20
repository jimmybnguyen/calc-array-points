//
//  main.swift
//  CalcArrayPoints
//
//  Created by Jimmy Nguyen on 10/19/17.
//  Copyright © 2017 Jimmy B Nguyen. All rights reserved.
//

import Foundation

// Calculator functions

func add(left: Int, right: Int) -> Int {
    return left + right
}

func subtract(left: Int, right: Int) -> Int {
    return left - right
}

func add(left: Double, right: Double) -> Double {
    return left + right
}

func subtract(left: Double, right: Double) -> Double {
    return left - right
}

func multiply(left: Int, right: Int) -> Int {
    return left * right
}

func divide(left: Int, right: Int) -> Int {
    return left / right
}

func mathOps(left: Int, right: Int, ops: (Int, Int) -> Int) -> Int {
    return ops(left, right)
}

print(mathOps(left: 5, right: 10, ops: multiply))

// Array functions

func add(array: [Int]) -> Int {
    var result = 0;
    for index in 0...(array.count - 1) {
        result += array[index]
    }
    return result
}

let test : [Int] = [3, 9, 7, 2]
print(add(array: test))

func multiply(array: [Int]) -> Int {
    var result = 1
    for index in 0...(array.count - 1) {
        result *= array[index]
    }
    return result
}

func count(array: [Int]) -> Int {
    return array.count
}

func average(array: [Int]) -> Int {
    return add(array: array) / count(array: array)
}

func arrayOps(array: [Int], ops: ([Int]) -> Int) -> Int {
    return ops(array)
}

// Tuple functions

func add(point1: (Int, Int), point2: (Int, Int)) -> (Int, Int) {
    return (add(left: point1.0, right: point2.0), add(left: point1.1, right: point2.1))
}

let tupleTest1 : (Int, Int) = (5, 6)
let tupleTest2 : (Int, Int) = (5, 6)
print(add(point1: tupleTest1, point2: tupleTest2))

func subtract(point1: (Int, Int), point2: (Int, Int)) -> (Int, Int) {
    return (subtract(left: point1.0, right: point2.0), subtract(left: point1.1, right: point2.1))
}

// Dictionary functions

func add(point1: [String: Int]?, point2: [String: Int]?) -> [String: Int]? {
    var result = [:] as [String: Int]
    if (point1 != nil && point2 != nil) {
        result["x"] = add(left: (point1?["x"]!)!, right: (point2?["x"])!)
        result["y"] = add(left: (point1?["y"])!, right: (point2?["y"])!)
    }
    return result
}

func subtract(point1: [String: Int]?, point2: [String: Int]?) -> [String: Int]? {
    var result = [:] as [String: Int]
    if (point1 != nil && point2 != nil) {
        result["x"] = subtract(left: (point1?["x"]!)!, right: (point2?["x"])!)
        result["y"] = subtract(left: (point1?["y"])!, right: (point2?["y"])!)
    }
    return result
}

func add(point1: [String: Double]?, point2: [String: Double]?) -> [String: Double]? {
    var result = [:] as [String: Double]
    if (point1 != nil && point2 != nil) {
        result["x"] = add(left: (point1?["x"]!)!, right: (point2?["x"])!)
        result["y"] = add(left: (point1?["y"])!, right: (point2?["y"])!)
    }
    return result
}

func subtract(point1: [String: Double]?, point2: [String: Double]?) -> [String: Double]? {
    var result = [:] as [String: Double]
    if (point1 != nil && point2 != nil) {
        result["x"] = subtract(left: (point1?["x"]!)!, right: (point2?["x"])!)
        result["y"] = subtract(left: (point1?["y"])!, right: (point2?["y"])!)
    }
    return result
}

var p11 = [
    "x": 4.2,
    "y": 2.6
]

var p22 = [
    "x": 4.3,
    "y": 10.6
]
print(add(point1: p11, point2: p22))

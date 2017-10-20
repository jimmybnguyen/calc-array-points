//
//  main.swift
//  CalcArrayPoints
//
//  Created by Jimmy Nguyen on 10/19/17.
//  Copyright © 2017 Jimmy B Nguyen. All rights reserved.
//

import Foundation

// Calculator functions //

// Takes two int and adds them together. Returns an int.
func add(left: Int, right: Int) -> Int {
    return left + right
}

// Takes two ints and subtracts the first from the second. Returns an int.
func subtract(left: Int, right: Int) -> Int {
    return left - right
}

// Takes two Doubles and adds them together. Returns a double.
func add(left: Double, right: Double) -> Double {
    return left + right
}

// Takes two Doubles and subtracts the first from the second. Returns a double.
func subtract(left: Double, right: Double) -> Double {
    return left - right
}

// Takes two int and multiply them. Returns an int.
func multiply(left: Int, right: Int) -> Int {
    return left * right
}

// Takes two int and divide the left from the right. Returns an int.
func divide(left: Int, right: Int) -> Int {
    return left / right
}

// Takes two int and a math operation as a string. Returns an int.
// Example call: mathOps(left: 5, right: 10, ops: multiply)
func mathOps(left: Int, right: Int, ops: (Int, Int) -> Int) -> Int {
    return ops(left, right)
}

// Array functions //

// Takes an array of ints and add all the ints. Returns an int.
func add(array: [Int]) -> Int {
    var result = 0;
    for index in 0...(array.count - 1) {
        result += array[index]
    }
    return result
}
// Takes an array of ints and multiply all the ints together. Returns an int.
func multiply(array: [Int]) -> Int {
    var result = 1
    for index in 0...(array.count - 1) {
        result *= array[index]
    }
    return result
}

// Takes an array of ints and counts how many ints there are. Returns an int.
func count(array: [Int]) -> Int {
    return array.count
}

// Takes an array of ints and finds the average. Returns an int.
func average(array: [Int]) -> Int {
    return add(array: array) / count(array: array)
}

// Takes an array of ints and a math operation as a string. Returns an int.
func arrayOps(array: [Int], ops: ([Int]) -> Int) -> Int {
    return ops(array)
}

// Tuple functions //

// Takes in two tuples of two ints and returns a tuple of the sum of the tuples first and second points.
// Example:
// let tupleTest1 : (Int, Int) = (5, 6)
// let tupleTest2 : (Int, Int) = (5, 6)
// add(point1: tupleTest1, point2: tupleTest2)) = (10, 12)
func add(point1: (Int, Int), point2: (Int, Int)) -> (Int, Int) {
    return (add(left: point1.0, right: point2.0), add(left: point1.1, right: point2.1))
}

// Takes in two tuples of two ints and returns a tuple of the difference of the tuples first and second points.
func subtract(point1: (Int, Int), point2: (Int, Int)) -> (Int, Int) {
    return (subtract(left: point1.0, right: point2.0), subtract(left: point1.1, right: point2.1))
}

// Dictionary functions //

// Takes two dictionary of String: Int and returns the sum of the ints for the same String
func add(point1: [String: Int]?, point2: [String: Int]?) -> [String: Int]? {
    var result = [:] as [String: Int]
    if (point1 != nil && point2 != nil) {
        result["x"] = add(left: (point1?["x"]!)!, right: (point2?["x"])!)
        result["y"] = add(left: (point1?["y"])!, right: (point2?["y"])!)
    }
    return result
}

// Takes two dictionary of String: Int and returns the difference of the ints for the same String
func subtract(point1: [String: Int]?, point2: [String: Int]?) -> [String: Int]? {
    var result = [:] as [String: Int]
    if (point1 != nil && point2 != nil) {
        result["x"] = subtract(left: (point1?["x"]!)!, right: (point2?["x"])!)
        result["y"] = subtract(left: (point1?["y"])!, right: (point2?["y"])!)
    }
    return result
}

// Takes two dictionary of String: Double and returns the sum of the Doubles for the same String
func add(point1: [String: Double]?, point2: [String: Double]?) -> [String: Double]? {
    var result = [:] as [String: Double]
    if (point1 != nil && point2 != nil) {
        result["x"] = add(left: (point1?["x"]!)!, right: (point2?["x"])!)
        result["y"] = add(left: (point1?["y"])!, right: (point2?["y"])!)
    }
    return result
}

// Takes two dictionary of String: Double and returns the difference of the Doubles for the same String
func subtract(point1: [String: Double]?, point2: [String: Double]?) -> [String: Double]? {
    var result = [:] as [String: Double]
    if (point1 != nil && point2 != nil) {
        result["x"] = subtract(left: (point1?["x"]!)!, right: (point2?["x"])!)
        result["y"] = subtract(left: (point1?["y"])!, right: (point2?["y"])!)
    }
    return result
}

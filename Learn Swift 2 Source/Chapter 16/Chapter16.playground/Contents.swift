//: Playground - noun: a place where people can play

import Darwin

var str = "Hello, playground"

enum MathError : ErrorType {
    case DivideByZero
    case NotANumber
}

func divide(a : Double, b : Double) throws -> Double {
    guard b != 0 else {
        throw MathError.DivideByZero
    }
    
    guard isnan(a) == false && isnan(b) == false else {
        throw MathError.NotANumber
    }
    
    return a/b
}

do
{
    let result = try divide(4.3, b: 2.1)
} catch MathError.DivideByZero {
    print("The denominator must not be zero")
} catch MathError.NotANumber {
    print("One of the values is not a valid number")
}

do
{
    let result = try divide(4.3, b: 0)
} catch {
    print(error)
}

let result = try? divide(8, b: 2.0)
let result1 = try? divide(23.9, b: 0)

var result2 : Double?
do {
    result2 = try divide(23.9, b: 0)
} catch {
    result2 = nil
}

let result4 = try! divide(46.2, b: 12.1)

func function1(a : Double, b : Double) throws {
    try function2(a, y: b)
}

func function2(x :Double, y : Double) throws {
    try divide(x, b: y)
}

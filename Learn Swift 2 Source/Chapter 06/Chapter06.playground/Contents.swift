//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let a = 5 * 8
let b = 6 / 4
let c = 6 % 4
let d = 6 & 4

let e : Int8 = 127 &* 2

let f = a + b
let g = a - b

let h : Int8 = 127 &+ 50

let j = 6 | 4
let k = 6 ^ 4

class Fruit {
}

class Banana : Fruit {
}

var fruit : Fruit = Banana()
if fruit is Banana {
    var banana = fruit as! Banana
}
var anotherFruit = Fruit()
if anotherFruit is Banana {
    var banana = anotherFruit as! Banana
}

var possibleBanana = fruit as? Banana
var notBanana = anotherFruit as? Banana

var result : Int
if a == 10 {
    result = a
} else {
    result = b
}

result = a == 10 ? a : b

prefix operator ∑ {}
//prefix func ∑ (array : [Double]) -> Double {
//    return array.reduce(0) {$0 + $1}
//}

prefix func ∑ (array : [Double]) -> Double {
    return array.reduce(0, combine: {(a, b) -> Double in
        return a + b
    })
}

let sum = ∑[1.0, 2.0, 3.0] // b = 6.0

infix operator ÷ { associativity left precedence 150}
func ÷ (left : Double, right : Double) -> Double {
    return left / right
}
let z = 200.0 ÷ 2 // d = 100.0


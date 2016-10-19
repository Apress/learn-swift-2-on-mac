//: Playground - noun: a place where people can play

import UIKit

func capturingValues() {
    var a : Double = 5
    print(a)
    func increment(incrementBy : Double) {
        a += incrementBy
    }
    
    increment(4)
    print(a)
    
    increment(2)
    print(a)
}

//func capturingValues2() {
//    func increment(incrementBy : Double) {
//        a += incrementBy
//    }
//    
//    var a : Double = 5
//    print(a)
//    
//    increment(4)
//    print(a)
//    
//    increment(2)
//    print(a)
//}

let numbers : [Int] = [119, 11, 45, 9, 34, 202]
func asending(element1 : Int, element2 : Int) -> Bool {
    return element1 < element2
}
let sortedNumbers1 = numbers.sort(asending)

let sortedNumbers = numbers.sort{ (element1: Int, element2: Int) -> Bool in
    return element1 < element2
}

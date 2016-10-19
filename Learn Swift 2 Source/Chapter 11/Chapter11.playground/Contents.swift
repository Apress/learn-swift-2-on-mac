//: Playground - noun: a place where people can play

import Foundation

var array : Array<String>? = nil

class Engine {
    var numberOfCylinders : Int = 4
}

class Engine1 {
    var numberOfCylinders: Int
    init?(numberOfCylinders : Int = 4) {
        guard numberOfCylinders > 1 && numberOfCylinders <= 12 else {
            self.numberOfCylinders = 4
            return nil
        }
        self.numberOfCylinders = numberOfCylinders
    }
}

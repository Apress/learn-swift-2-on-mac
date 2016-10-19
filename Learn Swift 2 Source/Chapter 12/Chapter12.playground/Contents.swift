//: Playground - noun: a place where people can play

import Foundation

class Stack {
    private var stack = [Double]()
    
    func isEmpty () -> Bool {
        return self.stack.isEmpty
    }
    
    func peek () -> Double? {
        return self.stack.last
    }
    
    func pop () -> Double? {
        let value = self.stack.last
        if nil != value {
            self.stack.removeLast()
        }
        return value
    }
    
    func push (item : Double) {
        self.stack.append(item)
    }
}

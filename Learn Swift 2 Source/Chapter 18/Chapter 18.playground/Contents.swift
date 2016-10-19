//: Playground - noun: a place where people can play

import UIKit

struct DoubleStack {
    private var stack = [Double]()
    
    func empty () -> Bool {
        print("Stack Empty")
        return stack.count == 0
    }
    
    func peek () -> Double? {
        return stack.last
    }
    
    mutating func pop () -> Double? {
        guard let value = stack.last else {
            return nil
        }
        stack.removeLast()
        return value
    }
    
    mutating func push (item : Double) {
        stack.append(item)
    }
}

struct Stack<Element> {
    private var stack = Array<Element>()
    
    func empty () -> Bool {
        print("Stack Empty")
        return stack.count == 0
    }
    
    func peek () -> Element? {
        return stack.last
    }
    
    mutating func pop () -> Element? {
        guard let value = stack.last else {
            return nil
        }
        stack.removeLast()
        return value
    }
    
    mutating func push (item : Element) {
        stack.append(item)
    }
}

extension Stack {
    var size : Int {
        get {
            return self.stack.count
        }
    }
    
    var top : Element? {
        get {
            return self.stack.isEmpty ? nil : self.stack[self.size - 1]
        }
    }
}

protocol SpecialCollection {
    typealias SpecialCollectionType
    func count() -> Int
    mutating func add(item : SpecialCollectionType)
    subscript(index : Int) -> SpecialCollectionType { get }
}


func areIdentical<T1 : SpecialCollection, T2 : SpecialCollection
    where T1.SpecialCollectionType == T2.SpecialCollectionType, T1.SpecialCollectionType : Equatable, T2.SpecialCollectionType : Equatable>
    (collection1 : T1, collection2 : T2) -> Bool {
        guard collection1.count() == collection2.count() else {
            return false
        }
        var areEqual = true
        for index in 0 ..< collection1.count() {
            if collection1[index] != collection2[index] {
                areEqual = false
                break
            }
        }
        return areEqual
}


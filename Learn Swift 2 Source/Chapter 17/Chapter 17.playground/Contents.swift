//: Playground - noun: a place where people can play

import UIKit

extension CollectionType {
    func printAll() {
        print("\(self)")
    }
}

var myArray : Array<String> = ["a", "b"]

myArray.printAll()

var myDictionary : Dictionary<String,String> = ["ca" : "California", "tx" : "Texas"]
myDictionary.printAll()

@objc protocol MyProtcol {
    optional func myfunction()
}

protocol SomeProtcol {
    func someFunction()
}

class MyOject1 : SomeProtcol {
    func someFunction() {
        print("someFunction")
    }
}

class MyOject2 : SomeProtcol {
    func someFunction() {
        print("someFunction")
    }
}

let object1 = MyOject1()
let object2 = MyOject2()
let items : [SomeProtcol] = [object1, object2]
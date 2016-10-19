//: Playground - noun: a place where people can play

import UIKit

func greeting2(name1: String, name2 : String) -> String {
    let greetingMessage = "Hello " + name1 + " and " + name2
    return greetingMessage
}

let greeting2Message = greeting2("Waqar", name2: "Adam")

func greeting3(name : String?) -> String? {
    if let theName = name {
        return "Hello " + theName
    }
    
    return nil
}

func greeting4(name1 : String, name2 : String) -> (String, String) {
    let greeting1 = "Hello " + name1
    let greeting2 = "Hello " + name2
    
    return (greeting1, greeting2)
}
var greetings : (greeting1 : String, greeting2 : String) = greeting4("Waqar", name2: "Mishal")

print(greetings.greeting1)
print(greetings.greeting2)

greeting3("John")

func greeting5(name : String = "World") {
    print("Hello " + name)
}

greeting5()
greeting5("John")

func greeting6(firstname : String, _ lastname : String) {
    print("Hello " + firstname + " " + lastname)
}

greeting6("Waqar","Malik")

func sum(numbers : Double...) -> Double {
    return numbers.reduce(0) {$0 + $1}
}

let mysum = sum(3.0, 5.0, 6.0)

func add(x: Double, y : Double) -> Double {
    return x + y
}
func multiply(x : Double, y : Double) -> Double {
    return x * y
}

func compute(computeFunction computeFunction: (Double, Double) -> Double, x : Double, y : Double) -> Double {
    return computeFunction(x, y)
}

let result = compute(computeFunction: multiply, x: 3, y: 4)


func computeFunction2(type type : String) -> ((Double, Double) -> Double) {
    func localAdd(x: Double, y : Double) -> Double {
        return x + y
    }
    
    func localMultiply(x : Double, y : Double) -> Double {
        return x * y
    }
    
    func myRand(x: Double, y : Double ) -> Double {
        return 42.0
    }
    
    if(type == "+")
    {
        return localAdd
    } else if type == "*" {
        return localMultiply
    } else {
        return myRand
    }
}


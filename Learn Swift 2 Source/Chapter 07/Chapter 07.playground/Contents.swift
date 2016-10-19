//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

for i in 1...6 {
    print(i)
}

for charcter in "Adam".characters {
    print(charcter)
}

let vowels : Set<Character> = ["a", "e", "i", "o", "u"]
let consonants : Set<Character> = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m","n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
let character : Character = "r"
switch character {
case let value where vowels.contains(value):
    print("vowel")
case let value where consonants.contains(value):
    print("consonant")
default:
    print("Not english alphabet")
}


enum Suit : Int {
    case Diamonds
    case Hearts
    case Spades
    case Clubs
    case Joker
}

let hand = Suit.Diamonds

switch hand {
case .Diamonds:
    print("Diamonds")
case .Hearts:
    print("Hearts")
case .Spades:
    print("Spades")
case .Clubs:
    print("Clubs")
default:
    print("Joker")
}

switch hand {
case .Diamonds, .Hearts, .Spades, .Clubs:
    break
default:
    print("joker")
}

switch hand {
case let value where value == .Joker:
    print("Joker")
default:
    break
}

switch hand {
case let value where value == .Diamonds || value == .Hearts:
    print("got red card")
case let value where value == .Clubs || value == .Spades:
    print("got black card")
default:
    print("Joker")
}

enum MyErrors : ErrorType {
    case InvalidValue
}

func myFunction(value : Int?) throws -> Int {
    guard let theValue = value else {
        throw MyErrors.InvalidValue
    }
    return 2 * theValue
}

func myFunction2(value : Int?) throws -> Int {
    if let theValue = value {
        return 2 * theValue
    } else {
        throw MyErrors.InvalidValue
    }
}


func hello(person : String?) {
    guard let name = person else {
        print("Hello")
        return
    }
    
    print("Hello " + name)
}

hello(nil)
hello("Waqar")

var odds = [Int]()
oddsloop : for i in 1...20 {
    switch i {
    case let a where a % 2 == 0:
        continue oddsloop
    default:
        odds.append(i)
    }
}

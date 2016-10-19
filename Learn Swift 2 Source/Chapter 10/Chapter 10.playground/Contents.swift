//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum Suit {
    case Hearts, Spades, Diamonds, Clubs
}

let spades = Suit.Spades
let hearts : Suit = .Hearts

var suit = Suit.Clubs
suit = .Diamonds

switch suit {
case .Hearts:
    print("Got Hearts")
case .Diamonds:
    print("Got Diamonds")
case .Spades:
    print("Got Spades")
case .Clubs:
    print("Got Clubs")
}

switch suit {
case .Diamonds:
    print("Bling, Bling")
default:
    print("Not Bling")
}

print(Suit.Clubs)

enum Suit2 {
    case Hearts(Int)
    case Spades(Int)
    case Diamonds(Int)
    case Clubs(Int)
}

let tenOfDiamonds = Suit2.Diamonds(10)
let aceOfDiamonds = Suit2.Diamonds(1)

switch tenOfDiamonds {
case .Diamonds:
    print("Bling")
default:
    print("Not Bling")
}

switch aceOfDiamonds {
case .Diamonds(let value):
    print("\(value)")
default:
    break;
}

enum MyEnum {
    case One(Int)
    case Two(String)
    case Three(Int, Int)
    case Four(Int, String)
    case Five(Int, Int, Float, Character, String)
}

let five = MyEnum.Five(1, 4, 9.3, "C", "Test")

switch five {
case .Three(let first, let second):
    print("\(first + second)")
case .Five(let first, let second, let third, let forth, let fifth):
    print("\(first) \(second) \(third) \(forth) \(fifth)")
default:
    break;
}

switch five {
case .Three(let first, let second):
    print("\(first + second)")
case let .Five(first, second, third, forth, fifth):
    print("\(first) \(second) \(third) \(forth) \(fifth)")
default:
    break;
}

enum Suit3 : Character {
    case Hearts = "♥︎"
    case Spades = "♠︎"
    case Diamonds = "♦︎"
    case Clubs = "♣︎"
}

enum Suit4 : Int {
    case Hearts
    case Spades
    case Diamonds
    case Clubs
}

enum Suit5 : Int {
    case Hearts = 5
    case Spades
    case Diamonds
    case Clubs
}

enum Suit6 : Int {
    case Hearts = 5
    case Spades = 10
    case Diamonds = 16
    case Clubs = 38
}

enum Suit7 : String {
    case Hearts
    case Spades
    case Diamonds
    case Clubs
}

enum Suit8 : String {
    case Hearts = "Herz"
    case Spades = "Laub"
    case Diamonds = "Schellen"
    case Clubs = "Eichel"
}

let heart = Suit8.Hearts.rawValue
print(heart)
print(Suit3.Hearts.rawValue)

let theSpades = Suit7(rawValue: "Hearts")
let possibleSuit = Suit7(rawValue: "TheHearts")

indirect enum PizzaType {
    case Mushrooms
    case Olives
    case Pepperoni
    case Custom2(PizzaType, PizzaType)
    case Custom3(PizzaType, PizzaType, PizzaType)
}

let myPizza = PizzaType.Custom2(.Olives, .Mushrooms)


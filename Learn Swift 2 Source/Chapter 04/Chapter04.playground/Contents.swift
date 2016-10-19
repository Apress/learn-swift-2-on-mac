//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var theBool = true

if theBool == true {
    print("true")
} else {
    print("false")
}

var string1 = ""
string1 = string1 + " by Waqar Malik"
string1 += " by Waqar Malik"
string1.appendContentsOf(" by Waqar Malik")

let animals = "🐑🐘🐍🐢🐛🐝🐜🐞🐌🐠🐟🐬🐳🐋🐄🐏🐃🐅🐇🐎"
print("Number of characters \(animals.characters.count)")

var someFruits = ["Banana", "Apple", "Pear", "Watermelon", "Mango", "Kiwi"]

for (index, fruit) in someFruits.enumerate() {
    print("Fruit at index \(index + 1) is \(fruit)")
}
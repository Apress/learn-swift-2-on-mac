//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var myClosureVaraible : (string : String?) -> (String)
var myClosureVaraible2 : ((string : String?) -> (String))?
var myClosureVariable3 : ((string : String?) -> (String))!

typealias MyClosureType = (string : String?) -> (String)

var myClosureVaraible4 : MyClosureType

myClosureVaraible4 = {(string : String?) -> String in
    return string ?? ""
}
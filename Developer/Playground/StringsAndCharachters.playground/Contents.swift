//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let someString = "Some string literal value"


let emptyString = ""
let anotherEmptyString = String()

if emptyString.isEmpty {
    print("Nothing to see here")
}

var varibleString = "Horse"
varibleString += "and carriage"
// varibleString is now "Horse and carriage"

let constantString = "Highlander"
//constantString += "and another Highlander"
// this reports a compile-time  error - a constant string cannot be modified

for character in "Dog!🐶" {
    print(character)
}


let exclamationMark: Character = "!"


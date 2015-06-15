//: Playground - noun: a place where people can play

import UIKit

//: Terminology

//: assignment Operator
let b = 10
var a = 5
a = b
// a is now equal to 10

let (x, y) = (1, 2)
// x is equal to 1, and y is equal to 2

//if x=y {
//    // this is not valid, because x = y dose not return a value
//}

//: Arithmetic Operators
1 + 2           // equals 3
5 - 3           // equals 2
2 * 3           // equals 6
10.0 / 2.5      // equals 4.0

"hello, " + "world"     // equals "hello, world"

//: Remainder Operator
9 % 4           // equals 1
-9 % 4          // equals -1

8 % 2.5         // equals 0.5

var i = 0
++i             // i now equals 1

var a1 = 0
let b1 = ++a1
// a and b are now both equal to 1
let c = a++
// a is now equal to 2, but c has been set to the pre-increment value of 1

//: Unary Minus Operator
let three = 3
let minusThree = -three             // minusThree equals -3
let plusThree = -minusThree         // plusThree equals 3, or "minus minus three"

//: Unary Plus Operator
let minusSix = -6
let alsoMinusSix = +minusSix        // alsoMinusSix equals -6

//:Compound Assignment Operators
var a2 = 1
a2 += 2
// a2 is now equal to 3

//: Comparison Operators
1 == 1      // true, because 1 is equal to 1
2 != 1      // true, because 2 is not equal to 1
2 > 1       // true, because 2 is greater than 1
1 < 2       // true, because 1 is less than 2
1 >= 1      // true, because 1 is greater than or equal to 1
2 <= 1      // false, because 2 is not less than or equal to 1

let name = "world"
if name == "world"  {
    print("hello, world")
} else {
    print("I'm sorry \(name), but I don't recognize you")
}
// prints "hello, world", because name is indeed equal to "world"


//: Ternary Conditional Operator
let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50: 20)
// rowHeight is equal to 90

let otherContentHeight = 40
let otherHasHeader = true
var otherRowHeight = otherContentHeight
if otherHasHeader {
    otherRowHeight = otherRowHeight + 50
} else {
    otherRowHeight = otherRowHeight + 20
}
// otherRowHeight is equal to 90

//: Nil Coalescing Operator
let defaultColorName = "red"
var userDefinedColorName: String?       // defaults to nil

//var colorNameToUse = useDefinedColorName ?? defaultColorName
// ? Use of unresolved identifier 'useDefinedColorName'

userDefinedColorName = "green"
//colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName is not nil, so colorNameToUse is set to "green"

//: Range Operators






//: Playground - noun: a place where people can play

//: url 
//: https://developer.apple.com/library/prerelease/mac/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html#//apple_ref/doc/uid/TP40014097-CH5-ID309

import UIKit

var str = "Hello, playground"

let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0

var x = 0.0, y = 0.0, z = 0.0
var welcomeMessage: String
welcomeMessage = "Hello"

var red, green, blue:Double

let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"

var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"
//friendlyWelcome is now "Bonjour!"

let languageName = "Swift"
//languageName = "Swift++"
//this is a compile-time error - languageName cannot be changed

//:Printing Constants and Variables
print(friendlyWelcome)
//prints "Bonjour!"

print("This is a string")
//prints "This is a string"

//this is comment

/*this is also comment
but written over multiple lines*/

/*this is the start of the first multiline comment
/*this is the second, nested multiline comment */
this is end of the first multiline comment*/

let cat = "🐱"; print(cat)
//prints"🐱"

let minValue = UInt8.min
let maxValue = UInt8.max

UInt16.max
UInt32.max
UInt64.max

Int8.min
Int8.max

Int16.min
Int16.max

Int32.min
Int32.max

Int64.min
Int64.max

let meaningOfLife = 42
//meaningOfLife is inferred to be of type Int

let pi = 3.14159
//pi is inferred to be of type Double

let anotherPi = 3 + 0.14159
//another is also inferred to be of type Double



//:Numeric Literals

let decimalInteger = 17
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1


//Numeric Type Conversion
//let cannotBeNegative: Uint8 = -1
//Uint8 cannot store Negative numbers, 
//and so this will report an error

//let tooBig: Uint8 = UInt8.max +1
//UInt8 cannot store a number larger than its maximum value,
//and so this will also report an error


let twoThousand: UInt16 = 2_000
let One: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(1)


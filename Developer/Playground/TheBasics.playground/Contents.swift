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

//Integer and Floating-Point Conversion
let three = 3
let pointOneFourOneFiveNine = 0.14159
let piByAdd = Double(three) + pointOneFourOneFiveNine

let integerPi = Int(piByAdd)

//Type Aliases
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min
//maxAmplitudeFound is now 0

//Booleans
let orangesAreOrange = true
let turnipsAreDelicious = false

if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible.")
}
// prints "Eww, turnips are horribel."

let i = 1
//if i {
    //this example will not compile, and will report an error
//}

if i == 1 {
    //this example will compile successfully
}

//: Tuples

let http404Error = (404, "Not Found")
//http404Error is of type (Int, Stirng),
//and equals (404, "Not Found")
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
//prints "The status code is 404"
print("The status message is \(statusMessage)")
//prints "The status message is Not Found"

let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")
//prints "The status code is 404"

print("The status code is \(http404Error.0)")
//prints "The status code is 404"
print("The status message is \(http404Error.1)")
//prints "The status message is Not Found"

let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")
//prints "The status code is 200"
print("The status message is \(http200Status.description)")
//prints "The status message is OK"

    
//: Optionals
let possibleNumber = "123"
//let convertedNumber = Int(possibleNumber)
//Cannot find an initailzer for type 'int' that accepts an argument list of type '(String)'
//convertedNumber is inferred to be of type "Int?", or "optional Int"

var serverResponseCode:Int? = 404
//serverResponseCode contains an actual Int value is 404
serverResponseCode = nil
//serverResponseCode now contains no value

var surveyAnswer: String?
//surveyAnswer automatically set to nil

//if convertedNumber != nil {
//    print("convertedNumber contains some integer value")
//}

//:Optional Binding


//:Impliciltly Unwrapped Optional
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! //requires an exclamation mark


let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString //no need for an exclamation mark

if assumedString != nil {
    print(assumedString)
}
//prints "An implicitly unwrapped optional string"

if let definiteString = assumedString {
    print(definiteString)
}
// prints "An implicitly unwrapped optional string."


//:Error Handling
let age = -3
//assert(age >= 0, "A person's age cannot be less than zero")
// this casuses the assertion to trigger, because age is not >= 0

//assert(age >= 0)







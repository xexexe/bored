//: Playground - noun: a place where people can play

import UIKit

//: Classes and Structures

//: Definition Syntax
class SomeClass {
    // class definition goes here
}

struct SomeStructure {
    // structure defintion goes here
}

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

//: Accessing Properties
print("The width of someResolution is \(someResolution.width)")
// prints "The width of someResolution is  0"

print("The width of someVideoMode is \(someVideoMode.resolution.width)")
// prints "The width of someVideoMode is 0"

someVideoMode.resolution.width = 1280
print("The width of someVideoMode is now \(someVideoMode.resolution.width)")
// prints "The width of someVideoMode is now 1280"

//: Memberwise Initializers for Structure Types
let vga = Resolution(width: 640, height: 480)

//: Structures and Enumerations Are Value Types
let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
cinema.width = 2048
print("cinema is now \(cinema.width) pixels wide")
// prints "cinema is now 2048 pixels wide"
print("hd is still \(hd.width) pixels wide")
// prints "hd is still 1920 pixels wide"

enum CompassPoint {
    case North, South, East, West
}
var currentdirection = CompassPoint.West
let rememberedDirection = currentdirection
currentdirection = .East
if rememberedDirection == .West {
    print("The remembered direction is still .West")
}
// prints "The remembered direction is sitll .West"

//: Classes Are Reference Types
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0
print("The frameRate property of tenEighty is now \(tenEighty.frameRate)")
// prints "The frameRate property of tenEighty is now 30.0"

//: Identity Operators
if tenEighty === alsoTenEighty {
    print("tenEighty and alsoTenEighty refer to the some VideoMode instance.")
}
// prints "tenEighty and alsoTenEighty refer to the some VideoMode instance"

//: Choosing Between Classes and Structures

//:Assignment and Copy Behavior for Strings,Arrays,and Dictionaries




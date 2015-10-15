//: Playground - noun: a place where people can play

import UIKit

enum SomeEnumeration {
    // enumeration definition goes here
}

enum CompassPoint {
    case North
    case South
    case East
    case West
}

enum Planet {
    case Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}

var directionToHead = CompassPoint.West
directionToHead = .East

//: Matching Enumeration Values with a Switch Statement
directionToHead = .South
switch directionToHead {
case .North:
    print("Lots of planets have a north")
case .South:
    print("Watch out for penguins")
case .East:
    print("Where the sun rises")
case .West:
    print("Where the skies are blue")
}
// prints "Watch out for penguins"

let somePlanet = Planet.Earth
switch somePlanet {
case .Earth:
    print("Mostly harmless")
default:
    print("Not a safe place for humans")
}
// prints "Mostly harmless"

//: Associated Values
enum Barcode {
    case UPCA(Int, Int, Int, Int)
    case QRCode(String)
}
var productBarcode = Barcode.UPCA(8, 85909, 51226, 3)
productBarcode = .QRCode("ABCDEFGHIJKLMNOP")
switch productBarcode {
case .UPCA(let numberSystem, let manufacturer, let product, let check):
    print("UPC-A: \(numberSystem), \(manufacturer), \(product), \(check).")
case .QRCode(let productCode):
    print("QR code: \(productCode).")
}
// prints "QR code: ABCDEFGHIJKLMNOP."

switch productBarcode {
case let .UPCA(numberSystem, manufacturer, product, check):
    print("UPC-A: \(numberSystem), \(manufacturer), \(product), \(check)")
case let .QRCode(productCode):
    print("QR code: \(productCode)")
}
// prints "QR code: ABCDEFGHIJKLMNOP."

//: Raw Values
enum ASCIIControlCharacter: Character {
    case Tab = "\t"
    case LineFeed = "\n"
    case CarriageReturn = "\r"
}

enum Planet2: Int {
    case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}
let earthsOrder = Planet2.Earth.rawValue
// earthsOrder is 3

//: Initializing from a Row Value
let possiblePlanet = Planet2(rawValue: 7)
// possiblePlanet is of type Planet? and equals Planet.Uranus

let positionToFind = 9
if let somePlanet = Planet2(rawValue: positionToFind) {
    switch somePlanet {
    case .Earth:
        print("Mostly harmless")
    default:
        print("Not a safe place for humans")
    }
} else {
    print("There isn't a planet at position \(positionToFind)")
}
// prints "There isn't a planet at position 9"

//: Playground - noun: a place where people can play

import UIKit

//: Extensions
//: Extensions Syntax
/*
extension SomeType {
    // new functionality to add to SomeType goes here
}
*/
/*
extension SomeType: SomeProtocol, AnotherProtocol {
    // immplementation of protocol requirements goes here
}
*/
//: Computed Properties
extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}

let oneInch = 25.4.mm
println("One inch is \(oneInch) meters")
// prints "One inch is 0.0254 meters"
let threeFeet = 3.ft
println("Three feet is \(threeFeet) meters")
// prints "Three feet is 0.914399970739201 meters"

let aMarathon = 42.km + 195.m
println("A marathon is \(aMarathon) meters long")

//: Initializers
struct Size {
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0, y = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
}

let defaultRect = Rect()
let memberwiseRect = Rect(origin: Point(x: 2.0, y: 2.0), size: Size(width: 5.0, height: 5.0))
extension Rect {
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY),size: size)
    }
}

let centerRect = Rect(center: Point(x: 4.0, y: 4.0), size: Size(width: 3.0, height: 3.0))
// centerRect's origin is (2.5, 2.5) and its size is (3.0, 3.0)

//: Methods
extension Int {
    func repetitions(task: () -> ()) {
        for _ in 0..<self {
            task()
        }
    }
}
3.repetitions({
    println("Hello!")
})
// Hello!
// Hello!
// Hello!

3.repetitions({
    println("Goodbye!")
})
// Goodbye!
// Goodbye!
// Goodbye!

//: Mutating Instance Methods
extension Int {
    mutating func square() {
        self = self * self
    }
}
var someInt = 3
someInt.square()
// someInt is now 9
someInt.square()
// someInt is now 81

//: Subscripts
extension Int {
    subscript(var digitIndex: Int) -> Int {
        var decimalBase = 1
        while digitIndex > 0 {
            decimalBase *= 10
            --digitIndex
        }
        return (self / decimalBase) % 10
    }
}

746381295[0]
// returns 5
746381295[1]
// returns 9
746381295[2]
// returns 2
746381295[8]
// returns 7
746381295[9]
// returns 0, as if you had requested
0746381295[9]

//: Nested Types
extension Int {
    enum Kind {
        case Negative, Zero, Postive
    }
    var kind: Kind {
        switch self {
        case 0:
            return .Zero
        case let x where x > 0:
            return .Postive
        default:
            return .Negative
        }
    }
}

func printIntegerkinds(numbers: [Int]) {
    for numbers in numbers {
        switch numbers.kind {
        case .Negative:
            println("- ")
        case .Zero:
            println("0 ")
        case .Postive:
            println("+ ")
        }
    }
    println()
}
printIntegerkinds([3,19,-27,0,-6,0,7])
// prints "+ + - 0 - 0 +"


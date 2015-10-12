//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class SomeBaseClass {
    class func printClassName() {
        println("SomeBaseClass")
    }
}

class SomeSubClass: SomeBaseClass {
    override class func printClassName() {
        println("SomeSubClass")
    }
}

let someInstance: SomeBaseClass = SomeSubClass()
// someInstance has a static type of SomeBaseClass at compile time, and
// it has a dynamc type of SomeSubClass at runtime
someInstance.dynamicType.printClassName()
// prints "SomeSubClass"

var x: Int? = 0
x!++
x
// x is now 1

var someDictionary = ["a": [1, 2, 3],"b":[10, 20]]
someDictionary["a"]![0] = 100
// someDictionary is now [b: [10, 20], a: [100, 2, 3]]

let (firstNumber, secondNumber) = (10, 42)
println("The first number is \(firstNumber)")
println("The second number is \(secondNumber)")

func f(x: Int, y: String) -> String {
    return y + String(x)
}
f(7, "hello") // x and y have no name
class C {
    func f(x: Int, y: String) -> String {
        return y + String(x)
    }
}
let c = C()
c.f(7, y: "hello") // x has no name, y has a name

func f2(x: Int = 42) -> Int { return x }
f2()            //vaild, uses default value
f2(x: 7)        //vaild, name and value provided
//f2(7)           //Invalid, value provided without its name

let point = (3, 2)
switch point {
    // Bind x and y to the elements of point.
case let (x, y):
    println("The point is at (\(x), \(y))")
}
// prints "The pint is at (3, 2)."

let points = [(0, 0), (1, 0), (1, 1), (2, 0), (2, 1)]

func simpleMax<T: Comparable>(x: T, y: T) -> T {
    if x < y {
        return y
    }
    return x
}

simpleMax(17, 42)               // T is inferred to be Int
simpleMax(3.14159, 2.71828)     // T is inferred to be Double





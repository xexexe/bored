//: Playground - noun: a place where people can play

import UIKit

//: The Sorted Function
let names = ["Chris", "Alex", "Barry", "Daniella"]

func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}
var reversed = sorted(names, backwards)
// reversed is equal to ["Ewa", "Daniella", "Chris", "Barry", "Alex"]

//: Closure Expression Syntax

reversed = sorted(names, { (s1: String, s2: String) -> Bool in return s1 > s2 })

reversed = sorted(names, { s1, s2 in return s1 > s2 } )

reversed = sorted(names, { s1, s2 in s1 > s2 } )

reversed = sorted(names, { $0 > $1 } )

reversed = sorted(names, >)

//: Trailing Closures
func someFunctionThatTakesAClosure(closure: () -> ()) {
    // function body goes here
}

// here's how you call this function without using a trailing closure:

someFunctionThatTakesAClosure({
    // closure's body goes here
})

// here's how you call this function with a trailing closure instead:

someFunctionThatTakesAClosure() {
    // trailing closure's body goes here
}

reversed = sorted(names) { $0 > $1 }

let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]

let strings = numbers.map {
    (var number) -> String in
    var output = ""
    while number > 0 {
        output = digitNames[numbers % 10]! + output
        number /= 10
    }
    return output
}
// strings is inferred to be of type [String]
// its value is ["OneSix", "FiveEight", "FiveOneZero"]




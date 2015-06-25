//: Playground - noun: a place where people can play

//https://developer.apple.com/library/prerelease/mac/documentation/Swift/Conceptual/Swift_Programming_Language/ControlFlow.html#//apple_ref/doc/uid/TP40014097-CH9-ID120

import UIKit

var str = "Control Flow"


//: for loop

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

// 1 times 5 is 5
// 2 times 5 is 10
// 3 times 5 is 15
// 4 times 5 is 20
// 5 times 5 is 25

let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")
// prints "3 to the power of 10 is 59049"

let names = ["Anna", "Alex", "Brain", "Jack"]
for name in names {
    print("Hello, \(name)!")
}
// Hello, Anna!
// Hello, Alex!
// Hello, Bran!
// Hello, Jack!

let numberOfLegs = ["spider": 8, "ant": 6,"cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

// cat have 4 legs
// spiders have 8 legs
// ant have 6 legs

for var index = 0;index < 3; ++index {
    print("index is \(index)")
}
// index is 0
// index is 1
// index is 2

var index :Int
for index = 0;index < 3; ++index {
    print("index is \(index)")
}
// index is 0
// index is 1
// index is 2
//print("The loop statements were exeuted \(index) times")
// prints "The loop statements were executed 3 times"

//: while loop
let finalSquare = 25
var board = [Int](count: finalSquare + 1, repeatedValue: 0)

board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08

var square = 0
var diceRoll = 0
while square < finalSquare {
    // roll the dice
    if ++diceRoll == 7 { diceRoll = 1 }
    // move by the rolled amount
    square += diceRoll
    if square < board.count {
        // if we're still on the board, move up or down for a snake or a ladder
        square += board[square]
    }
}

print("Game over!")

//do {
//    // move up or down for a snake or ladder
//    square += board[square]
//    // roll the dice
//    if ++diceRoll == 7 { diceRoll = 1}
//    // move by the rolled amount
//    square += diceRoll
//} while square < finalSquare
//print ("Game over!")

//: if loop

var temperatureInFahrenheit = 30
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
}
// prints "It's very cold. Consider wearing a scarf."

temperatureInFahrenheit = 40
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else {
    print("It's not that cold. Wear a t-shirt.")
}
// prints "It's not that cold. Wear a t-shirt."

temperatureInFahrenheit = 90
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit >= 86 {
    print("It's really warm. Don't forget to wear sunscreen.")
} else {
    print("It's not that cold. Wear a t-shirt.")
}
// prints "It's really warm. Don't forget to wear sunscreen."

temperatureInFahrenheit = 72
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit >= 86 {
    print("It's really warm. Don't forget to wear sunsreen.")
}

//:Switch
let someCharacter: Character = "e"
switch someCharacter {
case "a", "e", "i", "o", "u":
    print("\(someCharacter) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
"n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(someCharacter) is a consonant")
default:
    print("\(someCharacter) is not a vowel or a consonant")
}
// prints "e is a vowel"

let approximateCount = 62
let countedThings = "moons orbiting Saturn"
var naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")
// prints "There are dozens of moons orbiting Saturn."

let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("(0, 0)  is at the origin")
case (_, 0):
    print("(\(somePoint.0), 0) is on the x-axis")
case (0, _):
    print("(0, \(somePoint.1) is on the y-axis")
case (-2...2, -2...2):
    print("(\(somePoint.0), \(somePoint.1) is inside the box")
default:
    print("(\(somePoint.0), \(somePoint.1) is outside of the box")
}
// prints "(1, 1) is inside the box"

let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y)")
}
// prints "on the x-axis with an x value of 2"


let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}
// prints "(1, -1) is on the line x == -y"

//:Continue
let puzzleInput = "great minds think alike"
var puzzleOutput = ""
for character in puzzleInput {
    switch character {
    case "a", "e", "i", "o", "u", " ":
        continue
    default:
        puzzleOutput.append(character)
    }
}
print(puzzleOutput)
// prints "grtmndsthnklk"

//:Break
let numberSymbol: Character = "三"  // Simplified Chinese for the number 3
var possibleIntegerValue: Int?
switch numberSymbol {
case "1", "١", "一", "๑":
    possibleIntegerValue = 1
case "2", "٢", "二", "๒":
    possibleIntegerValue = 2
case "3", "٣", "三", "๓":
    possibleIntegerValue = 3
case "4", "٤", "四", "๔":
    possibleIntegerValue = 4
default:
    break
}
if let integerValue = possibleIntegerValue {
    print("The integer value of \(numberSymbol) is \(integerValue).")
} else {
    print("An integer value could not be found for \(numberSymbol).")
}
// prints "The integer value of 三 is 3."

//:Fallthrough
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}
print(description)
// prints "The number 5 is a prime number, and also an integer."


//: Early Exit
//func greet(person: [String: String]) {
//    guard let name = person["name"] else {
//        return
//    }
//    
//    print("Hello \(name)!")
//    
//    guard let location = person["location"] else {
//        print("I hope the weather is nice near you.")
//        return
//    }
//    
//    print("I hope the weather is nice in \(location).")
//}
//
//greet(["name": "John"])
//// prints "Hello John!"
//// prints "I hope the weather is nice near you."
//greet(["name": "Jane", "location": "Cupertino"])
//// prints "Hello Jane!"
//// prints "I hope the weather is nice in Cupertino."


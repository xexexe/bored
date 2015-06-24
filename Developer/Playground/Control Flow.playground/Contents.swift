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
print("The loop statements were exeuted \(index) times")
// prints "The loop statements were executed 3 times"

//: while loop
let finalSquare = 25
var board = [Int](count: finalSquare, repeatedValue: 0)

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








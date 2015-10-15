//: Playground - noun: a place where people can play

//: https://developer.apple.com/library/prerelease/mac/documentation/Swift/Conceptual/Swift_Programming_Language/StringsAndCharacters.html#//apple_ref/doc/uid/TP40014097-CH7-ID285

import UIKit

var str = "Hello, playground"


let someString = "Some string literal value"


let emptyString = ""
let anotherEmptyString = String()

if emptyString.isEmpty {
    print("Nothing to see here")
}

var varibleString = "Horse"
varibleString += "and carriage"
// varibleString is now "Horse and carriage"

let constantString = "Highlander"
//constantString += "and another Highlander"
// this reports a compile-time  error - a constant string cannot be modified

for character in "Dog!🐶".characters {
    print(character)
}


let exclamationMark: Character = "!"

let catCharacters: [Character] = ["C", "a", "t", "i", "🐱","."]
let catString = String(catCharacters)
print(catString)
// prints "Cat!🐱"

let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2
// welcome now equals "hello there"

var instruction = "look over"
instruction += string2
// instruction now equals "look over there"

welcome.append(exclamationMark)
// welcome now equals "hello there!"

//:String Interpolation
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
// message is "3 times 2.5 is 7.5"

let wiseWords = "\"Imageination is more important than knowledge\" - Einstein"
// "Imageination is more important than knowledge" - Einstein
let dollarSign = "\u{24}"                   //$,Unicode scalar U+0024
let blackHeart = "\u{2665}"                 //♥,Unicode scalar U+2665
let sparklingHeart = "\u{1F496}"            //💖,Unicode scalar U+1F496

//:Extended Grapheme Clusters
let aAcute: Character = "\u{E9}"                            //é
let combinedEAcute: Character = "\u{65}\u{301}"             //e followed by  ́
// eAcute is é, combinedEAcute is é


let precomposed: Character = "\u{D55C}"                     //한
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"      //한
// precomposed is 한,decomposed is 한

let enclosedEAcute: Character = "\u{E9}\u{20DD}"
// encloseEAcute is é⃝

let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"
// regionalIndicatorForUs is 🇺🇸


let greeting = "Guten Tag"
greeting[greeting.startIndex]
//G
greeting[greeting.endIndex.predecessor()]
//g
greeting[greeting.startIndex.successor()]
//u
let index = greeting.startIndex.advancedBy(7)//advance(greeting.startIndex, 7)
greeting[index]
//a
//greeting[greeting.endIndex]//error
//greeting.endIndex.successor()//error

for index in greeting.characters.indices{
    print("\(greeting[index])")
}
print("\n")
// prints "G u t e n T a g"

//:Inserting and Removing
welcome = "hello"
welcome.insert("!", atIndex: welcome.endIndex)
// welcome now equals "hello!"

welcome.insertContentsOf(" there".characters, at: welcome.endIndex.predecessor())
// welcome now equals "hello there!"

welcome.removeAtIndex(welcome.endIndex.predecessor())
welcome
// welcome now equals "hello there"

let range = welcome.endIndex.advancedBy(-6)..<welcome.endIndex
welcome.removeRange(range)
// welcome now equals "hello"

//:Comparing Strings
let quotation = "We're alot alike, you and I."
let sameQuotation = "We're alot alike, you and I."
if quotation == sameQuotation {
    print("These two strings are considered equal")
}
// prints "These two strings are considered equal"

let eAcuteQuestion = "Voulez-vous un caf\u{E9}?"

let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"

if eAcuteQuestion == combinedEAcuteQuestion {
    print("These two strings are considered equal")
}
// prints "These two strings are considered equal"

let latinCapitalLetterA: Character = "\u{41}"
let cyrillicCapitalLetterA: Character = "\u{0410}"
if latinCapitalLetterA != cyrillicCapitalLetterA {
    print("These two characters are not equivalent")
}
// prints "These two characters are not equivalent"



let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1") {
        ++act1SceneCount
    }
}
print("There are \(act1SceneCount) scenes in Act 1")
// prints "There are 5 scenes in Act 1"


var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Capulet's mansion") {
        ++mansionCount
    }else if scene.hasSuffix("Friar Lawrence's cell") {
        ++cellCount
    }
}
print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")
// prints "6 mansion scenes; 2 cell scenes"

let dogString = "Dog!!🐶"

for codeUnit in dogString.utf8 {
    print("\(codeUnit) ")
}

print("")

for codeUnit in dogString.utf16 {
    print("\(codeUnit) ")
}

print("")

for codeUnit in dogString.unicodeScalars {
    print("\(codeUnit) ")
}

print("")

for scalar in dogString.unicodeScalars {
    print("\(scalar) ")
}

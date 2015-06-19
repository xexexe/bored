//: Playground - noun: a place where people can play

//https://developer.apple.com/library/prerelease/mac/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html#//apple_ref/doc/uid/TP40014097-CH8-ID105

import UIKit

// MARK: Array


//: Create an Empty Array
var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items.")
// pritns "someInts is of type [Int] with 0 items."

someInts.append(3)
// someInts now contains 1 value of type Int
someInts = []
// someInts is now an empty array, but is still of type [Int]

//: Creating an Array with a Default Value
var threeDoubles = [Double](count: 3, repeatedValue: 0.0)
// threeDoubles is of type [Double], and equals [0.0, 0.0, 0.0]

//: Creating an Array by Adding Two Arrays Together
var antherThreeDoubles = [Double](count: 3, repeatedValue: 2.5)
// antherThreeDoubles is inferred as [Double], and equals [2.5, 2.5, 2.5]

var sixDoubles = threeDoubles + antherThreeDoubles
// sixDoubles is inferred as [Double], and equals [0.0, 0.0, 0.0, 2.5, 2.5, 2.5]

//: Create an Array with an Array Literal
var shoppingList: [String] = ["Eggs", "Milk"]
// shoppingList has been initalized with two initial items

shoppingList.count
print("The shopping list contains \(shoppingList.count) items.")
// prints "The shopping list contains 2 items."

if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list is not empty.")
}
// prints "The shopping list is not empty

shoppingList.append("Flour")
// shoppingList now contains 3 items, and someone is making pancakes

shoppingList += ["Baking Powder"]
// shoppingList now contains 4 items

shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
// shoppingList now contains 7 items

var firstItem = shoppingList[0]
// firstItem is equal to "Eggs"

shoppingList[0] = "Six eggs"
// the first item in the list is now equal to "Six eggs" rather than "Eggs"

shoppingList[4...6] = ["Bananas", "Apples"]
// shoppList now contains 6 items

shoppingList.insert("Maple Syrup", atIndex: 0)
// shoppingList now contains 7 items
// "Maple Syrup" is now the first item in the list

let mapleSyrup = shoppingList.removeAtIndex(0)
// the item that was at index 0 has just been removed
// shoppingList now contains 6 itmes, and no Maple Syrup
// the mapleSyrup constant is now equal to the removed "Maple Syrup" string

//: lteration Over an Array

for item in shoppingList {
    print(item)
}

// Six eggs
// Milk
// Flour
// Baking Powder
// Bananas

//for (index, value) in shoppingList {
//    print("Item \(index +1): \(value)")
//}

// MARK: Set
var letters = Set<Character>()
print("letters is of type Set<Charater> with \(letters.count) items")
// prints "letters is of type Set<Charater> with 0 items."

letters.insert("a")
// letters now contains 1 value of type Character

letters = []
// letters is now empty set, but it still of type set<Character>

//: Creating a Set with an Array Literal

var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
// favoriteGenres has been initialized with three initial items

print("I have \(favoriteGenres.count) favorite music genres")
// prints "I have 3 favorite music genres."

if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not picky")
} else {
    print("I never much cared for that")
}

favoriteGenres.insert("Jazz")
// favoriteGenres now contains 4 items

if let removedGenre = favoriteGenres.remove("Rock") {
    print("\(removedGenre)? I'm over it.")
} else {
    print("It's too funky in here")
}
// prints "Rock? I'm over it"

if favoriteGenres.contains("Funk") {
    print("I get up on the good foot.")
} else {
    print("It's too funky in here.")
}
// prints "It's too funky in here."

//: Iterating Over a Set
for genre in favoriteGenres {
    print("\(genre)")
}

// Classical
// Jazz
// Hip hop
//
//for genre in favoriteGenres.sort() {
//    print("\(genre)")
//}

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits)
oddDigits.intersect(evenDigits)
oddDigits.subtract(singleDigitPrimeNumbers)
oddDigits.exclusiveOr(singleDigitPrimeNumbers)

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubsetOf(farmAnimals)
// true
farmAnimals.isSupersetOf(houseAnimals)
// true
farmAnimals.isDisjointWith(cityAnimals)
// true


// MARK: Dictionaries

//: Dictionaries
// Create an Empty Dictionary
var namesOfIntegers = [Int: String]()
// namesOfIntegers is an empty [Int: String] dictionary

namesOfIntegers[16] = "sixteen"
// namesOfIntegers now contains 1 key-value pair
namesOfIntegers = [:]
// namesOfIntegers is once again an empty dictionary of type [Int: String]

//Creating a Dictionary with a Dictionary Literal
//var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

print("The airports dictionary contains \(airports.count) items")

if airports.isEmpty {
    print("The airports dictionary is empty")
} else {
    print("The airports dictionary is not empty")
}
// prints "The airports dictionary is not empty."

airports["LHR"] = "London"
// the airports dictionary now contains 3 items

airports["LHR"] = "London Heathrow"
// the value for "LHR" has been changed to "London Heathrow"

if let oldValue = airports.updateValue("Dublin Airprot", forKey: "DUB") {
    print("The old value for DUB was \(oldValue)")
}
// prints "The old value for DUB was Dublin.

if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName).")
} else {
    print("That airport is not in the airport dictionary.")
}
// prints "The name of the airport is Dublin Airport."

airports["APL"] = "Apple International"
// "Apple International" is not the real airport for APL, so delete it
airports["APL"] = nil
// APL has now been removed from the dictionary

if let removedValue = airports.removeValueForKey("DUB") {
    print("The removed airport's name is \(removedValue)")
} else {
    print("The airports dictionary does not contain a value for DUB")
}
// prints "The removed airport's name is Dublin Airport

for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}
// YYZ: Toronto Pearson
// LHR: London Heathrow

for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}
// Airport code: YYZ
// Airport code: LHR

for airportName in airports.values {
    print("Airport name: \(airportName)")
}
// Airport name: Toronto Pearson
// Airport name: London Heathrow


let airportCodes = [String](airports.keys)
// airportCodes is ["YYZ", "LHR"]
let airportNames = [String](airports.values)
// airportNames is ["Toronto Pearson", "London Heathrow"]


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





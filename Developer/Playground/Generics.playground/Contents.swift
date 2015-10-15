//: Playground - noun: a place where people can play

import UIKit

//: Generics

//: The Problem That Generics Solve
func swapTwoInts(inout a: Int, inout b: Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
// prints "someInt is now 107, and anotherInt is now 3"

func swapTwoStrings(inout a: String, inout b: String) {
    let temporaryA = a
    a = b
    b = temporaryA
}
func swapTwoDoubles(inout a: Double, inout b: Double) {
    let temporaryA = a
    a = b
    b = temporaryA
}

//: Generic Functions
func swapTwoValues<T>(inout a: T, inout b: T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt2 = 3
var anotherInt2 = 107
swapTwoInts(&someInt2, &anotherInt2)
someInt2
anotherInt2
// someInt is now 107, and anotherInt is now 3

var someString = "hello"
var anotherString = "world"
swapTwoValues(&someString, &anotherString)
someString
anotherString
// someString is now "world", and anotherString is now "hello"

//: Type Parameters
//: Naming Type Parameters
//: Generic Types
struct IntStack {
    var items = [Int]()
    mutating func push(item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
}

struct Stack<T> {
    var items = [T]()
    mutating func push(item: T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
}

var stackOfStrings = Stack<String>()
stackOfStrings.push("uno")
stackOfStrings.push("dos")
stackOfStrings.push("tres")
stackOfStrings.push("cuatro")
// the stack now contains 4 strings

let fromTheTop = stackOfStrings.pop()
// fromTheTop is equal to "cuatro", and the stack now contains 3 strings\

//: Extending a Generic Type
extension Stack {
    var topItem: T? {
        return items.isEmpty ? nil : items[items.count - 1]
    }
}

if let topItem = stackOfStrings.topItem {
    print("The top item on the stack is \(topItem).")
}
// prints "The top item on the stack is tres."

//: Type Constraints
//func someFunction<T: Someclass, U: SomeProtocol>(someT: T,someU: U) {
//    // function body goes here
//}


//: Type Constraints in Action
func findStringIndex(array: [String], valueToFind: String) -> Int? {
    for (index, value) in enumerate(array) {
        if value == valueToFind {
            return index
        }
    }
    return nil
}

let strings = ["cat", "dog", "llama", "parakeet", "terrapin"]
if let foundIndex = findStringIndex(strings, "llama") {
    print("The index of llama is \(foundIndex)")
}
// prints "The index of llama is 2"

//func findIndex<T>(array: [T], valueToFind: T) -> Int? {
//    for (index, value) in enumerate(array) {
//        if value == valueToFind {
//            return index
//        }
//    }
//    return nil
//}

func findIndex2<T: Equatable> (array: [T], valueToFind: T) -> Int? {
    for (index, value) in enumerate(array) {
        if value == valueToFind {
            return index
        }
    }
    return nil
}

let doubleIndex = findIndex2([3.14159, 0.1, 0.25], 9.3)
// doubleIndex is an optional Int with no value, because 9.3 is not in the array
let stringIndex = findIndex2(["Mike","Malcolm","Andrea"], "Andrea")
// stringIndex is an optional Int containing a value of 2

//: Associated Types
protocol Container {
    typealias ItemType
    mutating func append(item: ItemType)
    var count: Int { get }
    subscript(i: Int) -> ItemType { get }
}

struct IntStack2: Container {
    // original IntStack implementation
    var items = [Int]()
    mutating func push(item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
    // conformance to the Container protocol
    typealias ItemType = Int
    mutating func append(item: Int) {
        self.push(item)
    }
    var count: Int {
        return items.count
    }
    subscript(i: Int) -> Int {
        return items[i]
    }
}

struct Stack2<T>: Container {
    // original Stack<T> implementation
    var items = [T]()
    mutating func push(item: T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
    // conformance to the Container protocol
    mutating func append(item: T) {
        self.push(item)
    }
    
    var count: Int {
        return items.count
    }
    subscript(i: Int) -> T {
        return items[i]
    }
}

//: Where Clauses
func allItemsMatch<C1: Container, C2:Container where C1.ItemType == C2.ItemType, C1.ItemType: Equatable>
    (someContainer: C1, anotherContainer: C2) -> Bool {
        // check that both containers contain the same number of items
        if someContainer.count != anotherContainer.count {
            return false
        }
        // check each pair of items to see if they are equivalent
        for i in 0..<someContainer.count {
            if someContainer[i] != anotherContainer[i] {
                return false
            }
        }
        
        // all items match, so return true
        return true
}

var stackOfStrings2 = Stack2<String>()
stackOfStrings2.push("uno")
stackOfStrings2.push("dos")
stackOfStrings2.push("tres")

var arrayOfStrings = ["uno", "dos", "tres"]


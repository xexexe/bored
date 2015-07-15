//: Playground - noun: a place where people can play

import UIKit

class Person {
    let name: String
    init(name: String) {
        self.name = name
        println("\(name) is being initialized")
    }
    deinit {
        println("\(name) is being deinitialized")
    }
}
var reference1: Person?
var reference2: Person?
var reference3: Person?
reference1 = Person(name: "John Appleseed")
// prints "John Appleseed is being initialized"

reference2 = reference1
reference3 = reference1

reference1 = nil
reference2 = nil

reference3 = nil
// prints "John Appleseed is being deinitialized"

//: Strong Reference Cycles Between Class Instances
class Person2 {
    let name: String
    init(name: String) { self.name = name }
    var apartment: Apartment?
    deinit { println("\(name) is being deinitialized") }
}

class Apartment {
    let number: Int
    init(number: Int) { self.number = number }
    var tenant: Person2?
    deinit { println("Apartment #\(number) is being deinitialized") }
}

var john: Person2?
var number73: Apartment?

john = Person2(name: "John Appleseed")
number73 = Apartment(number: 73)

john!.apartment = number73
number73!.tenant = john

john = nil
number73 = nil

//: Resolving Strong Reference Cycles Between Class
class Person3 {
    let name: String
    init(name: String) { self.name = name }
    var apartment: Apartment2?
    deinit { println("\(name) is being deinitialized") }
}

class Apartment2 {
    let number: Int
    init(number: Int) { self.number = number }
    weak var tenant: Person3?
    deinit { println("Apartment #\(number) is being deinitialized") }
}

var john2: Person3?
var number74: Apartment2?

john2 = Person3(name: "John Appleseed")
number74 = Apartment2(number: 74)

john2!.apartment = number74
number74!.tenant = john2

john = nil
// prints "John Appleseed is being deinitialized
number74 = nil
// prints "Apartment #74 is being deinitialized

//: Unowned References
class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit { println("\(name) is being deinitialized") }
}

class CreditCard {
    let number: UInt64
    unowned let customer: Customer
    init(number: UInt64, customer: Customer) {
        self.number = number
        self.customer = customer
    }
    deinit { println("Card #\(number) is being deinitialized") }
}

var john4: Customer?

john4 = Customer(name: "John Appleseed")
john4!.card = CreditCard(number: 1234_5678_9012_3456, customer: john4!)

john = nil
// prints "John Appleseed is being deinitialized"
// prints "Card #1234567890123456 is being deinitialized"
// 283













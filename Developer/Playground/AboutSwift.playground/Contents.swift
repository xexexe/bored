//: Playground - noun: a place where people can play

import UIKit

enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    
    func compare(rank: Rank) -> Bool {
        return self.rawValue == rank.rawValue
    }
    
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.Ace
let aceRawValue = ace.rawValue

enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    
    func color() -> String {
        switch self {
        case .Spades ,.Clubs:
            return "black"
        case .Hearts ,.Diamonds:
            return "red"
        }
    }
    
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
}
let hearts = Suit.Hearts
let heartsColor = hearts.color()
let heartsDescription = hearts.simpleDescription()

struct Card {
    var rank: Rank
    var suit: Suit
    
    func createFullDeckOfCards() -> [Card] {
        var cards: [Card] = []
        var suits: [Suit] = [.Spades, .Hearts, .Diamonds, .Clubs]
        
        for i in 1...13 {
            for suit in suits {
                cards.append(Card(rank: Rank(rawValue: i)!, suit: suit))
            }
        }
        
        return cards
    }
    
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card(rank: .Three, suit: .Spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()
let fullDeck = threeOfSpades.createFullDeckOfCards()


enum ServerResponse {
    case Result(String, String)
    case Warning(String)
    case Error(String)
}

let success = ServerResponse.Result("6:00 am", "8:09 pm")
let warning = ServerResponse.Warning("hehe")
let failure = ServerResponse.Error("Out of cheese")

switch success {
case let .Result(sunrise, sunset):
    let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
case let .Warning(warning):
    let serverResponse = "Warning... \(warning)"
case let .Error(error):
    let serverResponse = "Failure.. \(error)"
}


protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription : String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += " Now 100% adjusted."
    }
}
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

struct SimpleStructure: ExampleProtocol{
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
         simpleDescription += " (adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

//enum SimpleEnum: ExampleProtocol {
//    case Base, Adjusted
//    
//    var simpleDescription() -> String { get {
//        return self.getDescription()
//    }
//    }
//    
//    func getDescription() -> String {
//        switch self {
//        case .Base:
//            return "A simple description of enum"
//        case .Adjusted:
//            return "Adjusted description of enum"
//        default:
//            return "default description"
//        }
//    }
//    
//    mutating func adjust() -> Void {
//        self = SimpleEnum.Adjusted
//    }
//}
//
//var c = SimpleEnum.Base
//c.adjust()
//let cDescription = c.simpleDescription

func repeatItem<Item>(item: Item, times: Int) -> [Item] {
    var result = [Item]()
    for i in 0..<times {
        result.append(item)
    }
    return result
}
repeatItem("knock", times: 4)//("knock", 4)

//Reimplement the Swift standard library's optional type
enum OptionalValue<T> {
    case None
    case Some(T)
}
var possibleInteger: OptionalValue<Int> = .None
possibleInteger = .Some(100)

func anyCommonElements <T, U where T: SequenceType, U:SequenceType, T.Generator.Element: Equatable,
    T.Generator.Element == U.Generator.Element> (lhs:T, rhs:U) -> Bool {
        for lhsItem in lhs {
            for rhsItem in rhs {
                if lhsItem == rhsItem {
                    return true
                }
            }
        }
        return false
}
//anyCommonElements([1, 2, 3], [3])
anyCommonElements([1, 2, 3], rhs: [3])

func anyCommonElements2 <T, U where T: SequenceType,
                            U:SequenceType,
                            T.Generator.Element: Equatable,
                            T.Generator.Element == U.Generator.Element>(lhs:T,rhs:U) -> Bool {
        return false
}



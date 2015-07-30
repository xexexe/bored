//: Playground - noun: a place where people can play

import UIKit

//: Nested Types
//: Nested Types in Action
struct BlackjackCard {
    // nested Suit enumeration
    enum Suit: Character {
        case Spades = "♠",Hearts = "♡", Diamonds = "♢",Clubs = "♣"
    }
    
    enum Rank: Int {
        case Two = 2, Three, Four, Five, Six, Seven, Eight, Nine, Ten
        case Jack, Queen, King, Ace
        struct Value {
            let first: Int, second: Int?
        }
        var values: Value {
            switch self {
            case .Ace:
                return Value(first: 1, second: 11)
            case .Jack, .Queen, .King:
                return Value(first: 10, second: nil)
            default:
                return Value(first: self.rawValue, second: nil)
            }
        }
    }
    
    // BlackjackCard properties and methods
    let rank: Rank, suit: Suit
    var description: String {
        var output = "suit is \(suit.rawValue)"
        output += " value is \(rank.value.first)"
        if let second = rank.values.second {
            output += " or \(second)"
        }
        return output
    }
}


let theAceOfSpades = BlackjackCard(rank: .Ace, suit: .Spades)
println("theAceOfSpades: \(theAceOfSpades.description)")
// prints "theAceOfSpades: suit is ♠,value is 1 or 11"
let heartsSymbol = BlackjackCard.Suit.Hearts.rawValue
// heartsSymbo is "♡"

//
//  Mana.swift
//  CardBase
//
//  Created by Jussi Enroos on 5.1.2015.
//  Copyright (c) 2015 Jussi Enroos. All rights reserved.
//

import Foundation

public enum ManaColor {
    case Colorless(Int), White, Blue, Black, Red, Green
    
    func cost() -> Int {
        switch self {
            case .Colorless(let value):
                return max(0, value)
            default:
                return 1
        }
    }
    
    func symbol() -> String {
        switch self {
        case .Colorless(let value):
            return String(value)
        case .White:
            return "W"
        case .Blue:
            return "U"
        case .Black:
            return "B"
        case .Red:
            return "R"
        case .Green:
            return "G"
        }
    }
}

public class ManaSymbol {
    var value:ManaColor = .Colorless(0)
    var alternateValue:ManaColor?
    
    func convertedCost() -> Int {
        if let alter = alternateValue {
            return max(value.cost(), alter.cost())
        } else {
            return value.cost()
        }
    }
    
    func abbreviation() -> String {
        return "{" + value.symbol() + (alternateValue != nil ? "/" + alternateValue!.symbol() + "}" : "}")
    }
    
    
    public init(value val:ManaColor, alternate alt:ManaColor) {
        value = val
        var altVal:ManaColor? = alt
        alternateValue = altVal
    }
    public init (value val:ManaColor) {value = val}
    public convenience init () {self.init(value: .Colorless(0))}
}

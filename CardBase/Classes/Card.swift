//
//  File.swift
//  CardBase
//
//  Created by Jussi Enroos on 5.1.2015.
//  Copyright (c) 2015 Jussi Enroos. All rights reserved.
//

import Foundation

enum Rarity {
    case Common, Uncommon, Rare, MythicRare, Land, Special, Promo, Bonus
}

class CardType {
    var name:String?
}

class Card {
    var name:String?
    var manaSymbols:[ManaSymbol]?
    
    var convertedManaCost:Int {
        var cost:Int = 0
        
        manaSymbols?.map {
            cost += $0.convertedCost()
        }

        return cost
    }
    
    // Type info
    var types:[CardType]?
    var subTypes:[String]?
    
    // Power & toughness
    var power:Int?
    var toughness:Int?
    
    var block:CardBlock?
    var expansion:CardSet?
    var cardNumber:Int?
    
    // Art info
    var imageName:String?
    var backgroundImageName:String?
    
    var markImage:String?
    
    var artist:String?
    
    var fullCardImageName:String?
    
    // Oracle text
    var rulesText:String?
    
    var flavorText:String?
}

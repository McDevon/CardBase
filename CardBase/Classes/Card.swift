//
//  File.swift
//  CardBase
//
//  Created by Jussi Enroos on 5.1.2015.
//  Copyright (c) 2015 Jussi Enroos. All rights reserved.
//

import Foundation

enum Rarity {
    case Common, Uncommon, Rare, MythicRare, Land, Special, Token, Promo, Bonus
}

class CardType {
    var name:String?
}

class BaseCard {
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
    
    var oracleText:String?
}

class SetCard : BaseCard {
    var block:CardBlock?
    var expansion:CardSet?
    var cardNumber:Int?
    
    // Art info
    var imageName:String?
    var frameImageName:String?
    
    var markImage:String?   // Guild watermark
    
    var artist:String?
    
    var fullCardImageName:String?
    
    var rulesText:String?
    
    var flavorText:String?
}
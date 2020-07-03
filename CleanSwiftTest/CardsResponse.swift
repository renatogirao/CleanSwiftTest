//
//  CardsResponse.swift
//  CleanSwiftTest
//
//  Created by Renato Savoia Girão on 03/07/20.
//  Copyright © 2020 Renato Savoia Girão. All rights reserved.
//

import Foundation

class CardsResponse: Codable {
    let code: Int?
    var status: String?
    let data: CardData?
}

struct CardData : Codable {
    
    let classes: String
    let cards : [Card]
    
    enum classes {
        case Druid
        case Hunter
        case Mage
        case Paladin
        case Priest
        case Rogue
        case Shaman
        case Warlock
        case Warrior
        case Dream
    }
}

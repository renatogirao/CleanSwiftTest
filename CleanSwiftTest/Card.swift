//
//  Card.swift
//  CleanSwiftTest
//
//  Created by Renato Savoia Girão on 02/07/20.
//  Copyright © 2020 Renato Savoia Girão. All rights reserved.
//

import Foundation
import UIKit

struct Card : Codable {
    let img: String
    let imgGold: String
    let cardID: String
    let name: String
    let deckID: String
    let cardType: String
    let faction: String
    let rarity: String
    let race: String
    
    enum codingKeys: String, CodingKey {
        case deckID = "dbfId"
        case img
        case imgGold
        case cardID
        case name
        case cardType = "type"
        case faction
        case rarity
        case race
    }
    
}

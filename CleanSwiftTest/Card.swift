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
    let imageGray: String
    let imageGold: String
    let cardID: String
    let heroName: String
    let deckID: String
    let cardSet: String
    let cardType: String
    let faction: String
    let rarity: String
    
    enum codingKeys: String, CodingKey {
        case deckID = "dbfId"
        case heroName = "name"
    }
    
}

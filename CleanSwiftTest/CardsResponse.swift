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
    let filterTypes: String
    let cards : [Card]
    
    enum filterTypes: String, CodingKey {
        case classType = "class"
        case race = "Race"
        case quality = "Quality"
        case type = "Type"
        case faction = "Faction"
    }
}

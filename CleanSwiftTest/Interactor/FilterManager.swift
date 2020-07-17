//
//  FilterManager.swift
//  CleanSwiftTest
//
//  Created by Renato Savoia Girão on 05/07/20.
//  Copyright © 2020 Renato Savoia Girão. All rights reserved.
//

import Foundation
import UIKit

class FilterManager {
    
    enum filterTypes: String, CodingKey, CaseIterable {
        case classType = "Class"
        case race = "Race"
        case quality = "Quality"
        case type = "Type"
        case faction = "Faction"
    }
    
    enum classType: String, CodingKey, CaseIterable {
        case DeathKnight = "Death Knight"
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
        case Neutral
        case DemonHunter = "Demon Hunter"
    }
    
    enum race: String, CaseIterable {
        case Demon
        case Dragon
        case Elemental
        case Mech
        case Murloc
        case Beast
        case Pirate
        case Totem
    }
    
    enum quality: String {
        case Free
        case Common
        case Rare
        case Epic
        case Legendary
    }
    
    enum type: String, CodingKey {
        case Hero
        case Minion
        case Spell
        case Enchantment
        case Weapon
        case HeroPower = "Hero Power"
    }
    
    enum faction: String {
        case Horde
        case Slliance
        case Neutral
    }
}

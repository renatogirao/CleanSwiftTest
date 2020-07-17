//
//  CardsResponse.swift
//  CleanSwiftTest
//
//  Created by Renato Savoia Girão on 03/07/20.
//  Copyright © 2020 Renato Savoia Girão. All rights reserved.
//

import Foundation
import UIKit

    enum filterTypes: String, CodingKey {
        case classType = "Class"
        case race = "Race"
        case quality = "Quality"
        case type = "Type"
        case faction = "Faction"
    }

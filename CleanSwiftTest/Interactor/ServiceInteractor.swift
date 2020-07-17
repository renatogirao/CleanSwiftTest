//
//  ServiceInteractor.swift
//  CleanSwiftTest
//
//  Created by Renato Savoia Girão on 02/07/20.
//  Copyright © 2020 Renato Savoia Girão. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

class ServiceInteractor {
    
    static private let basepath = "https://omgvamp-hearthstone-v1.p.rapidapi.com/cards/"
    static private let limitCards = 30
    
    enum endpoints : String {
        case classEndpoint = "https://omgvamp-hearthstone-v1.p.rapidapi.com/cards/classes/"
        case raceEndpoint = "https://omgvamp-hearthstone-v1.p.rapidapi.com/cards/races/"
        case typeEndpoint = "https://omgvamp-hearthstone-v1.p.rapidapi.com/cards/types/"
        case factionEndpoint = "https://omgvamp-hearthstone-v1.p.rapidapi.com/cards/factions/"
        case qualityEndpoint = "https://omgvamp-hearthstone-v1.p.rapidapi.com/cards/qualities/"
    }
    
    let headers: HTTPHeaders = [
        "x-rapidapi-host": "omgvamp-hearthstone-v1.p.rapidapi.com",
        "x-rapidapi-key": "84a42ea19fmshd991bd7c8da3cbep16ab66jsnb113864547f2"
    ]
    
//    func loadCards(endpoint: endpoints, filterType: FilterManager ,onComplete: @escaping ([Card]?) -> Void ) {
//
//        let finalURL = "\(endpoint)+\(filterType)"
//        AF.request(endpoint.rawValue, headers: headers).responseJSON { (response) in
//            guard let data = response.data,
//                let cardInfo = try? JSONDecoder().decode([Card].self, from: data)
//                else {
//                    onComplete(nil)
//                    return
//            }
//            onComplete(cardInfo)
//        }
//    }
}

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
    case classEndpoint = "https://omgvamp-hearthstone-v1.p.rapidapi.com/cards/classes/%7Bclass%7D"
    case raceEndpoint = "https://omgvamp-hearthstone-v1.p.rapidapi.com/cards/races/%7Brace%7D"
    case typeEndpoint = "https://omgvamp-hearthstone-v1.p.rapidapi.com/cards/types/%7Btype%7D"
    case factionEndpoint = "https://omgvamp-hearthstone-v1.p.rapidapi.com/cards/factions/%7Bfaction%7D"
    case qualityEndpoint = "https://omgvamp-hearthstone-v1.p.rapidapi.com/cards/qualities/%7Bquality%7D"
    }
    
    let headers: HTTPHeaders = [
        "x-rapidapi-host": "omgvamp-hearthstone-v1.p.rapidapi.com",
        "x-rapidapi-key": "84a42ea19fmshd991bd7c8da3cbep16ab66jsnb113864547f2"
    ]
    
    class func loadCards(endpoint: endpoints, onComplete: @escaping (CardsResponse?) -> Void ) {
        
        AF.request(endpoint.rawValue, headers: [
            "x-rapidapi-host": "omgvamp-hearthstone-v1.p.rapidapi.com",
            "x-rapidapi-key": "84a42ea19fmshd991bd7c8da3cbep16ab66jsnb113864547f2"
        ]).responseJSON { (response) in
            guard let data = response.data,
                let cardInfo = try? JSONDecoder().decode(CardsResponse.self, from: data),
                cardInfo.code == 200 else {
                    onComplete(nil)
                    return
            }
            onComplete(cardInfo)
        }
    }
}

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
    
    static private let basepath = "https://omgvamp-hearthstone-v1.p.rapidapi.com/cards"
    static private let key = "84a42ea19fmshd991bd7c8da3cbep16ab66jsnb113864547f2"
    static private let limitCards = 30

    class func serviceLoadCards(page: Int, onComplete: @escaping (CardsResponse?) -> Void ) {
        
        AF.request(basepath).responseJSON { (response) in
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

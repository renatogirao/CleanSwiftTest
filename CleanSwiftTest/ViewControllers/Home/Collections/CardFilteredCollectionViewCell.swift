//
//  CardFilteredCollectionViewCell.swift
//  CleanSwiftTest
//
//  Created by Renato Savoia Girão on 10/07/20.
//  Copyright © 2020 Renato Savoia Girão. All rights reserved.
//

import UIKit
import Kingfisher
import Alamofire

class CardFilteredCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var cardImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        //loadCellCard(with: )
    }

    func loadCellCard(with card: Card) {
        if let url = URL(string: card.imageGold) {
            cardImage.kf.setImage(with: url)
        } else {
            cardImage.image = nil
        }
    }
}

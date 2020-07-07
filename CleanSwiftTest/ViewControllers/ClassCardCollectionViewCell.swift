//
//  ClassCardCollectionViewCell.swift
//  CleanSwiftTest
//
//  Created by Renato Savoia Girão on 07/07/20.
//  Copyright © 2020 Renato Savoia Girão. All rights reserved.
//

import UIKit

class ClassCardCollectionViewCell: UICollectionViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configCellLayout()
    }

    func configCellLayout() {
        self.layer.backgroundColor = CGColor(red: .random(in: 0...0.58), green: .random(in: 0...0.58), blue: .random(in: 0...0.58), alpha: 1)
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 8
    }
    
}

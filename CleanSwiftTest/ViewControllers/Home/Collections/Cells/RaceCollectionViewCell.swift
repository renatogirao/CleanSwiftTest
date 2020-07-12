//
//  RaceCollectionViewCell.swift
//  
//
//  Created by Renato Savoia Girão on 08/07/20.
//

import UIKit

class RaceCollectionViewCell: UICollectionViewCell {

    @IBOutlet var lblFilterType: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        configCellLayout()
    }

    func configCellLayout() {
          self.layer.backgroundColor = UIColor(red: .random(in: 0...0.58), green: .random(in: 0...0.58), blue: .random(in: 0...0.58), alpha: 1) as! CGColor
          self.layer.borderWidth = 1
          self.layer.cornerRadius = 8
      }
}

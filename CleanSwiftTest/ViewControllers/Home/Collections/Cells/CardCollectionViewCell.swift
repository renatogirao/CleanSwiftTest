//
//  CardCollectionViewCell.swift
//  CleanSwiftTest
//
//  Created by Renato Savoia Girão on 17/07/20.
//  Copyright © 2020 Renato Savoia Girão. All rights reserved.
//

import UIKit

class CardCollectionViewCell: UICollectionViewCell {
    
    var cardLabel: TitleLabel? {
        didSet {
            guard let cardLabel = cardLabel else {return}
            title.text = cardLabel.titleLabel
    }
}

fileprivate let bg : UIView = {
    let iv = UIView()
    iv.translatesAutoresizingMaskIntoConstraints = false
    iv.contentMode = .scaleAspectFill
    iv.clipsToBounds = true
    iv.backgroundColor = UIColor(red: .random(in: 0...0.58), green: .random(in: 0...0.58), blue: .random(in: 0...0.58), alpha: 1)
    iv.layer.cornerRadius = 12
    return iv
}()

fileprivate let title : UILabel = {
    let lbl = UILabel()
    lbl.text = ""
    lbl.textColor = .white
    lbl.translatesAutoresizingMaskIntoConstraints = false
    lbl.contentMode = .scaleAspectFill
    lbl.clipsToBounds = true
    lbl.backgroundColor = .clear
    return lbl
}()


override init(frame: CGRect) {
    super.init(frame: frame)
    contentView.addSubview(bg)
    contentView.addSubview(title)
    bg.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
    bg.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
    bg.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
    bg.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    title.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 75).isActive = true
    title.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12 ).isActive = true
}

required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
}

override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
}

}

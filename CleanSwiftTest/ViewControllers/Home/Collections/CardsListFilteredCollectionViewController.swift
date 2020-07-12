//
//  CardsListFilteredCollectionViewController.swift
//  CleanSwiftTest
//
//  Created by Renato Savoia Girão on 10/07/20.
//  Copyright © 2020 Renato Savoia Girão. All rights reserved.
//

import UIKit
import Alamofire
import Kingfisher

private let reuseIdentifier = "Cell"

class CardsListFilteredCollectionViewController: UICollectionViewController {
    
    var listCardsArray = [Card]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cardFilteredCell")

    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listCardsArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cardFilteredCell", for: indexPath)
    
        return cell
    }
}

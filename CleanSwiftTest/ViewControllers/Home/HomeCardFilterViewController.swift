//
//  HomeCardFilterViewController.swift
//  
//
//  Created by Renato Savoia Girão on 03/07/20.
//

import UIKit

class HomeCardFilterViewController: UIViewController {
    
    @IBOutlet weak var classCollectionView: UICollectionView!
    @IBOutlet weak var raceCollectionView: UICollectionView!
    @IBOutlet weak var qualityCollectionView: UICollectionView!
    @IBOutlet weak var typeCollectionView: UICollectionView!
    @IBOutlet weak var factionCollectionView: UICollectionView!
    var arrayCardsClass : [Card]
    var arrayCardsRace : [Card]
    var arrayCardsQuality : [Card]
    var arrayCardsType : [Card]
    var arrayCardsFaction : [Card]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func loadCards() {
        ServiceInteractor.loadCards(<#T##self: ServiceInteractor##ServiceInteractor#>)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}


extension HomeCardFilterViewController : UICollectionViewDataSource, UICollectionViewDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == ClassCardCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "classCardCell", for: indexPath as IndexPath) as? ClassCardCollectionViewCell
        }
        if collectionView == RaceCardCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cardCell", for: indexPath as IndexPath) as? RaceCardCollectionView
        }
        if collectionView == TypeCardCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cardCell", for: indexPath as IndexPath) as? ClassCardCollectionViewCell
        }
    }
        
        return cell
    }
    
    
}

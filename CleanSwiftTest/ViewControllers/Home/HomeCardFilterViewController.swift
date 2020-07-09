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
    
    
    var loadingCards = false
    override func viewDidLoad() {
        super.viewDidLoad()
        loadCards()
    }
    
    func loadCards() {
        loadingCards = true
        ServiceInteractor.loadCards(endpoint: .classEndpoint) { (info) in
            if let info = info {
                self.arrayCardsClass += info.data.cards
                print("total: \(self.arrayCardsClass.count)")
                DispatchQueue.main.async {
                    self.classCollectionView.reloadData()
                }
            }
        }
        
        
    }
}

extension HomeCardFilterViewController : UICollectionViewDataSource, UICollectionViewDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch collectionView {
        case classCollectionView:
            return arrayCardsClass.count
        case raceCollectionView:
            return arrayCardsRace.count
        case qualityCollectionView:
            return arrayCardsQuality.count
        case typeCollectionView:
            return arrayCardsType.count
        case factionCollectionView:
            return arrayCardsFaction.count
        default:
            print ("\nERRO AO SELECIONAR A COLLECTION\n")
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: UICollectionViewCell
        switch collectionView {
        case classCollectionView:
            cell = (collectionView.dequeueReusableCell(withReuseIdentifier: "classCardCell", for: indexPath as IndexPath) as? ClassCardCollectionViewCell)!
        case raceCollectionView:
            cell = (collectionView.dequeueReusableCell(withReuseIdentifier: "classCardCell", for: indexPath as IndexPath) as? RaceCollectionViewCell)!
        case qualityCollectionView:
            cell = (collectionView.dequeueReusableCell(withReuseIdentifier: "classCardCell", for: indexPath as IndexPath) as? QualityCollectionViewCell)!
        case typeCollectionView:
            cell = (collectionView.dequeueReusableCell(withReuseIdentifier: "classCardCell", for: indexPath as IndexPath) as? TypeCollectionViewCell)!
        case factionCollectionView:
            cell = (collectionView.dequeueReusableCell(withReuseIdentifier: "classCardCell", for: indexPath as IndexPath) as? FactionCollectionViewCell)!
        default:
            print ("\nERRO AO SELECIONAR A COLLECTION\n")
        }
        return cell
    }
}

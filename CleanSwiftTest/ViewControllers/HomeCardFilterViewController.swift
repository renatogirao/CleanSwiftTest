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

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension HomeCardFilterViewController : UICollectionViewDataSource, UICollectionViewDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
            return arrayCardsClass.count
        }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cardCell", for: indexPath as IndexPath) as? ClassCardCollectionViewCell
        
    }
    
    
}

//
//  ViewController.swift
//  CleanSwiftTest
//
//  Created by Renato Savoia Girão on 17/07/20.
//  Copyright © 2020 Renato Savoia Girão. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var filterTypesArr : [TitleLabel] = [TitleLabel(titleLabel: "Class"),
                                         TitleLabel(titleLabel: "Race"),
                                         TitleLabel(titleLabel: "Quality"),
                                         TitleLabel(titleLabel: "Type"),
                                         TitleLabel(titleLabel: "Faction")]
    
    var classTypeArr : [TitleLabel] = [TitleLabel(titleLabel: "Death Knight"),
                                       TitleLabel(titleLabel: "Druid"),
                                       TitleLabel(titleLabel: "Hunter"),
                                       TitleLabel(titleLabel: "Mage"),
                                       TitleLabel(titleLabel: "Paladin"),
                                       TitleLabel(titleLabel: "Priest"),
                                       TitleLabel(titleLabel: "Rogue"),
                                       TitleLabel(titleLabel: "Shaman"),
                                       TitleLabel(titleLabel: "Warlock"),
                                       TitleLabel(titleLabel: "Warrior"),
                                       TitleLabel(titleLabel: "Dream"),
                                       TitleLabel(titleLabel: "Neutral"),
                                       TitleLabel(titleLabel: "Type"),
                                       TitleLabel(titleLabel: "Demon Hunter")]
    
    var raceArr : [TitleLabel] = [TitleLabel(titleLabel: "Demon"),
                                  TitleLabel(titleLabel: "Dragon"),
                                  TitleLabel(titleLabel: "Elemental"),
                                  TitleLabel(titleLabel: "Mech"),
                                  TitleLabel(titleLabel: "Murloc"),
                                  TitleLabel(titleLabel: "Beast"),
                                  TitleLabel(titleLabel: "Pirate"),
                                  TitleLabel(titleLabel: "Totem")]
    
    var qualityArr : [TitleLabel] = [TitleLabel(titleLabel: "Free"),
                                     TitleLabel(titleLabel: "Common"),
                                     TitleLabel(titleLabel: "Rare"),
                                     TitleLabel(titleLabel: "Epic"),
                                     TitleLabel(titleLabel: "Legendary")]
    
    var typeArr : [TitleLabel] = [TitleLabel(titleLabel: "Hero"),
                                  TitleLabel(titleLabel: "Minion"),
                                  TitleLabel(titleLabel: "Spell"),
                                  TitleLabel(titleLabel: "Enchantment"),
                                  TitleLabel(titleLabel: "Weapon"),
                                  TitleLabel(titleLabel: "Herp"),
                                  TitleLabel(titleLabel: "Power")]
    
    var factionArr : [TitleLabel] = [TitleLabel(titleLabel: "Horde"),
                                  TitleLabel(titleLabel: "Slliane"),
                                  TitleLabel(titleLabel: "Neutral")]
    
    fileprivate let classCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(CardCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        return cv
    }()
    
    fileprivate let raceCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(CardCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        return cv
    }()
    
    fileprivate let qualityCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(CardCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        return cv
    }()
    
    fileprivate let typeCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(CardCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        return cv
    }()
    
    fileprivate let factionCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(CardCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        return cv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        setDelegateAndDataSources()
    }
    
    func setDelegateAndDataSources() {
        classCollectionView.delegate = self
        classCollectionView.dataSource = self
        raceCollectionView.delegate = self
        raceCollectionView.dataSource = self
        qualityCollectionView.delegate = self
        qualityCollectionView.dataSource = self
        typeCollectionView.delegate = self
        typeCollectionView.dataSource = self
        factionCollectionView.delegate = self
        factionCollectionView.dataSource = self
    }
    
    func setupLayout() {
        view.addSubview(classCollectionView)
        view.addSubview(raceCollectionView)
        view.addSubview(qualityCollectionView)
        view.addSubview(typeCollectionView)
        view.addSubview(factionCollectionView)
        
        classCollectionView.backgroundColor = .white
        classCollectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        classCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        classCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        classCollectionView.heightAnchor.constraint(equalTo: classCollectionView.widthAnchor, multiplier: 0.5).isActive = true
        
        raceCollectionView.backgroundColor = .white
        raceCollectionView.topAnchor.constraint(equalTo: classCollectionView.bottomAnchor, constant: 56).isActive = true
        raceCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        raceCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        raceCollectionView.heightAnchor.constraint(equalTo: classCollectionView.heightAnchor, multiplier: 0.5).isActive = true
        
        qualityCollectionView.backgroundColor = .white
        qualityCollectionView.topAnchor.constraint(equalTo: raceCollectionView.bottomAnchor, constant: 56).isActive = true
        qualityCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        qualityCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        qualityCollectionView.heightAnchor.constraint(equalTo: classCollectionView.widthAnchor, multiplier: 0.5).isActive = true
        
        typeCollectionView.backgroundColor = .white
        typeCollectionView.topAnchor.constraint(equalTo: qualityCollectionView.bottomAnchor, constant: 56).isActive = true
        typeCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        typeCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        typeCollectionView.heightAnchor.constraint(equalTo: classCollectionView.widthAnchor, multiplier: 0.5).isActive = true
        
        factionCollectionView.backgroundColor = .white
        factionCollectionView.topAnchor.constraint(equalTo: typeCollectionView.bottomAnchor, constant: 56).isActive = true
        factionCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        factionCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        factionCollectionView.heightAnchor.constraint(equalTo: classCollectionView.widthAnchor, multiplier: 0.5).isActive = true
        
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 144, height: 104)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case classCollectionView:
            return classTypeArr.count
        case raceCollectionView:
            return raceArr.count
        case qualityCollectionView:
            return qualityArr.count
        case typeCollectionView:
            return typeArr.count
        case factionCollectionView:
            return factionArr.count
        default:
            return 1
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CardCollectionViewCell
        cell.cardLabel = self.classTypeArr[indexPath.row]
        return cell
    }
}

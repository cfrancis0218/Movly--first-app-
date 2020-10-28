//
//  HomePageViewController.swift
//  Movly
//
//  Created by Christian Elijah on 2020-08-17.
//  Copyright © 2020 Christian Elijah. All rights reserved.
//

import UIKit

struct customData {
    var title: String
    var image: UIImage
}

class HomePageViewController: UIViewController {
    
    let data = [
        customData(title: "IT", image: #imageLiteral(resourceName: "it")),
        customData(title: "Exorcist", image: #imageLiteral(resourceName: "main")),
        customData(title: "One Missed Call", image: #imageLiteral(resourceName: "calling")),
        customData(title: "Friday The 13th", image: #imageLiteral(resourceName: "jason")),
        customData(title: "Sinister", image: #imageLiteral(resourceName: "sinister")),
        customData(title: "Shining", image: #imageLiteral(resourceName: "thinning")),
        customData(title: "FilmSourcing", image: #imageLiteral(resourceName: "alien")),
        customData(title: "Alien", image: #imageLiteral(resourceName: "alien")),
        customData(title: "Insidious", image: #imageLiteral(resourceName: "1.jpeg")),
        customData(title: "Grudge", image: #imageLiteral(resourceName: "17")),
        customData(title: "insomnia", image: #imageLiteral(resourceName: "8")),
        customData(title: "The Circle", image: #imageLiteral(resourceName: "2")),
        customData(title: "Lincoln", image: #imageLiteral(resourceName: "19")),
        customData(title: "Tomb", image: #imageLiteral(resourceName: "16")),
        customData(title: "Scream", image: #imageLiteral(resourceName: "14")),
        customData(title: "Possession", image: #imageLiteral(resourceName: "11")),
        customData(title: "Poltergeist", image: #imageLiteral(resourceName: "10")),
        customData(title: "Alice", image: #imageLiteral(resourceName: "6")),
        customData(title: "Lights Out", image: #imageLiteral(resourceName: "5")),
        customData(title: "Fright Night", image: #imageLiteral(resourceName: "12")),
        customData(title: "Abandoned", image: #imageLiteral(resourceName: "18")),
        customData(title: "Sinister II", image: #imageLiteral(resourceName: "13")),
        customData(title: "Nightmare", image: #imageLiteral(resourceName: "4")),
        customData(title: "Lodge", image: #imageLiteral(resourceName: "15")),
        customData(title: "Don't Breathe", image: #imageLiteral(resourceName: "7")),
        customData(title: "Haunted", image: #imageLiteral(resourceName: "9")),
        customData(title: "Halloween", image: #imageLiteral(resourceName: "3")),
    ]
    
    fileprivate let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(CustomCell.self, forCellWithReuseIdentifier: "cell")
        return cv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    }
}

extension HomePageViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/2.5, height: collectionView.frame.width/2)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCell
        cell.data = self.data[indexPath.row]
        return cell
    }
    
    
}

class CustomCell: UICollectionViewCell {
    
    var data: customData? {
        didSet {
            guard let data = data else { return }
            bg.image = data.image
        }
    }
    
    
    fileprivate let bg: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 12
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(bg)
        bg.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        bg.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        bg.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        bg.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

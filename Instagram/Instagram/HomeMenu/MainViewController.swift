//
//  MainViewController.swift
//  Instagram
//
//  Created by Дмитрий Пермяков on 17.02.2023.
//

import UIKit

class MainViewController: UIViewController {
    private let idCell = "CellImageNews"
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
    }
    
    private func registerCell() {
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: "NewsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: idCell)
    }
}

extension MainViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // TODO: .... Request from the data base. Soon.
        return users.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: idCell, for: indexPath) as! NewsCollectionViewCell
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .vertical
        }
        cell.userNameLabel.text = users[indexPath.row].surname
        
        if let imageURLString = users[indexPath.row].avatar {
            guard let imageURL = URL(string: imageURLString) else {
                cell.avatarUser.image = UIImage(named: "avatar_default")
                return cell
            }
            DispatchQueue.main.async {
                
                let imageData = try! Data(contentsOf: imageURL)
                cell.avatarUser.image = UIImage(data: imageData)
            }
            
        } else {
            cell.avatarUser.image = UIImage(named: "avatar_default")
        }
        
        return cell
    }
    
}

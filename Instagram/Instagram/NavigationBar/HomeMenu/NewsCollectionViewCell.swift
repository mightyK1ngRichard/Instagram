//
//  NewsCollectionViewCell.swift
//  Instagram
//
//  Created by Дмитрий Пермяков on 17.02.2023.
//

import UIKit

class NewsCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var avatarUser: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        avatarUser.layer.borderWidth    = 0.5
        avatarUser.layer.masksToBounds  = false
//        avatarUser.layer.borderColor    = #colorLiteral(red: 0.989119947, green: 0, blue: 0.943936646, alpha: 0.7901367188)
        avatarUser.layer.cornerRadius   = avatarUser.frame.height / 2
        avatarUser.clipsToBounds        = true

    }
    
    func setupInfo(with userInfo: User) {
        userNameLabel.text = userInfo.surname
        
        if let urlString = userInfo.avatar {
            let url = URL(string: urlString)!
            downloadImage(from: url)
        }
        
    }
    
    func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
    
    func downloadImage(from url: URL) {
        getData(from: url) { data, response, error in
            guard let data = data, error == nil else { return }
            DispatchQueue.main.async() { [weak self] in
                self?.avatarUser.image = UIImage(data: data)
            }
        }
    }
    
}

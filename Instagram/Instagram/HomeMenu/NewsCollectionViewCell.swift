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
        avatarUser.layer.borderWidth    = 1
        avatarUser.layer.masksToBounds  = false
        avatarUser.layer.borderColor    = UIColor.black.cgColor
        avatarUser.layer.cornerRadius   = avatarUser.frame.height / 2
        avatarUser.clipsToBounds        = true
        
    }

}

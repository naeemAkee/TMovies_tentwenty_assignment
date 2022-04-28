//
//  GenresCollectionViewCell.swift
//  TMovie
//
//  Created by Naeem Akram on 28/04/2022.
//

import UIKit

class GenresCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var genresLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        mainView.layer.cornerRadius = 16
        mainView.layer.shadowOffset = CGSize(width: 0.1, height: 0.1)
        mainView.layer.shadowOpacity = 0.1
    }
    
    class var reuseIdentifier: String {
        return "GenresCollectionViewCell"
    }
    class var nibName: String {
        return "GenresCollectionViewCell"
    }
    
}

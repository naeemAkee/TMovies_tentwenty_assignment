//
//  HallCollectionViewCell.swift
//  TMovie
//
//  Created by Naeem Akram on 27/04/2022.
//

import UIKit

class HallCollectionViewCell: UICollectionViewCell{
    
    
    @IBOutlet weak var hallView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        hallView.layer.cornerRadius = 10
        hallView.layer.borderColor = UIColor._LightGray.cgColor
        hallView.layer.borderWidth = 2
    }
    
    class var reuseIdentifier: String {
        return "HallCollectionViewCell"
    }
    class var nibName: String {
        return "HallCollectionViewCell"
    }
    
}

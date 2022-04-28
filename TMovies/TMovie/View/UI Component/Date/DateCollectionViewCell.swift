//
//  DateCollectionViewCell.swift
//  TMovie
//
//  Created by Naeem Akram on 27/04/2022.
//

import UIKit

class DateCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        mainView.layer.cornerRadius = 10
        mainView.layer.shadowOffset = CGSize(width: 0.1, height: 0.1)
        mainView.layer.shadowOpacity = 0.1
    }
    
    class var reuseIdentifier: String {
        return "DateCollectionViewCell"
    }
    class var nibName: String {
        return "DateCollectionViewCell"
    }

}

//
//  SearchTableViewCell.swift
//  TMovie
//
//  Created by Naeem Akram on 27/04/2022.
//

import UIKit

class SearchTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieCategoryLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    class var reuseIdentifier: String {
        return "SearchTableViewCell"
    }
    class var nibName: String {
        return "SearchTableViewCell"
    }
    
    
    
}

//
//  MovieTableViewCell.swift
//  TMovie
//
//  Created by Naeem Akram on 27/04/2022.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
        
    class var reuseIdentifier: String {
        return "MovieTableViewCell"
    }
    class var nibName: String {
        return "MovieTableViewCell"
    }
    
    func moviesData(movie: MovieResultViewModel){
        movieName.text = movie.title
        movieImageView.sd_setImage(with: URL(string: "https://image.tmdb.org/t/p/w500/\(movie.poster_path ?? "")"))
    }
    
    
}

    
    

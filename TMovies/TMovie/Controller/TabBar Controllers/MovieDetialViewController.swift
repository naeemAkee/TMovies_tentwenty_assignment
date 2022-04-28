//
//  MovieDetialViewController.swift
//  TMovie
//
//  Created by Naeem Akram on 27/04/2022.
//

import UIKit
import AVKit

class MovieDetialViewController: UIViewController {

    @IBOutlet weak var watchTrailorOutletButton: UIButton!
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieDate: UILabel!
    @IBOutlet weak var genresCollectionView: UICollectionView!
    @IBOutlet weak var movieDescription: UILabel!
    
    let colors = [
            UIColor(red: 233/255, green: 203/255, blue: 198/255, alpha: 1),
            UIColor(red: 38/255, green: 188/255, blue: 192/255, alpha: 1),
            UIColor(red: 253/255, green: 221/255, blue: 164/255, alpha: 1),
            UIColor(red: 235/255, green: 154/255, blue: 171/255, alpha: 1),
            UIColor(red: 87/255, green: 141/255, blue: 155/255, alpha: 1)
        ]
    
    var id : Int?
    var movieData : MovieDetialViewModelAPICall = MovieDetialViewModelAPICall()
    var genresData : [Genres]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUI()
        
        let nibDeals = UINib(nibName: GenresCollectionViewCell.nibName, bundle: nil)
        genresCollectionView.register(nibDeals, forCellWithReuseIdentifier: GenresCollectionViewCell.reuseIdentifier)
    }
    
    
    func setUI(){
        
        movieData.getData(id: id ?? 0) { value, data in
            self.genresData = data.genres
            DispatchQueue.main.async {
                self.movieImage.sd_setImage(with: URL(string: "https://image.tmdb.org/t/p/w500/\(data.poster_path ?? "")"))
                self.movieDescription.text = data.overview
                
                let currentDate = data.release_date
                let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "yyyy-MM-dd"
                if let date: Date = dateFormatter.date(from: currentDate!){
                    let displayFormater = DateFormatter()
                    displayFormater.dateFormat = "EEEE dd, yyyy"
                    self.movieDate.text = "In Theaters " + (displayFormater.string(from: date))
                }
                
                
                self.genresCollectionView.reloadData()
            }
        }
        
        
        watchTrailorOutletButton.layer.cornerRadius = 10
        watchTrailorOutletButton.layer.borderWidth = 2
        watchTrailorOutletButton.layer.borderColor = UIColor._lightBlue.cgColor
        
    }
    
    func randomColorGenerator() -> Int{
        let randomColor = Int(arc4random_uniform(4))
        return randomColor
    }
    

    @IBAction func backButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func getTicketButton(_ sender: UIButton) {
        let vc : UIStoryboard = UIStoryboard(name: "BookingStoryboard", bundle:nil)
        let nextViewController = vc.instantiateViewController(withIdentifier: "GetTicketViewController") as! GetTicketViewController
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    
    @IBAction func watchTrailerButton(_ sender: UIButton) {
            let vc : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let nextViewController = vc.instantiateViewController(withIdentifier: "PlayViewController") as! PlayViewController
            nextViewController.id = id
            self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
}



extension MovieDetialViewController : UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return genresData?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = genresCollectionView.dequeueReusableCell(withReuseIdentifier: GenresCollectionViewCell.reuseIdentifier, for: indexPath) as! GenresCollectionViewCell
        cell.genresLabel.text = genresData?[indexPath.row].name
        cell.mainView.backgroundColor = colors[randomColorGenerator()]
        return cell
    }
    
    
}


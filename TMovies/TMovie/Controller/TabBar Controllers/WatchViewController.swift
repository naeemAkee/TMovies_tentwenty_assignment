//
//  SearchTVC.swift
//  TMovie
//
//  Created by Naeem Akram on 27/04/2022.
//

import UIKit
import SDWebImage


class WatchViewController: UITableViewController, UISearchBarDelegate {
 
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var searchButtonOutlet: UIButton!
    @IBOutlet weak var watchTitleLabel: UILabel!
    
    var filteredArray : [MovieResultViewModel]?
    var dataArray : [MovieResultViewModel]?
    var movieViewModelAPICell : MovieViewModelAPICall = MovieViewModelAPICall()
    var page = 1
    var total_item = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getData(pageNo: page)
        searchBar.delegate = self
        let nibDeals = UINib(nibName: MovieTableViewCell.nibName, bundle: nil)
        tableView.register(nibDeals, forCellReuseIdentifier: MovieTableViewCell.reuseIdentifier)
        
    }
    
    
    
    
    // MARK: - Functions
    func getData(pageNo: Int){
        movieViewModelAPICell.getData(pageNo: page) { totalValue, dataArray in
            self.total_item = totalValue
            if self.dataArray != nil{
                self.dataArray! += dataArray
                self.filteredArray = self.dataArray
            }else{
                self.dataArray = dataArray
                self.filteredArray = self.dataArray
            }
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    
    
    
    
    //MARK: - SearchBar
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredArray = []
        if searchText == "" {
            filteredArray = dataArray
            UIView.animate(withDuration: 0.3) {
                self.searchBar.isHidden = true
                self.watchTitleLabel.isHidden = false
                self.searchButtonOutlet.isHidden = false
            }
        }
        if let movie = dataArray{
            for value in movie{
                if value.title!.lowercased().contains(searchText.lowercased()){
                    filteredArray?.append(value)
                }
            }
        }
        self.tableView.reloadData()
    }
    
    @IBAction func searchButtonPressed(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3) {
            self.searchBar.isHidden = false
            self.watchTitleLabel.isHidden = true
            self.searchButtonOutlet.isHidden = true
        }
    }
    
    
}



extension WatchViewController{
    
    // MARK: - TableView
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredArray?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MovieTableViewCell.reuseIdentifier) as! MovieTableViewCell
        if let data = filteredArray?[indexPath.row] {
            cell.moviesData(movie: data)
        }
        
        if let data = filteredArray{
            if indexPath.row == data.count - 1 {
                if total_item > data.count {
                    page += page
                    self.getData(pageNo: page)
                }
            }
        }
        
        return cell
    }


    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = vc.instantiateViewController(withIdentifier: "MovieDetialViewController") as! MovieDetialViewController
        nextViewController.id = filteredArray?[indexPath.row].id
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
}

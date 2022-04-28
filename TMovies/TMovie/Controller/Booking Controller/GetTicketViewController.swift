//
//  GetTicketViewController.swift
//  TMovie
//
//  Created by Naeem Akram on 27/04/2022.
//

import UIKit

class GetTicketViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    
    @IBOutlet weak var dateCollectionView: UICollectionView!
    @IBOutlet weak var hallCollectionView: UICollectionView!
    
    let dateArray = ["3 Mar", "4 Mar", "5 Mar", "6 Mar", "7 Mar", "8 Mar", "9 Mar", "10 Mar"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let nibDeals = UINib(nibName: DateCollectionViewCell.nibName, bundle: nil)
        dateCollectionView.register(nibDeals, forCellWithReuseIdentifier: DateCollectionViewCell.reuseIdentifier)
        
        let nibDeals1 = UINib(nibName: HallCollectionViewCell.nibName, bundle: nil)
        hallCollectionView.register(nibDeals1, forCellWithReuseIdentifier: HallCollectionViewCell.reuseIdentifier)
        
        
        
    }
    
    
    
    
    
    @IBAction func backButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func selectSeatButton(_ sender: UIButton) {
        let vc : UIStoryboard = UIStoryboard(name: "BookingStoryboard", bundle:nil)
        let nextViewController = vc.instantiateViewController(withIdentifier: "PayViewController") as! PayViewController
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (collectionView == dateCollectionView){
            return dateArray.count
        }else{
            return dateArray.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if (collectionView == dateCollectionView){
            let cell = dateCollectionView.dequeueReusableCell(withReuseIdentifier: DateCollectionViewCell.reuseIdentifier, for: indexPath) as! DateCollectionViewCell
            cell.dateLabel.text = dateArray[indexPath.row]
            return cell
        }else{
            let cell = hallCollectionView.dequeueReusableCell(withReuseIdentifier: HallCollectionViewCell.reuseIdentifier, for: indexPath) as! HallCollectionViewCell
            return cell
        }
    }
    
    
    

}

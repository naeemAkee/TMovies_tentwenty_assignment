//
//  PayViewController.swift
//  TMovie
//
//  Created by Naeem Akram on 27/04/2022.
//

import UIKit

class PayViewController: UIViewController {
    
    @IBOutlet weak var seatNumberView: UIView!
    @IBOutlet weak var priceLabelView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        seatNumberView.layer.cornerRadius = 10
        priceLabelView.layer.cornerRadius = 10
    }
    

    
    @IBAction func backButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    

}

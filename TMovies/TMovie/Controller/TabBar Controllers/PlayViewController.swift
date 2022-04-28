//
//  PlayViewController.swift
//  TMovie
//
//  Created by Naeem Akram on 28/04/2022.
//

import UIKit
import youtube_ios_player_helper

class PlayViewController: UIViewController {

    @IBOutlet weak var videoPlayVideo: YTPlayerView!
    var id: Int?
    var key = ""
    
    var playData : PlayViewModel = PlayViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        playData.getData(id: id ?? 0) { value, data in
            self.key = data.results?[0].key ?? " "
        }
        let playvarsDic = ["controls": 1, "playsinline": 1, "autohide": 1, "showinfo": 1, "autoplay": 1, "modestbranding": 1]
        DispatchQueue.main.async {
            self.videoPlayVideo.load(withVideoId: self.key, playerVars: playvarsDic)
            
        }
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    

    @IBAction func bacButtonPressed(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    

}

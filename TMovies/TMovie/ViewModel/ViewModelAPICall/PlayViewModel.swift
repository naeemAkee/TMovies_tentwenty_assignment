//
//  PlayVideModel.swift
//  TMovie
//
//  Created by Naeem Akram on 28/04/2022.
//

import Foundation

class PlayViewModel{
    
    func getData(id : Int, completion : @escaping (Int,Play) -> ()) {
        APIClientHandler.shareInstance.playViewDetail(id: id) { movies, error in
            if (error==nil){
                completion(5, movies!)
            }
        }
    }

    
}


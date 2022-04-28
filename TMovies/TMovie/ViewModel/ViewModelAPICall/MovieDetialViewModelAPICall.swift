//
//  MovieDetialViewModelAPICall.swift
//  TMovie
//
//  Created by Naeem Akram on 28/04/2022.
//

import Foundation

class MovieDetialViewModelAPICall{
    
    func getData(id : Int, completion : @escaping (Int,MovieDetailViewModel) -> ()) {
        APIClientHandler.shareInstance.getMovieDetail(id: id) { movies, error in
            if (error==nil){
                completion(5, MovieDetailViewModel(movieDetial: movies!))
            }
        }
    }
}

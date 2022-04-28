//
//  MovieViewModelAPICall.swift
//  TMovie
//
//  Created by Naeem Akram on 28/04/2022.
//

import Foundation

class MovieViewModelAPICall{
    
    
    func getData(pageNo: Int, completion : @escaping (Int, [MovieResultViewModel]) -> ()) {
        APIClientHandler.shareInstance.getUpComingMovieListFunc(pageNo: pageNo) { movies, error in
            if (error==nil){
                completion(movies?.total_results ?? 0,  movies?.results.map({ return MovieResultViewModel(movieResult: $0) }) ?? [])
            }
        }
    }

    
}

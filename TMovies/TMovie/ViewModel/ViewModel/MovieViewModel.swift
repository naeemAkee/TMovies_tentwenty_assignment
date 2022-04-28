//
//  MovieViewModel.swift
//  TMovie
//
//  Created by Naeem Akram on 28/04/2022.
//

import Foundation


class MovieViewModel : NSObject {

    var page : Int?
    var results : [MovieResults]?
    var total_pages : Int?
    var total_results : Int?

    init(movie: Movie){
        self.page = movie.page
        self.results = movie.results
        self.total_pages = movie.total_pages
        self.total_results = movie.total_results
    }

}



class MovieResultViewModel : NSObject {
    
    var adult : Bool?
    var backdrop_path : String?
    var genre_ids : [Int]?
    var id : Int?
    var original_language : String?
    var original_title : String?
    var overview : String?
    var popularity : Double?
    var poster_path : String?
    var release_date : String?
    var title : String?
    var video : Bool?
    var vote_average : Double?
    var vote_count : Int?

    init(movieResult: MovieResults){
        
        self.adult = movieResult.adult
        self.backdrop_path = movieResult.backdrop_path
        self.genre_ids = movieResult.genre_ids
        self.id = movieResult.id
        self.original_language = movieResult.original_language
        self.original_title = movieResult.original_title
        self.overview = movieResult.overview
        self.popularity = movieResult.popularity
        self.poster_path = movieResult.poster_path
        self.release_date = movieResult.release_date
        self.title = movieResult.title
        self.video = movieResult.video
        self.vote_average = movieResult.vote_average
        self.vote_count = movieResult.vote_count
    }

}




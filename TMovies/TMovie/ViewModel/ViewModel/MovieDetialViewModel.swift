//
//  MovieDetialViewModel.swift
//  TMovie
//
//  Created by Naeem Akram on 28/04/2022.
//

import Foundation

class MovieDetailViewModel : NSObject {
//    let adult : Bool?
//    let backdrop_path : String?
//    let belongs_to_collection : String?
//    let budget : Int?
    let genres : [Genres]?
    let homepage : String?
    let id : Int?
//    let imdb_id : String?
//    let original_title : String?
    let overview : String?
//    let popularity : Double?
    let poster_path : String?
    let release_date : String?
//    let revenue : Int?
//    let runtime : Int?
    let status : String?
//    let tagline : String?
//    let title : String?
//    let video : Bool?
    
    init(movieDetial: MovieDetail){
        
//        self.adult = movieDetial.adult
//        self.backdrop_path = movieDetial.backdrop_path
//        self.belongs_to_collection = movieDetial.belongs_to_collection
//        self.budget = movieDetial.budget
        self.genres = movieDetial.genres
        self.homepage = movieDetial.homepage
        self.id = movieDetial.id
//        self.imdb_id = movieDetial.imdb_id
//        self.original_title = movieDetial.original_title
        self.overview = movieDetial.overview
//        self.popularity = movieDetial.popularity
        self.poster_path = movieDetial.poster_path
        self.release_date = movieDetial.release_date
//        self.revenue = movieDetial.revenue
//        self.runtime = movieDetial.runtime
        self.status = movieDetial.status
//        self.tagline = movieDetial.tagline
//        self.title = movieDetial.title
//        self.video = movieDetial.video
        
    }


}



class GenresViewModel : NSObject {
    let id : Int?
    let name : String?
    
    init(genres: Genres){
        self.id = genres.id
        self.name = genres.name
    }
}





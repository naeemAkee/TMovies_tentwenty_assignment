//
//  Movie.swift
//  TMovie
//
//  Created by Naeem Akram on 27/04/2022.
//

import Foundation

struct Movie : Decodable {
    
    var page : Int?
    var results : [MovieResults]
    var total_pages : Int?
    var total_results : Int?
    
}



struct MovieResults : Decodable {
    
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
    

}

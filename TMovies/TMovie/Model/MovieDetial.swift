//
//  MovieDetial.swift
//  TMovie
//
//  Created by Naeem Akram on 28/04/2022.
//

import Foundation

struct MovieDetail : Decodable {
    
    let genres : [Genres]?
    let homepage : String?
    let id : Int?
    let overview : String?
    let poster_path : String?
    let release_date : String?
    let status : String?
}



struct Genres : Decodable {
    let id : Int?
    let name : String?
}


//
//  Play.swift
//  TMovie
//
//  Created by Naeem Akram on 28/04/2022.
//

import Foundation

struct Play: Decodable{
    
    let id : Int?
    let results : [PlayResult]?
    
}


struct PlayResult: Decodable{
    
    let iso_639_1 : String?
    let iso_3166_1 : String?
    let name : String?
    let key : String?
    let site : String?
    let size : Int?
    let type : String?
    let official : Bool?
    let published_at : String?
    let id : String?
}

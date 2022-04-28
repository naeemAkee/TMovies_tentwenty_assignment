//
//  APILinks.swift
//  TMovie
//
//  Created by Naeem Akram on 27/04/2022.
//

import Foundation

struct APILinks {
    
    static let baseURL = "https://api.themoviedb.org/3/movie/"
    static let imageURL = "https://image.tmdb.org/t/p/w500/"
    static let api_key = "?api_key=c8c4cc740143da1095b482acb4c8b509"
    
    static let upcomingMovieURL = "\(baseURL)upcoming\(api_key)"
    
    
    
    
}

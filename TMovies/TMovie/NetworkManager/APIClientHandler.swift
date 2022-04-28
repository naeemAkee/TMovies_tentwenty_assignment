//
//  APIHandler.swift
//  TMovie
//
//  Created by Naeem Akram on 27/04/2022.
//

import Foundation
import UIKit


class APIClientHandler{
    
    static let shareInstance = APIClientHandler()
    
    func getUpComingMovieListFunc(pageNo: Int, completion: @escaping(Movie?, _: Error?) ->()){
        
        let urlString = "\(APILinks.upcomingMovieURL)&page=\(pageNo)"
        guard let url = URL(string: urlString) else{ return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Loading data error : \(error.localizedDescription)")
            }else{
                guard let data = data else {return}
                
                do{
                    let result = try JSONDecoder().decode(Movie.self, from: data)
                    completion(result, nil)
                }catch let jsonError{
                    print("JSON error : \(jsonError.localizedDescription)")
                }
            }
        }.resume()
    }
    
    
    
    
    func getMovieDetail(id: Int, completion: @escaping(MovieDetail?, _: Error?) ->()){
        
        let urlString = APILinks.baseURL + "\(id)" + APILinks.api_key
        guard let url = URL(string: urlString) else{ return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Loading data error : \(error.localizedDescription)")
            }else{
                guard let data = data else {return}
                do{
                    let result = try JSONDecoder().decode(MovieDetail.self, from: data)
                    completion(result, nil)
                }catch let jsonError{
                    print("JSON error : \(jsonError.localizedDescription)")
                }
            }
        }.resume()
    }
    
    
    
    
    func playViewDetail(id: Int, completion: @escaping(Play?, _: Error?) ->()){
        
        let urlString = APILinks.baseURL + "\(id)/videos" + APILinks.api_key
        guard let url = URL(string: urlString) else{ return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Loading data error : \(error.localizedDescription)")
            }else{
                guard let data = data else {return}
                do{
                    let result = try JSONDecoder().decode(Play.self, from: data)
                    completion(result, nil)
                }catch let jsonError{
                    print("JSON error : \(jsonError.localizedDescription)")
                }
            }
        }.resume()
    }
    
}

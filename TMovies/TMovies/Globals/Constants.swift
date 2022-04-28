//
//  Constants.swift
//  TMovies
//
//  Created by Naeem Akram on 26/04/2022.
//

import Foundation

class Constants{
    
    class var baseURL: URL{
        return URL(string: "https://api.themoviedb.org/3/movie/")!
    }
    
    class var showLogs: Bool{
        return true
    }
    
    enum APIStatusCode: String{
        case succes                         = "00"
        case forceUpdate                    = "8"
        case optionalUpdate                 = "9"
        case serverDown                     = "10"
        case sessionExpired                 = "7"
        case wrongAttemptToChangePassword   = "104"
    }
    
}

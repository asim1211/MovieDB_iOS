//
//  NetworkService.swift
//  MovieDB_iOS
//
//  Created by Asim Hakami on 02/07/1442 AH.
//  Copyright © 1442 Asim Hakami. All rights reserved.
//

import Foundation

// MARK: services
enum services :String{
    case orgs = "users/hadley/orgs"
    case users = "users/"
}

// MARK: baseURL
var baseURL: String {
    switch NetworkManager.networkEnviroment {
        case .dev: return "https://api.github.com/"
        case .production: return "https://api.github.com/"
        case .stage: return "https://api.github.com/"
    }
}

class NetworkService : NSObject{
    
}

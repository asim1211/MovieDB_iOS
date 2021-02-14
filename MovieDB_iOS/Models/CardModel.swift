//
//  CardModel.swift
//  MovieDB_iOS
//
//  Created by Asim Hakami on 02/07/1442 AH.
//  Copyright © 1442 Asim Hakami. All rights reserved.
//

import Foundation

// MARK: Model CardModel

struct CardModel : Identifiable, Codable {
    
    var id: Int
    var login: String
    var avatar_url: String
    var repos_url: String
}

//
//  Movie.swift
//  MovieDB_iOS
//
//  Created by Asim Hakami on 05/07/1442 AH.
//  Copyright © 1442 Asim Hakami. All rights reserved.
//

import Foundation

struct Movie: Decodable, Identifiable{
    var popularity: Float
    var vote_count: Int
    var id: Int
    var vote_average: Float
    var title: String
    var poster_path: String
    var original_language: String
    var original_title: String
    var adult: Bool
    var overview: String
    var release_date: String
}

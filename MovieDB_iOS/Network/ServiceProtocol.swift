//
//  ServiceProtocol.swift
//  MovieDB_iOS
//
//  Created by Asim Hakami on 05/07/1442 AH.
//  Copyright © 1442 Asim Hakami. All rights reserved.
//

import Foundation

protocol ServiceProtocol {
    func fetchPopularMovies(completion: @escaping ([Movie]?) -> Void)
}

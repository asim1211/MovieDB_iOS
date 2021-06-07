//
//  MovieViewModel.swift
//  MovieDB_iOS
//
//  Created by Asim Hakami on 05/07/1442 AH.
//  Copyright © 1442 Asim Hakami. All rights reserved.
//

import Foundation
class MovieViewModel: ObservableObject {
    @Published var movies = MovieList(results: [])
    @Published var loading = false

    let service: ServiceProtocol
    init(service: ServiceProtocol = APIService()) {
        self.service = service
    }
    
    func loadData() {
        self.loading = true
        service.fetchPopularMovies { movies in
            self.loading = false
            guard let movies = movies else {
                return
            }
            self.movies.results = movies
        }
    }
}

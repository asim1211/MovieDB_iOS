//
//  NetworkManager.swift
//  MovieDB_iOS
//
//  Created by Asim Hakami on 05/07/1442 AH.
//  Copyright © 1442 Asim Hakami. All rights reserved.
//

import Alamofire
import Foundation
import Combine

class NetworkManager: ObservableObject {
    @Published var movies = MovieList(results: [])
    @Published var loading = false
    private let api_key = ""
    private let api_url_base = "https://api.themoviedb.org/3/discover/movie?sort_by=popularity.desc&api_key="
    init() {
        loading = true
        loadDataByAlamofire()
    }
    
    private func loadDataNormal() {
        guard let url = URL(string: "\(api_url_base)\(api_key)") else { return }
        URLSession.shared.dataTask(with: url){ (data, _, _) in
            guard let data = data else { return }
            let movies = try! JSONDecoder().decode(MovieList.self, from: data)
            DispatchQueue.main.async {
                self.movies = movies
                self.loading = false
            }
        }.resume()
    }
    
    private func loadDataByAlamofire() {
        AF.request("\(api_url_base)\(api_key)")
            .responseJSON{ response in
                guard let data = response.data else { return }
                let movies = try! JSONDecoder().decode(MovieList.self, from: data)
                DispatchQueue.main.async {
                    self.movies = movies
                    self.loading = false
                }
        }
    }
}


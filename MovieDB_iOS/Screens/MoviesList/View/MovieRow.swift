//
//  MovieRow.swift
//  MovieDB_iOS
//
//  Created by Asim Hakami on 05/07/1442 AH.
//  Copyright © 1442 Asim Hakami. All rights reserved.
//

import SDWebImageSwiftUI
import SwiftUI

struct MovieRow : View {
    var movie: Movie
    
    var body: some View {
        HStack {
            AnimatedImage(url: URL(string:  "\(BASE_IMAGE_URL)\(movie.poster_path)")!)
                .resizable()
                .frame(width: 90, height: 120, alignment: .leading)
                
            
            
            VStack {
                Spacer()
                HStack {
                    let extractedExpr: Text = Text(movie.title)
                    extractedExpr
                        .foregroundColor(.blue)
                        .lineLimit(nil)
                    Spacer()
                }
                HStack {
                    Text(movie.release_date).foregroundColor(.gray)
                    Spacer()
                    Text("Rating: \(movie.vote_average.format())")
                }
                HStack {
                    Text("Vote count: \(movie.vote_count)")
                        .foregroundColor(.gray)
                        .lineLimit(nil)
                    Spacer()
                }
                HStack {
                    Text("Popularity: \(movie.popularity)")
                        .foregroundColor(.gray)
                        .lineLimit(nil)
                    Spacer()
                }
                Spacer()
            }
        }.frame(height: 130)
    }
}

extension Float {
    func format() -> String {
        return String(format: "%.2f",self)
    }
}


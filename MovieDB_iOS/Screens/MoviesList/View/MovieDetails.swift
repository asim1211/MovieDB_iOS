//
//  MovieDetails.swift
//  MovieDB_iOS
//
//  Created by Asim Hakami on 05/07/1442 AH.
//  Copyright © 1442 Asim Hakami. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct MovieDetails : View {
    var movie: Movie
    var body: some View {
        VStack {
            AnimatedImage(url: URL(string:  "\(BASE_IMAGE_URL)\(movie.poster_path)")!)
                .resizable()
                .frame(width: UIScreen.main.bounds.height/8*3, height: UIScreen.main.bounds.height/2, alignment: .top)
            
            HStack {
                Text("Description").foregroundColor(.gray)
                Spacer()
            }
            Text(movie.overview).lineLimit(nil)
            Spacer()
        }.navigationBarTitle(Text(movie.title), displayMode: .inline)
            .padding()
    }
}



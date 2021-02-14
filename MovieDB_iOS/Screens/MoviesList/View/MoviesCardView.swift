//
//  ContentView.swift
//  MovieDB_iOS
//
//  Created by Asim Hakami on 01/07/1442 AH.
//  Copyright © 1442 Asim Hakami. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

// MARK: View CardView
struct CardView: View {
    
    var name: String
    var url: String
    

    var body: some View {
        
        HStack {
            AnimatedImage(url: URL(string: url)!)
                      .resizable()
                        .placeholder(UIImage(named: "iTunesArtwork"))
                      .frame(width: 60, height: 60)
                      .clipShape(Circle())
                      .shadow(radius: 20)
                      
            VStack(alignment: .leading) {
                Text(name).fontWeight(.heavy)
            }
        }
       
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(name: "Meow", url: "https://d3eo0lv2i3qhdd.cloudfront.net/h/restaurants/logos/000/001/268/7112153cb22f1093f06c39dc28e3375f-thumb.png")
    }
}


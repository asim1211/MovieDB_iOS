//
//  ContentView.swift
//  MovieDB_iOS
//
//  Created by Asim Hakami on 01/07/1442 AH.
//  Copyright © 1442 Asim Hakami. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI


struct CardViewOverlay: View {
    
    var name: String
    var body: some View {
        
        ZStack{
            Text(name).font(.callout)
                .padding(6)
                .foregroundColor(.white)
        }.background(Color.black)
        .opacity(0.8)
        .cornerRadius(10.0)
        .padding(6)
       
    }
}

// MARK: View CardView
struct CardView: View {
    
    var name: String
    var url: String
    

    var body: some View {
        
        HStack {
            AnimatedImage(url: URL(string: url)!)
                      .resizable()
                      .placeholder(UIImage(named: "iTunesArtwork"))
                      .scaledToFill()
                .overlay(CardViewOverlay(name: "Meow"), alignment: .bottom)
                        
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


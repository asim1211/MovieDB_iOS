//
//  MoviesListViewModel.swift
//  MovieDB_iOS
//
//  Created by Asim Hakami on 02/07/1442 AH.
//  Copyright © 1442 Asim Hakami. All rights reserved.
//

import SwiftUI
import Alamofire
import SwiftyJSON
import SDWebImageSwiftUI

// MARK: ViewModel ContentView
struct ContentView: View {
    @ObservedObject var obs = Observer()
    
    var body: some View {
        NavigationView {
            List(obs.datas) { i in
                CardView(name: i.login, url: i.avatar_url)
                   }
                   .navigationBarTitle("Movies")
               }
    }
    
}

// MARK: View ContentView_Previews
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// MARK: Observer
class Observer: ObservableObject {
    @Published var datas = [CardModel]()
    
    init() {
        
        if !Connectivity.isConnectedToInternet() {
               print("internet is not available.")
               // do some tasks..
            return;
        }
        
        // MARK: Network Call
        //-----------------GET Call----------------------
        //pass model to the network call - get call
        NetworkManager(data: [:], url: nil, service: .orgs, method: .get, isJSONRequest: false).executeQuery(){

                  (result: Result<[CardModel],Error>) in
                  switch result{
                  case .success(let response):
                      print(response)
                      self.datas = response;
                  case .failure(let error):
                      print(error)
                    
            }
        }
    }
}

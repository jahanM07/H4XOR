//
//  ContentView.swift
//  H4XOR
//
//  Created by Jahan Miah on 15/09/2020.
//  Copyright © 2020 Jahan Miah. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            
            List (networkManager.posts){ post in
                NavigationLink(destination: DetailedView (url: post.url)) {
                    HStack{
                        Text(String(post.points))
                        Text(post.title)
                    }
                    
                }
            }
                
            .navigationBarTitle("H4XOR News")
            
        }
            
        .onAppear{
            self.networkManager.fetchData()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//let posts = [
//    post(id: "1", title: "Hello"),
//    post(id: "2", title: "Bonjour"),
//    post(id: "3", title: "Hola")
//]

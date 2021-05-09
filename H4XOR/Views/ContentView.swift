//
//  ContentView.swift
//  H4XOR
//
//  Created by DEVEEN RATNAYAKE on 2021-05-09.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        
        NavigationView{
            List(networkManager.post ){ post in
                NavigationLink(
                    destination: DetailView(url: post.url),
                    label: {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    })
                
            }
            .navigationBarTitle("H4XOR NEWS")
        }
        .onAppear(perform: {
            networkManager.fetchData()
        })
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

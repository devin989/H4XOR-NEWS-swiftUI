//
//  NetworkManager.swift
//  H4XOR
//
//  Created by DEVEEN RATNAYAKE on 2021-05-09.
//

import Foundation

class NetworkManager:ObservableObject {
    
    @Published   var post = [Post]()
    
    
    
    func fetchData(){
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, eroor in
                if (eroor == nil){
                    let decorder = JSONDecoder() 
                    if let safeData = data{
                        do{
                            let results = try decorder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.post = results.hits 
                            }
                            
                        }catch{
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
    
    
}

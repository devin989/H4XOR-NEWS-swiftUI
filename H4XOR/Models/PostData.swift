//
//  PostData.swift
//  H4XOR
//
//  Created by DEVEEN RATNAYAKE on 2021-05-09.
//

import Foundation

struct Results:Decodable {
    let hits: [Post]
}

struct Post:Decodable ,Identifiable {
    var id:String{
        return objectID
    }
    
    let objectID:String
    let points:Int
    let title:String
    let url:String? 
     
}

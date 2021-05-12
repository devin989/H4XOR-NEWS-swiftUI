//
//  WebView.swift
//  H4XOR
//
//  Created by DEVEEN RATNAYAKE on 2021-05-12.
//

import Foundation


import SwiftUI
import WebKit


struct WebView : UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView  {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
                
            }
        }
        
    }
    
}

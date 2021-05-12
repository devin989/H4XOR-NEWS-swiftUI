//
//  DetailView.swift
//  H4XOR
//
//  Created by DEVEEN RATNAYAKE on 2021-05-09.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url:String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://news.ycombinator.com")
    }
}



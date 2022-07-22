//
//  ContentView.swift
//  URLImageDownload-SwiftUI
//
//  Created by Mitya Kim on 7/21/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        URLImage(url: "https://fyrafix.files.wordpress.com/2011/08/url-8.jpg")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  URLImage.swift
//  URLImageDownload-SwiftUI
//
//  Created by Mitya Kim on 7/21/22.
//

import SwiftUI

struct URLImage: View {
    
    let url: String
    let placeholder: String
    
    @ObservedObject var imageLoader = ImageLoader()
    
    init(url: String, placeholder: String = "placeholder") {
        self.url = url
        self.placeholder = placeholder
        self.imageLoader.downloadImage(url: url)
    }
    
    var body: some View {
        
        if let data = self.imageLoader.downloadData {
            return Image(uiImage: UIImage(data: data)!).resizable()
        } else {
            return Image("placeholder").resizable()
        }
    }
}

struct URLImage_Previews: PreviewProvider {
    
    
    
    static var previews: some View {
        URLImage(url: "https://fyrafix.files.wordpress.com/2011/08/url-8.jpg")
    }
}

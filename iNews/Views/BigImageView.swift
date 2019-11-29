//
//  BigImageView.swift
//  iNews
//
//  Created by Gabriela Antezana on 11/26/19.
//  Copyright © 2019 Sofia Castillo. All rights reserved.
//

import SwiftUI

struct BigImageView: View {
    @ObservedObject var imageLoader: ImageLoader
    
    var body: some View {
        
        HStack{
            Image(uiImage: imageLoader.dataIsValid ? imageFromData(imageLoader.data!) : UIImage())
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(minWidth: 0, maxWidth: 100, minHeight: 0, maxHeight: 100)
        }
    }
    
    init(withURL url:String) {
        imageLoader = ImageLoader(urlString:url)
    }
    
    
    func imageFromData(_ data:Data) -> UIImage {
        UIImage(data: data) ?? UIImage()
    }
}



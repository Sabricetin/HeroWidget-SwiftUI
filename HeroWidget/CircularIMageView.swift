//
//  CircularIMageView.swift
//  HeroWidget
//
//  Created by Sabri Çetin on 30.08.2024.
//

import SwiftUI

struct CircularIMageView: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.purple, lineWidth: 10))
            .shadow(radius: 10)
    }
}

struct CircularImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularIMageView(image: Image("vision"))
    }
}

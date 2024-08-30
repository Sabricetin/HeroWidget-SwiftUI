//
//  HeroView.swift
//  HeroWidget
//
//  Created by Sabri Çetin on 30.08.2024.
//

import SwiftUI

struct HeroView: View {
    
    let hero : Superhero
    
    var body: some View {
        
        HStack{
            CircularIMageView(image:
                                Image(hero.image))
            .frame(width: 100 , height: 100 , alignment: .center).padding()
            
            Spacer()
            VStack{
                Text(hero.name)
                    .font(.system(size: 35))
                    .font(
                    .callout)
                    .fontWeight(.bold)
                    .foregroundColor(.purple)
                
                Text(hero.realName)
                    .fontWeight(.bold)
                
                    
            }.padding()
            Spacer()
        }.frame(width: UIScreen.main.bounds.width , alignment: .center)
    }
}

#Preview {
    HeroView(hero: batman)
}

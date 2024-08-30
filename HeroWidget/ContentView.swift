//
//  ContentView.swift
//  HeroWidget
//
//  Created by Sabri Çetin on 30.08.2024.
//

import SwiftUI

let superHeroArray = [ batman , hulk , ıronman , spiderman , captainamerica , hawkeye , wasp , vison]
struct ContentView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                
                ForEach (superHeroArray) {hero in
                    HeroView(hero: hero)
                }
                
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

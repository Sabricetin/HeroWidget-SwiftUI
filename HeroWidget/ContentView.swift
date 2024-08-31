//
//  ContentView.swift
//  HeroWidget
//
//  Created by Sabri Çetin on 30.08.2024.
//

import SwiftUI

let superHeroArray = [ batman , hulk , ıronman , spiderman , captainamerica , hawkeye , wasp , vison]
struct ContentView: View {
    
    @AppStorage ("hero", store: UserDefaults(suiteName: "group.Sabri.HeroWidget"))
                 
    var heroData : Data = Data()
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                
                ForEach (superHeroArray) {hero in
                    HeroView(hero: hero).onTapGesture {
                        saveToDefaults(hero: hero)
                    }
                }
                
                
            }
            .padding()
        }
    }
    
    func saveToDefaults (hero : Superhero) {
        //print(hero.name)
        
        if let heroData = try? JSONEncoder().encode(hero) {
            self.heroData = heroData
            print(hero.name)
        }
    }
}

#Preview {
    ContentView()
}

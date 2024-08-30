//
//  Superhero.swift
//  HeroWidget
//
//  Created by Sabri Çetin on 30.08.2024.
//

import Foundation

struct Superhero : Identifiable , Codable {
    
    var id: String { image }
    
    let image : String
    let name : String
    let realName : String
    
}


let  batman = Superhero(image: "batman", name: "Batman", realName: "Christian Bale")
let  hulk = Superhero(image: "hulk1", name: "Hulk", realName: "Mark Ruffalo")
let  ıronman = Superhero(image: "ıronman", name: "IronMan", realName: "Robert Downey")
let  spiderman = Superhero(image: "spiderman", name: "Spiderman", realName: "Tom Holland")
let  captainamerica = Superhero(image: "captainamerica", name: "CaptainAmerica", realName: "Chris Evans")
let  hawkeye = Superhero(image: "hawkeye", name: "Hawkeye", realName: "Jeremy Rennar")
let  wasp = Superhero(image: "wasp", name: "Wasp", realName: "Paul Rudd")
let  vison = Superhero(image: "vision", name: "Vison", realName: "Paul Bettany")




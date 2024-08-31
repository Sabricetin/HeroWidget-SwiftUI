//
//  WidgetHero.swift
//  WidgetHero
//
//  Created by Sabri Çetin on 31.08.2024.
//

import WidgetKit
import SwiftUI

struct Provider: AppIntentTimelineProvider {
    
    
    
    @AppStorage ("hero", store: UserDefaults(suiteName: "group.Sabri.HeroWidget"))
    var heroData : Data = Data()
    
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: ConfigurationAppIntent(), hero: Superhero(image: "batman", name: "Batman", realName: "Bruce Wayne"))
    }
    
    func snapshot(for configuration: ConfigurationAppIntent, in context: Context) async -> SimpleEntry {
        
        if let hero = try? JSONDecoder().decode(Superhero.self, from: heroData) {
            
            let entry = SimpleEntry(date: Date(), configuration: configuration, hero: hero)
            
            return entry
        }
        else {
                // Fallback durumunda bir SimpleEntry döndürün
                return SimpleEntry(date: Date(), configuration: configuration, hero: Superhero(image: "default_image", name: "Default Name", realName: "Default Real Name"))
            }
    }
    func timeline(for configuration: ConfigurationAppIntent, in context: Context) async -> Timeline<SimpleEntry> {
        
        if let hero = try? JSONDecoder().decode(Superhero.self, from: heroData) {
            
            let entry = SimpleEntry(date: Date(), configuration: configuration, hero: hero)
            let timeline = Timeline(entries: [entry], policy: .never)
            
            return timeline
        } else {
            // Fallback durumunda bir Timeline döndürün
            let fallbackEntry = SimpleEntry(date: Date(), configuration: configuration, hero: Superhero(image: "default_image", name: "Default Name", realName: "Default Real Name"))
            let fallbackTimeline = Timeline(entries: [fallbackEntry], policy: .never)
            
            return fallbackTimeline
        }
    }
    struct SimpleEntry: TimelineEntry {
        let date: Date
        let configuration: ConfigurationAppIntent
        var hero : Superhero
    }
    
    struct WidgetHeroEntryView : View {
        var entry: Provider.Entry
        
        var body: some View {
            
            CircularIMageView(image: Image(entry.hero.image))
        }
    }
    struct WidgetHero: Widget {
        let kind: String = "WidgetHero"
        var body: some WidgetConfiguration {
            
            AppIntentConfiguration(kind: kind, intent: ConfigurationAppIntent.self, provider: Provider()) { entry in
                WidgetHeroEntryView(entry: entry)
                    .containerBackground(.fill.tertiary, for: .widget)
            } .configurationDisplayName("WidgetHero")
              .description("Hero Widget !!!")
        }
    }
}

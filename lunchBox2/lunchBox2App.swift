//
//  lunchBox2App.swift
//  lunchBox2
//
//  Created by رحاب فهد  on 07/04/1447 AH.
//

import SwiftUI

@main
struct MyApp: App {
    @StateObject var favoritesManager = FavoritesManager()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                RecipeDetailView(recipe: Recipe(title: "BURGER BEEF", imageName: "burger1"))
                    .tabItem {
                        Label("Recipe", systemImage: "book")
                    }
                
                FavoriteView()
                    .tabItem {
                        Label("Favorites", systemImage: "heart.fill")
                    }
            }
            .environmentObject(favoritesManager)
        }
    }
}
//
//  MyApp.swift
//  r2
//
//  Created by رحاب فهد  on 08/04/1447 AH.
//

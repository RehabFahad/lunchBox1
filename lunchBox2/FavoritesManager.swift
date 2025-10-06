//
//  Untitled.swift
//  lunchBox2
//
//  Created by رحاب فهد  on 09/04/1447 AH.
//


//
//  Untitled.swift
//  r2
//
//  Created by رحاب فهد  on 08/04/1447 AH.
//

import SwiftUI

class FavoritesManager: ObservableObject {
    @Published var favorites: [Recipe] = []
    
    func addToFavorites(_ recipe: Recipe) {
        if !favorites.contains(recipe) {
            favorites.append(recipe)
        }
    }
             
    func removeFromFavorites(_ recipe: Recipe) {
        favorites.removeAll { $0 == recipe }
    }
}
#Preview {
    FavoriteView()
        .environmentObject(FavoritesManager()) // ← لازم تضيفين هذا
}

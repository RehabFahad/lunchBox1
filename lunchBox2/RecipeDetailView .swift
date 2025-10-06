//
//  Untitled.swift
//  lunchBox2
//
//  Created by رحاب فهد  on 09/04/1447 AH.
//

import SwiftUI

struct RecipeDetailView: View {
    @EnvironmentObject var favoritesManager: FavoritesManager
    
    var recipe: Recipe
    
    var body: some View {
        VStack(spacing: 20) {
            Image(recipe.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            
            Text(recipe.title)
                .font(.custom("Hannotate SC", size: 26))
            
            Button(action: {
                favoritesManager.addToFavorites(recipe)
            }) {
                HStack {
                    Image(systemName: "heart.fill")
                    Text("Add to Favorites")
                }
                .font(.headline)
                .padding()
                .foregroundColor(.white)
                .background(Color.red)
                .cornerRadius(10)
            }
        }
        .padding()
    }
}
//
#Preview {
    FavoriteView()
        .environmentObject(FavoritesManager()) // ← لازم تضيفين هذا
}

//  RecipeDetailView.swift
//  r2
//
//  Created by رحاب فهد  on 08/04/1447 AH.
//


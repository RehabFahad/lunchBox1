//
//  FavoriteCard.swift
//  lunchBox2
//
//  Created by رحاب فهد  on 09/04/1447 AH.
//

import SwiftUI

struct FavoriteCard: View {
    var leftImage: String
    var title: String
    var rightImage: String
    
    var body: some View {
        HStack {
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("RECIPE")
                    .font(.custom("Hannotate SC", size: 14))
                    .foregroundColor(.black)
                Text(title)
                    .font(.custom("Hannatate SC", size: 20))
                    .foregroundColor(.black)
            }
            
            Spacer()
            
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
        }
        .padding()
        .background(Color.white.opacity(0.9))
        .cornerRadius(15)
        .shadow(radius: 2)
    }
    
}
#Preview {
    FavoriteView()
        .environmentObject(FavoritesManager()) // ← لازم تضيفين هذا
}


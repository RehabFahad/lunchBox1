//
//  ContentView.swift
//  lunchBox2
//
//  Created by رحاب فهد  on 07/04/1447 AH.

import SwiftUI

struct FavoriteView: View {
    @EnvironmentObject var favoritesManager: FavoritesManager
    
    var body: some View {
        ZStack {
            // الخلفية
            Image("BG")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                // المحتوى الأساسي
                if favoritesManager.favorites.isEmpty {
                    Spacer()
                    // هنا نستخدم صورة بدلاً من النص
                    Image("No favorites yet") // اسم الصورة في الـ Assets
                        .resizable()
                        .scaledToFit()
                        .frame(height: 28) // اضبطي حسب حجم الصورة
                    Spacer()
                } else {
                    ScrollView {
                        VStack(spacing: 20) {
                            ForEach(favoritesManager.favorites) { recipe in
                                FavoriteCard(
                                    leftImage: recipe.imageName,
                                    title: recipe.title, // هنا نفس اسم الصورة بدل النص
                                    rightImage: recipe.imageName
                                )
                            }
                        }
                        .padding(.horizontal)
                        .padding(.top, 40)
                    }
                }
            }
            
            // العنوان "Favorite" ثابت فوق المحتوى
            VStack {
                HStack {
                    Image("FAV") // استخدمنا صورة العنوان بدل النص
                        .resizable()
                        .scaledToFit()
                        .frame(height: 40) // اضبطي الحجم حسب الحاجة
                        .padding(.leading, 32)
                    Spacer()
                }
                .padding(.top, 100)
                Spacer()
            }
        }
    }
}

#Preview {
    FavoriteView()
        .environmentObject(FavoritesManager())
}

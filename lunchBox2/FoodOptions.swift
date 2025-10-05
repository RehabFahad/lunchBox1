//
//  FoodOptions.swift
//  lunchBox2
//
//  Created by Latifa Farhan Al-Mawash on 13/04/1447 AH.
//

import SwiftUI

struct FoodOptions: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack {
            GeometryReader { geo in
                let width = geo.size.width
                let height = geo.size.height
                
                // الخلفية
                Image("GB")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                // الصورة الكبيرة في الأعلى
                HStack(spacing: 6) {
                    Image("pasta")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 210, height: 210)
                }
                .position(x: width/2, y: height * 0.17)
                
                // محتوى الأطباق
                VStack(spacing: 37) {
                    Spacer().frame(height: height * 0.22)
                    
                    // النسخة الأولى - Pasta Pesto
                    HStack(spacing: 12) {
                        ZStack {
                            Circle()
                                .fill(Color.white.opacity(0))
                                .frame(width: 150, height: 150)
                                .overlay(Circle().stroke(Color.black, lineWidth: 1.6))
                            Image("pesto")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 140, height: 140)
                        }
                        .offset(x: 10)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Pasta Pesto")
                                .font(.headline)
                                .foregroundColor(.black)
                            
                            HStack(spacing: 6) {
                                Image(systemName: "clock")
                                Text("30 min")
                                Image(systemName: "flame")
                                Text("422 cal")
                            }
                            .font(.subheadline)
                            .foregroundColor(.black)
                        }
                        .padding(.trailing, 20)
                        .offset(x: 20) // ⬅️ حركنا المحتوى يمين شويتين
                    }
                    
                    // النسخة الثانية - Pasta Al Marinara
                    HStack(spacing: 12) {
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Pasta Al Marinara")
                                .font(.headline)
                                .foregroundColor(.black)
                            
                            HStack(spacing: 6) {
                                Image(systemName: "clock")
                                Text("35 min")
                                Image(systemName: "flame")
                                Text("463 cal")
                            }
                            .font(.subheadline)
                            .foregroundColor(.black)
                        }
                        .padding(.leading, 20)
                        .offset(x: 20) // ⬅️ تحريك بسيط لليمين
                        
                        ZStack {
                            Circle()
                                .fill(Color.white.opacity(0))
                                .frame(width: 150, height: 150)
                                .overlay(Circle().stroke(Color.black, lineWidth: 1.6))
                            Image("marinara")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 140, height: 140)
                        }
                        .offset(x: 50)
                    }
                    
                    // النسخة الثالثة - Fettuccine
                    HStack(spacing: 12) {
                        ZStack {
                            Circle()
                                .fill(Color.white.opacity(0))
                                .frame(width: 150, height: 150)
                                .overlay(Circle().stroke(Color.black, lineWidth: 1.6))
                            Image("fettuccine")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 140, height: 140)
                        }
                        .offset(x: 10)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Fettuccine")
                                .font(.headline)
                                .foregroundColor(.black)
                            
                            HStack(spacing: 6) {
                                Image(systemName: "clock")
                                Text("30 min")
                                Image(systemName: "flame")
                                Text("384 cal")
                            }
                            .font(.subheadline)
                            .foregroundColor(.black)
                        }
                        .padding(.trailing, 20)
                        .offset(x: 20) // ⬅️ يمين شويتين
                    }
                    
                    Spacer(minLength: 70)
                }
            }
            
            // 🔹 زر الباك في الزاوية العليا اليسرى (نزلناه أكثر)
            VStack {
                HStack {
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "chevron.left")
                            .font(.title2)
                            .foregroundColor(.black)
                    }
                    .padding(.leading, 16)
                    .padding(.top, 60)
                    Spacer()
                }
                Spacer()
            }
            
            // 🔹 تاب بار في الأسفل (بدون تغيير)
            VStack {
                Spacer()
                Divider()
                    .background(Color.black.opacity(0.3))
                HStack {
                    Spacer()
                    Button(action: {}) {
                        VStack {
                            Image(systemName: "house")
                                .font(.title2)
                                .foregroundColor(.black)
                            Text("Home")
                                .font(.caption)
                                .foregroundColor(.black)
                        }
                    }
                    Spacer()
                    Button(action: {}) {
                        VStack {
                            Image(systemName: "heart")
                                .font(.title2)
                                .foregroundColor(.black)
                            Text("Favorites")
                                .font(.caption)
                                .foregroundColor(.black)
                        }
                    }
                    Spacer()
                }
                .padding(.vertical, 10)
                .background(Color.clear)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    FoodOptions()
}

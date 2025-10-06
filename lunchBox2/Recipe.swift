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

struct Recipe: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let imageName: String
}
#Preview {
    FavoriteView()
        .environmentObject(FavoritesManager()) // ← لازم تضيفين هذا
}

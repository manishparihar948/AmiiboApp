//
//  AmiiboButtonView.swift
//  AmiiboApp
//
//  Created by Manish Parihar on 03.07.24.
//

import SwiftUI

struct AmiiboButtonView: View {
    var title : String
    
    var body: some View {
        Text(title)
            .font(.title3)
            .foregroundStyle(.text)
            .padding(.vertical, 10)
            .frame(maxWidth: .infinity)
            .background(Color.yellow)
            .cornerRadius(10)
            .shadow(color: .black.opacity(0.8), radius: 3)
    }
}

#Preview {
    AmiiboButtonView(title: "Add To Favorites")
}

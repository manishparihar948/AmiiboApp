//
//  AmiiboLoadingView.swift
//  AmiiboApp
//
//  Created by Manish Parihar on 04.07.24.
//

import SwiftUI

struct AmiiboLoadingView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle())
            .tint(ColorTheme.brandColor)
            .scaleEffect(3)
            .padding(30)
            .background(.thinMaterial)
            .presentationCornerRadius(15)
    }
}

#Preview {
    AmiiboLoadingView()
}

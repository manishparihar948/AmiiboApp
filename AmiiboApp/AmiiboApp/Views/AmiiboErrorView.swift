//
//  AmiiboErrorView.swift
//  AmiiboApp
//
//  Created by Manish Parihar on 04.07.24.
//

import SwiftUI

struct AmiiboErrorView: View {
    @Binding var isShowingError : Bool
    
    let title: String?
    let message: String?
    
    var body: some View {
        VStack(spacing: 10) {
            Text(title ?? Constants.somethingWentWrong)
            Divider()
            Text(message ?? Constants.error)
            
            Button { withAnimation(.easeOut) {isShowingError = false }} label: {
                AmiiboButtonView(title: Constants.ok)
            }
        }
        .padding()
        .frame(maxWidth: 300)
        .background(.thinMaterial)
        .presentationCornerRadius(10)
        .shadow(color: .black.opacity(0.8), radius: 3)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(ColorTheme.brandColor, lineWidth:2)
        )
    }
}

#Preview {
    AmiiboErrorView(isShowingError: .constant(true), title: "Server Error", message: "There was an error showing something")
}

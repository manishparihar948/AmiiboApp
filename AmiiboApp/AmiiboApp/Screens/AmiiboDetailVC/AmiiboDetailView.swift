//
//  AmiiboDetailView.swift
//  AmiiboApp
//
//  Created by Manish Parihar on 02.07.24.
//

import SwiftUI

struct AmiiboDetailView: View {
    
    let amiibo: Amiibo
    
    var body: some View {
        ScrollView {
            VStack {
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 200, height: 200, alignment: .center)
                
                AmiiboDividerView(color: ColorTheme.brandColor)
                
                AmiiboGroupInfoView(amiibo: amiibo)
                
                AmiiboReleaseDatesGroupView(amiibo: amiibo)
                
                AmiiboDividerView(color: ColorTheme.brandColor)
                
                Button {
                    // To-Do
                } label: {
                    AmiiboButtonView(title:Constants.adddToFavorites)
                }
            }
            .padding()
        }
    }
}

#Preview {
    AmiiboDetailView(amiibo: MockData.sampleAmiibo)
}

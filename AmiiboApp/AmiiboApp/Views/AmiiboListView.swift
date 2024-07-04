//
//  AmiiboListView.swift
//  AmiiboApp
//
//  Created by Manish Parihar on 04.07.24.
//

import SwiftUI

struct AmiiboListView: View {
    let amiibo: Amiibo
    
    var body: some View {
        HStack (spacing: 5){
            VStack(alignment: .leading, spacing: 5) {
                
                HStack {
                    
                    Text(amiibo.name)
                        .foregroundColor(ColorTheme.brandColor)
                        .font(.title2)
                        .fontWeight(.medium)
                    
                    Spacer()
                    
                    Text(amiibo.type)
                        .font(.body)
                        .padding(5)
                        .background(ColorTheme.brandColor)
                        .cornerRadius(10)
                    
                }
                
                Text(amiibo.amiiboSeries + Constants.amiiboSeries)
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
                
            }
            .padding(.leading)
            
        }
    }
}

#Preview {
    AmiiboListView(amiibo: MockData.sampleAmiibo)
}

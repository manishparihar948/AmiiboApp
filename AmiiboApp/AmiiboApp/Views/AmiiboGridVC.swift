//
//  AmiiboGridVC.swift
//  AmiiboApp
//
//  Created by Manish Parihar on 27.06.24.
//

import SwiftUI

struct AmiiboGridVC: View {
    let amiibo : Amiibo
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            
            Rectangle()
                //.fill(.accent)
                .frame(height:70, alignment: .leading)
                .frame(width: 70, height: 70)
                .cornerRadius(10)
                .padding(5)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(ColorTheme.brandColor, lineWidth: 2)
                )
            
            VStack(alignment: .leading, spacing: 3) {
                
                Text(amiibo.name)
                    .foregroundStyle(ColorTheme.brandColor)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text(amiibo.amiiboSeries + Constants.amiiboSeries)
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 5)
            .padding(.vertical, 5)
            .scaledToFit()
            .lineLimit(1)
        }
        .padding()
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
        .shadow(color:ColorTheme.textColor.opacity(0.5), radius: 2, x: 0, y: 1)
    }
}

#Preview {
    AmiiboGridVC(amiibo: MockData.sampleAmiibo)
}

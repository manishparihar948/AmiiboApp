//
//  AmiiboGroupInfoView.swift
//  AmiiboApp
//
//  Created by Manish Parihar on 02.07.24.
//

import SwiftUI

struct AmiiboGroupInfoView: View {
    let amiibo : Amiibo
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            AmiiboSingleInfoView(title: Constants.name, info: amiibo.name)
            AmiiboDividerView(color: ColorTheme.textColor)
            
            AmiiboSingleInfoView(title: Constants.gameSeries, info: amiibo.gameSeries)
            AmiiboDividerView(color: ColorTheme.textColor)
            
            AmiiboSingleInfoView(title: Constants.amiiboSeriesGI, info: amiibo.amiiboSeries)
            AmiiboDividerView(color: ColorTheme.textColor)

            AmiiboSingleInfoView(title: Constants.type, info: amiibo.type)
        }
        .padding()
        .background(Color.yellow)
        //.presentationCornerRadius(10)
        .cornerRadius(10)
        .shadow(color:.white.opacity(1.0), radius: 3)
        //.padding()

    }
}

#Preview {
    AmiiboGroupInfoView(amiibo: MockData.sampleAmiibo)
}

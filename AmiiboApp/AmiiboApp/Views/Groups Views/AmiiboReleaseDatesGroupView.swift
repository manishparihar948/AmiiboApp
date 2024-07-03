//
//  AmiiboReleaseDatesGroupView.swift
//  AmiiboApp
//
//  Created by Manish Parihar on 03.07.24.
//

import SwiftUI

struct AmiiboReleaseDatesGroupView: View {
    let amiibo : Amiibo
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            AmiiboSingleInfoView(title: Constants.australiaDP, info: amiibo.release.auText)
            AmiiboDividerView(color: .text)
            
            AmiiboSingleInfoView(title: Constants.europeDP, info: amiibo.release.euText)
            AmiiboDividerView(color: .text)
            
            AmiiboSingleInfoView(title: Constants.japanDP, info: amiibo.release.jpText)
            AmiiboDividerView(color: .text)
            
            AmiiboSingleInfoView(title: Constants.northAmericaDP, info: amiibo.release.naText)
        }
        .padding()
        .background(Color.yellow)
        .cornerRadius(10)
        .shadow(color:.white.opacity(0.1), radius: 3)
        //.padding()
    }
}

#Preview {
    AmiiboReleaseDatesGroupView(amiibo: MockData.sampleAmiibo)
}

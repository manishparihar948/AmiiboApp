//
//  AmiiboDividerView.swift
//  AmiiboApp
//
//  Created by Manish Parihar on 02.07.24.
//

import SwiftUI

struct AmiiboDividerView: View {
    let color : Color
    
    var body: some View {
        color
            .frame(height: 2)
            .clipShape(Capsule())
    }
}

#Preview {
    AmiiboDividerView(color: ColorTheme.brandColor)
}

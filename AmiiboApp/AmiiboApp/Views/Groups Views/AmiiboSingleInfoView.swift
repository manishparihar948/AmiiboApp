//
//  AmiiboSingleInfoView.swift
//  AmiiboApp
//
//  Created by Manish Parihar on 02.07.24.
//

import SwiftUI

struct AmiiboSingleInfoView: View {
    
    let title: String
    let info : String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.title3)
                .bold()
            
            Text(info)
        }
    }
}

#Preview {
    AmiiboSingleInfoView(title: "Info", info: "Mario")
}

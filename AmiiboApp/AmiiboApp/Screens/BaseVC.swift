//
//  BaseVC.swift
//  AmiiboApp
//
//  Created by Manish Parihar on 27.06.24.
//

import SwiftUI

struct BaseVC: View {
    
    var body: some View {
        TabView {
            HomeVC()
                .tabItem {
                    Label(Constants.homeTitle, systemImage:SFSymbols.homeImg)
                }
                .tag(Constants.homeTag)
            
            SettingVC()
                .tabItem {
                    Label(Constants.favorites,
                          systemImage: SFSymbols.starImg)
                }
                .tag(Constants.favoritesTag)
        }
    }
}

#Preview {
    BaseVC()
}

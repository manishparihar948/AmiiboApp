//
//  HomeVC.swift
//  AmiiboApp
//
//  Created by Manish Parihar on 27.06.24.
//

import SwiftUI

struct HomeVC: View {
    
    private let columns = Array(repeating: GridItem(.flexible()), count: 3)
    
    @State private var amiibo : [Amiibo] = []
    
    var body: some View {
        NavigationStack {
            ZStack {
                background
                
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 10){
                        ForEach(amiibo.indices, id: \.self) {index in
                            let amiiboNow = amiibo[index]
                            NavigationLink {
                                // DetailView
                            } label: {
                                AmiiboGridVC(amiibo: amiiboNow)
                            }
                        }
                    }
                }
            }
            .navigationTitle(Constants.homeMainTitle)
            .toolbar {
                // To-Do Item
                // Left Button - Grid / List
                // Right Button - DropDown Filters
            }
            .onAppear {
                do {
                    let res = try JSONMapper.decode(file: "AmiiboStaticData", type: AmiiboResponse.self)
                    amiibo = res.amiibo
                } catch {
                    // TODO
                    print("Error decoding JSON: \(error)")
                }
            }
        }
    }
}

#Preview {
    HomeVC()
}

private extension HomeVC {
    var background : some View {
        Color.clear
            .ignoresSafeArea(edges: .top)
    }
}

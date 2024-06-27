//
//  ContentView.swift
//  AmiiboApp
//
//  Created by Manish Parihar on 27.06.24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .padding()
            .onAppear {
                print("Mario Response")
                dump(
                   try? JSONMapper.decode(file: "AmiiboStaticData", type: AmiiboResponse.self)
                )
            }
    }
}

#Preview {
    ContentView()
}

//
//  Amiibo.swift
//  AmiiboApp
//
//  Created by Manish Parihar on 27.06.24.
//

import Foundation

struct Amiibo : Codable, Identifiable {
    let name: String
    let image: String
    let type : String
    let character : String
    let amiiboSeries : String
    let gameSeries : String
    let head : String
    let tail : String
    let release : Release
    
    var id : String {
        return head + tail
    }
}

struct Release : Codable {
    let au: String?
    let eu: String?
    let jp: String?
    let na: String?
}

struct AmiiboResponse : Codable {
    let amiibo : [Amiibo]
}

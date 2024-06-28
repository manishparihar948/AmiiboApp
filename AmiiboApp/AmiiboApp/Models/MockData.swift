//
//  MockData.swift
//  AmiiboApp
//
//  Created by Manish Parihar on 27.06.24.
//

import Foundation

struct MockData {
    static let sampleAmiibo = Amiibo(name: "Test Amiibo", 
                                     image: "",
                                     type: "Figure",
                                     character: "Character",
                                     amiiboSeries: "Series",
                                     gameSeries: "",
                                     head: "",
                                     tail: "",
                                     release: Release(au: "1",
                                                      eu: "2",
                                                      jp: "3",
                                                      na: "4")
    )
    
    static let amiibo = [sampleAmiibo,
                         sampleAmiibo,
                         sampleAmiibo,
                         sampleAmiibo]
}

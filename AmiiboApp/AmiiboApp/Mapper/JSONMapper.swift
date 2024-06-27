//
//  JSONMapper.swift
//  AmiiboApp
//
//  Created by Manish Parihar on 27.06.24.
//

import Foundation

struct JSONMapper {
    static func decode<T: Decodable>(file: String, type: T.Type) throws -> T {
        guard !file.isEmpty,
              let path = Bundle.main.path(forResource: file, ofType: "json"),
                let data = FileManager.default.contents(atPath: path) else {
            throw MappingError.failedToGetContents
        }
        
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .useDefaultKeys
        return try decoder.decode(T.self, from: data)
    }
}

extension JSONMapper {
    enum MappingError : Error {
        case failedToGetContents
    }
}

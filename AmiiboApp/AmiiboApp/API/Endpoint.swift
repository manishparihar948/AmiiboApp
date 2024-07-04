//
//  Endpoint.swift
//  AmiiboApp
//
//  Created by Manish Parihar on 04.07.24.
//

import Foundation

enum Endpoint {
    case amiibo
}

extension Endpoint {
    var host: String { "www.amiiboapi.com" }
    
    var path : String {
        switch self {
        case .amiibo:
            return "/api/amiibo"
        }
    }
}

extension Endpoint {
    var url: URL? {
        var urlComponents = URLComponents()
        urlComponents.scheme = "https"
        urlComponents.host = host
        urlComponents.path = path
        return urlComponents.url
    }
}

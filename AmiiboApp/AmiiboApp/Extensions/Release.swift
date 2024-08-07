//
//  Release.swift
//  AmiiboApp
//
//  Created by Manish Parihar on 03.07.24.
//

import Foundation

extension Release {
    
    var auText: String {
        au ?? Constants.notAvailable
    }
    
    var euText: String {
        eu ?? Constants.notAvailable
    }
    
    var jpText: String {
        jp ?? Constants.notAvailable
    }
    
    var naText: String {
        na ?? Constants.notAvailable
    }
}

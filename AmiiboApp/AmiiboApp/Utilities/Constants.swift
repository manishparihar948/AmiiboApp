//
//  Constants.swift
//  AmiiboApp
//
//  Created by Manish Parihar on 27.06.24.
//

import Foundation
import SwiftUI

enum Constants {
    /* Base */
    static let homeMainTitle = "Amiibo"

    static let homeTag = "HomeTag"
    static let homeTitle = "Home"
    static let emptyAmiibo = "There aren't any amiibo in favorites. Consider adding one."
        
    static let settingTag = "SettingTag"
    static let settingTitle = "Settings"
    
    /* Home Details */
    static let adddToFavorites = "Add to Favorites"
    static let success = "Success!"
    static let successfullyAddedToFavorites = "Successfully added to favorites"
    
    /* FavoritesView */
    static let favoritesTag = "FavoritesTag"
    static let favorites = "Favorites"
    
    /* Amiibo */
    static let amiiboSeries = " Amiibo Series"
    static let notAvailable = "Not Available"
    
    /* Amiibo Group Info View*/
    static let name = "Name:"
    static let gameSeries = "Game Series:"
    static let amiiboSeriesGI = "Amiibo Series:"
    static let type = "Amiibo Series:"
    
    /* AmiiboReleaseDatesGroupView */
    static let australiaDP = "Australia:"
    static let europeDP = "Europe:"
    static let japanDP = "Japan:"
    static let northAmericaDP = "North America:"
    
    /* Extras */
    static let placeholder = "amiiboPlaceholder"
    static let ok = "OK"
}

enum SFSymbols {
    /* Base */
    static let homeImg = "house"
    static let settingImg = "gear"
    static let starImg = "star"
}

enum ColorTheme {
    static let brandColor = Color("brandColor")
    static let textColor = Color("textColor")
}

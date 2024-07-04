//
//  AmiiboDetailViewModel.swift
//  AmiiboApp
//
//  Created by Manish Parihar on 03.07.24.
//

/*
import Foundation
import SwiftData

@Observable final class AmiiboDetailViewModel {
    private(set) var addedToFavorites = false
    private(set) var error : DetailError?
    private(set) var isLoading = false
    private(set) var isAlreadyInFavorites = false
    private(set) var isShowingError = false
    
    var showingOverView: Bool { addedToFavorites || isAlreadyInFavorites }
    
    /// Add Amiibo to SwiftData
    /// - Parameters:
    ///     - amiibo    : The object added to favorites
    ///     - context   : The container for persisting data
    ///     - favorites : The array of amiibo being persisted in SwiftData
    @MainActor
    func favorite(amiibo: Amiibo, context: ModelContext, favorites:[FavoriteAmiibo]) async {
        isLoading = true
        defer { isLoading = false }
        
        do {
            let response = try await NetworkManager
        } catch <#pattern#> {
            <#statements#>
        }
    }
}

extension AmiiboDetailViewModel {
    enum DetailError: LocalizedError {
        case networking(error: LocalizedError)
    }
}

extension AmiiboDetailViewModel.DetailError {
    var failureReason: String? {
        switch self {
        case .networking(let error):
            return error.failureReason
        }
    }
    var errorDescription: String? {
        switch self {
        case .networking(let error):
            return error.errorDescription
        }
    }
}

*/

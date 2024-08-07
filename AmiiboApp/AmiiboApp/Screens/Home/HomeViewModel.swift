//
//  HomeViewModel.swift
//  AmiiboApp
//
//  Created by Manish Parihar on 04.07.24.
//

import Foundation

@Observable
final class HomeViewModel {
    private(set) var amiibo : [Amiibo] = []
    private(set) var isLoading = false
    private(set) var error: NetworkManager.AmiiboError?
    private(set) var alreadyAppeared = false
    var searchText = ""
    var isShowingError = false
    var listEnabled = true
    var selectedSortOption = SortOptionManager.allCases.first!
    
    var filteredAmiibo: [Amiibo] {
        if searchText.isEmpty {
            return amiibo.sort(on:selectedSortOption)
        } else {
            let filteredAmiibo = amiibo.compactMap { amiibo in
                
                let amiiboName = amiibo.name.range(of: searchText, options: .caseInsensitive) != nil
                return amiiboName ? amiibo : nil
                
            }
            
            return filteredAmiibo.sort(on: selectedSortOption)
        }
    }
    
    private let networkManager : NetworkManagerProtocol
    
    init(networkManager: NetworkManagerProtocol = NetworkManager.shared) {
        self.networkManager = networkManager
    }
    
    // Fetches amiibo from the API if it hasn't been fetched
    @MainActor
    func fetchAmiiboOnce() async {
        if !alreadyAppeared {
            isLoading = true
            defer { isLoading = false }
            await fetchAmiibo()
            alreadyAppeared = true
        }
    }
    
    // Fetches Amiibo from API
    @MainActor
    func fetchAmiibo() async {
        isLoading = true
        defer { isLoading = false }
        do {
            let response = try await networkManager.request(session: .shared, .amiibo, type: AmiiboResponse.self)
            self.amiibo = response.amiibo
        } catch  {
            self.isShowingError = true
            if let networkingError = error as? NetworkManager.AmiiboError {
                self.error = networkingError
            } else {
                self.error = .invalidData
            }
        }
    }
}

//
//  HomeVC.swift
//  AmiiboApp
//
//  Created by Manish Parihar on 27.06.24.
//

import SwiftUI

struct HomeVC: View {
    
    @State private var viewModel = HomeViewModel()
    
    private let columns = Array(repeating: GridItem(.flexible()), count: 3)
    
    @State private var amiibo : [Amiibo] = []
    
    var body: some View {
        NavigationStack {
            ZStack {
                background
                
                /*
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
                 */
                if viewModel.isLoading {
                    AmiiboLoadingView()
                } else {
                    if viewModel.listEnabled {
                        listView
                    } else {
                       // gridBackground
                        
                        gridView
                    }
                }
            }
            .navigationTitle(Constants.homeMainTitle)
            .toolbar {
                // To-Do Item
                // Left Button - Grid / List
                switchCellType
                // Right Button - DropDown Filters
                sort
            }
            .searchable(text: $viewModel.searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Search amiibo")
            .refreshable {
                Task {
                    await viewModel.fetchAmiibo()
                }
            }
            .animation(.easeInOut, value: viewModel.isLoading)
            .task { await viewModel.fetchAmiiboOnce() }
            .overlay {
                if viewModel.isShowingError {
                    AmiiboErrorView(isShowingError: $viewModel.isShowingError, title: viewModel.error?.failureReason, message: viewModel.error?.errorDescription)
                }
            }
            /*
            .onAppear {
                do {
                    let res = try JSONMapper.decode(file: "AmiiboStaticData", type: AmiiboResponse.self)
                    amiibo = res.amiibo
                } catch {
                    // TODO
                    print("Error decoding JSON: \(error)")
                }
            }
             */
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
    
    var listView: some View {
        List(viewModel.filteredAmiibo) { amiibo in
            NavigationLink(destination: AmiiboDetailView(amiibo: amiibo)) {
                AmiiboListView(amiibo: amiibo)
            }
        }
    }
    
    private var gridView: some View {
        
        ScrollView {
            
            LazyVGrid(columns: columns, spacing: 10) {
                
                ForEach(viewModel.filteredAmiibo, id: \.id) { amiibo in
                    
                    NavigationLink(destination: AmiiboDetailView(amiibo: amiibo)) {
                        
                        AmiiboGridVC(amiibo: amiibo)
                        
                    }
                    
                }
                .padding(.horizontal)
                .padding(.vertical, 10)
                
            }
            
        }
        
    }
    
    /*
    private var gridBackground: some View {
        
        Color.background
            .ignoresSafeArea(edges: .top)
        
    }
     */
    
    private var switchCellType: some ToolbarContent {
        
        ToolbarItem(placement: .topBarLeading) {
            
            Button {
                
                withAnimation { viewModel.listEnabled.toggle() } } label: {
                    
                    Image(systemName: viewModel.listEnabled ? SFSymbols.grid : SFSymbols.list)
                        .foregroundColor(ColorTheme.brandColor)
                    
                }
                .disabled(viewModel.isLoading)
            
        }
        
    }
    
    private var sort: some ToolbarContent {
        
        ToolbarItem(placement: .topBarTrailing) {
            
            Menu {
                
                Picker("", selection: $viewModel.selectedSortOption) {
                    
                    ForEach(SortOptionManager.allCases, id: \.self) { option in
                    
                        Label(option.localizedString, systemImage: option.systemImage)
                            .tag(option)
                        
                    }
                    
                }
                
            } label: {
                
                Label("Sort", systemImage: SFSymbols.sort)
                
            }
            
        }
        
    }
}

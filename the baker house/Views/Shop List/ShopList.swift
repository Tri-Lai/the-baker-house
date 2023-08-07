//
//  ShopList.swift
//  the baker house
//
//  Created by Trí Lai on 28/07/2023.
//

/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Lai Nghiep Tri
  ID: s3799602
  Created  August 7th, 2023
  Last modified: August 7th, 2023
  Acknowledgement: iOS course COSC2659 (lectures and tutorials), Apple Documentation
*/

import SwiftUI

struct ShopList: View {
    // Store the current mode theme even the user close app
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    // Filt out the desired category or rating range
    @State private var selectedFilter = Filter.Gourmet
    
    @State private var stores: [BakerShop] = bakerShops
    
    // Search text
    @State private var searchItem: String = ""

    private var filteredStores: [BakerShop] {
        // Return the all the stores in case no search text given.
        // Otherwise, show the list of matching store against search text.
        guard !searchItem.isEmpty else { return stores }
        return stores.filter{ $0.name.localizedCaseInsensitiveContains(searchItem) }
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                List(filteredStores) { store in
                    NavigationLink {
                        ShopCard(bakerShop: store)
                    } label: {
                        RowView(shop: store)
                    }
                }
            } // VStack (List)
            .toolbar {
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarLeading) {
                        Button(action:  { isDarkMode.toggle() },
                               label:   { isDarkMode ?
                                        Label("Dark", systemImage: "moon.fill"):
                                        Label("Light", systemImage: "sun.max.fill")
                            })
                    }
                ToolbarItem(placement: .confirmationAction) {
                    Picker("", selection: $selectedFilter.animation()) {
                        ForEach(Filter.allFilters, id: \.self) { filter in
                            Text(filter.rawValue)
                        }
                    }
                }
            }
            .navigationTitle("Stores")
            .animation(.default, value: searchItem)
            .searchable(text: $searchItem, prompt: "Search stores")
            
        } // NavigationStack
        .environment(\.colorScheme, isDarkMode ? .dark : .light)
    }
    
    // -- Method
//    private func filterShops() -> [BakerShop] {
//        if selectedFilter == Filter.Gourmet {
//            return stores.filter{$0.category}
//        }
//    }
    
}

struct ShopList_Previews: PreviewProvider {
    static var previews: some View {
        ShopList()
    }
}
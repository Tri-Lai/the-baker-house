//
//  ShopList.swift
//  the baker house
//
//  Created by Trí Lai on 28/07/2023.
//

import SwiftUI

struct ShopList: View {
    // Store the current mode theme even the user close app
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    @State private var stores: [BakerShop] = bakerShops
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
            }
            .toolbar {
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing) {
                        Button(action:  { isDarkMode.toggle() },
                               label:   { isDarkMode ?
                                        Label("Dark", systemImage: "moon.fill"):
                                        Label("Light", systemImage: "sun.max.fill")
                            })
                    }
            }
            .navigationTitle("Stores")
            .animation(.default, value: searchItem)
            .searchable(text: $searchItem, prompt: "Search stores")
            
        } // NavigationStack
        .environment(\.colorScheme, isDarkMode ? .dark : .light)
    }
}

struct ShopList_Previews: PreviewProvider {
    static var previews: some View {
        ShopList()
    }
}

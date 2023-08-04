//
//  ShopList.swift
//  the baker house
//
//  Created by Trí Lai on 28/07/2023.
//

import SwiftUI

struct ShopList: View {
    var body: some View {
        NavigationView {
            List(bakerShops) { shop in
                NavigationLink {
                    ShopCard(bakerShop: shop)
                } label: {
                    RowView(shop: shop)
                }
            }
            .navigationTitle("STORES")
        } // NavigationView
    }
}

struct ShopList_Previews: PreviewProvider {
    static var previews: some View {
        ShopList()
    }
}

//
//  ShopCard.swift
//  the baker house
//
//  Created by Trí Lai on 28/07/2023.
//

import SwiftUI

struct ShopCard: View {
    let bakerShop: BakerShop
    
    var body: some View {
        let iconCategoryList = mapCategory(categories: bakerShop.category)

        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // Header
                    ShopHeaderView(bakerShop: bakerShop)
              
                    // Content
                    
                    // Category
                    HStack {
                        ForEach(0..<iconCategoryList.count, id: \.self) {
                            Image(iconCategoryList[$0])
                                .padding(10)
                                .background(Color.primary)
                                .clipShape(Circle())
                        }
                    }   // HStack
                    
                    // Breaker
                    Image("accent-horizontal-lines")
                        .frame(maxHeight: 100)
                    
                    DescriptionView(bakerShop: bakerShop)
                    
                    // Breaker
                    Image("accent-horizontal-lines")
                        .frame(maxHeight: 100)
                    
                    OpeningHoursView()
                    MenuView(store: bakerShop)
                    LocationView(bakerShop: bakerShop)
                    ContactView()
                    FooterView()
                    
                } // VStack (Header + content)
                .navigationTitle(Text("Tous les Jours"))
                .navigationBarTitleDisplayMode(.inline)
                .toolbar(.hidden, for: .navigationBar)
                
            } // ScrollView
            .edgesIgnoringSafeArea(.top)
            
        } // NavigationView
    }
}

struct ShopCard_Previews: PreviewProvider {
    static var previews: some View {
        ShopCard(bakerShop: bakerShops[0])
    }
}

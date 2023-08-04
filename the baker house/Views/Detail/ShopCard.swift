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
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // Header
                    ShopHeaderView(bakerShop: bakerShop)
              
                    // Content
                    ContactView()
                    Image("accent-horizontal-lines")
                        .frame(maxHeight: 100)
                    
                    DescriptionView(bakerShop: bakerShop)
                    
                    Image("accent-horizontal-lines")
                        .frame(maxHeight: 100)
                    
                    OpeningHoursView()
                                        
                    MenuView(store: bakerShop)
                    
                    LocationView(bakerShop: bakerShop)

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

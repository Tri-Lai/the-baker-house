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
        VStack {
            ScrollView {
                Image(bakerShop.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.top, 0)
                
                InfoView(bakerShop: self.bakerShop)
                
                Divider()
                
                Spacer(minLength: 30)
                
                DescriptionView(bakerShop: self.bakerShop)
            }
        }
    }
}

struct ShopCard_Previews: PreviewProvider {
    static var previews: some View {
        ShopCard(bakerShop: bakerShops[0])
    }
}

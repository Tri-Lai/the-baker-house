//
//  ShopListRow.swift
//  the baker house
//
//  Created by Trí Lai on 28/07/2023.
//

import SwiftUI

struct ShopListRow: View {
    var bakerShop: BakerShop
    
    var body: some View {
        
        HStack(alignment: .center) {
            // Card Avatar
            Image(bakerShop.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 102, height: 112)
                .padding([.leading, .top, .bottom], -10)
            
            // Card Description
            VStack(alignment: .leading) {
                
                // Shop name
                Text(bakerShop.name)
                    .font(.system(.title2))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.VAMPIRE_BLACK)
                    .padding(.bottom, 2)
                
                // Subheading
                Text(bakerShop.subheading)
                    .font(.system(.subheadline))
                    .foregroundColor(ColorConstants.LIGHT_TAUPE)
                    .padding(.bottom, 2)
                
                // Rating
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(Color.yellow)
                    Text(bakerShop.rating.description)
                }
            }
            .padding(.leading, -5)
            Spacer()
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .background(ColorConstants.ALABASTER)
        .modifier(CardModifier())
        .padding(.all, 10)
    }
}

struct ShopListRow_Previews: PreviewProvider {
    static var previews: some View {
        ShopListRow(bakerShop: bakerShops.first!)
    }
}

//
//  ShopListRow.swift
//  the baker house
//
//  Created by Trí Lai on 28/07/2023.
//

import SwiftUI

struct ShopListRow: View {
    var body: some View {
        
        HStack(alignment: .center) {
            // Card Avatar
            Image("hau-giang")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 102, height: 112)
                .padding(.all, 20)
            
            // Card Description
            VStack(alignment: .leading) {
                
                // Shop name
                Text("Tous Les Jours")
                    .font(.system(.title2))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.VAMPIRE_BLACK)
                    .padding(.bottom, 2)
                
                // Subheading
                Text("An Artisan Bakery Serving A Unique Selection Of Fresh Bread")
                    .font(.system(.subheadline))
                    .foregroundColor(ColorConstants.LIGHT_TAUPE)
                    .padding(.bottom, 2)
                
                // Rating
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(Color.yellow)
                    Text("4.5")
                }
            }
            .padding(.trailing, 20)
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
        ShopListRow()
    }
}

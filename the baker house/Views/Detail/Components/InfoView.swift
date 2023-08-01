//
//  InfoView.swift
//  the baker house
//
//  Created by Trí Lai on 28/07/2023.
//

import SwiftUI

struct InfoView: View {
    let bakerShop: BakerShop
    
    var body: some View {
        VStack(alignment: .center) {
            // Shop name
            Text(bakerShop.name)
                .foregroundColor(ColorConstants.VAMPIRE_BLACK)
                .font(.system(size: 45, weight: .heavy, design: .serif))
            
            // Shop address
            Text(bakerShop.address)
                .foregroundColor(ColorConstants.VAMPIRE_BLACK)
                .font(.system(.subheadline))
                .padding([.trailing, .leading], 30)
                .padding(.top, 3)
            
            Text(". . .")
            
            // Social media (STILL NOT ACCESS LINK)
            HStack {
                Button {
                    print("Facebook clicked")
                } label: {
                    Image("facebook")
                        .resizable()
                        .clipShape(Circle())
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 32)
                }
                
                Button {
                    print("Shopee Food clicked")
                } label: {
                    Image("shopee-food")
                        .resizable()
                        .clipShape(Circle())
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 32)
                }
                
                Button {
                    print("Foody clicked")
                } label: {
                    Image("foody")
                        .resizable()
                        .clipShape(Circle())
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 32)
                }
                
                Button {
                    print("Calling...")
                } label: {
                    Image(systemName: "phone.circle.fill")
                        .resizable()
                        .clipShape(Circle())
                        .aspectRatio(contentMode: .fit)
                        .tint(.green)
                        .frame(maxWidth: 32)
                }
            }
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(bakerShop: bakerShops.first!)
    }
}

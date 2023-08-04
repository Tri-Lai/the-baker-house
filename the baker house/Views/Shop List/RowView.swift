//
//  RowView.swift
//  the baker house
//
//  Created by Trí Lai on 03/08/2023.
//

import SwiftUI

struct RowView: View {
    var shop: BakerShop
    
    var body: some View {
        let splitedAddress = shop.address.components(separatedBy: ",")
        let shortAddress = getShort(address: splitedAddress)
    
        HStack {
            Image(shop.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
    //            .background(
    //                LinearGradient(gradient: Gradient(colors: <#T##[Color]#>), startPoint: .top, endPoint: .bottom)
    //            )
                .cornerRadius(8)
            
            VStack(alignment: .leading) {
                Text(shop.name)
                    .font(.title2)
                    .fontWeight(.bold)

                Text(shortAddress)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            } // VStack
        } // HStack
        .frame(maxWidth: 350)
    }
}

// Shorten the original address, this aims to remove the phrase
// "Ho Chi Minh city 700000" owing to its duplication at every address.
//
// @Param address: Array of split string
func getShort(address: [String]) -> String {
    var res = ""
    for idx in 0..<address.count-1 {
        // Check for not putting comma char at the end of address
        var comma = (idx != address.count-2) ? "," : ""
        res += address[idx] + comma
    }
    
    return res
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(shop: bakerShops[0])
    }
}

//
//  ShopList.swift
//  the baker house
//
//  Created by Trí Lai on 28/07/2023.
//

import SwiftUI

struct ShopList: View {
    var body: some View {
        ZStack {
            // Background
//            LinearGradient(colors: [ColorConstants.GOLD_FUSION,
//                                    ColorConstants.YANKEES_BLUE],
//                          startPoint: .top, endPoint: .bottom)
//                .edgesIgnoringSafeArea(.bottom)
            
            VStack {
                //
                List(bakerShops) { shop in
                    ShopListRow(bakerShop: shop)
                }
                //.navigationTitle("Baker shops")
            }
        }
    }
}

struct ShopList_Previews: PreviewProvider {
    static var previews: some View {
        ShopList()
    }
}

//
//  MenuView.swift
//  the baker house
//
//  Created by Trí Lai on 04/08/2023.
//

import SwiftUI

struct MenuView: View {
    var store: BakerShop
    
    var body: some View {
        VStack {
            Text("Menu\n")
                .font(.title)
                .fontDesign(.serif)
                .fontWeight(.bold)
                .foregroundColor(Color("TLJ_logo"))
            
            FoodTabView(store: store)
                .frame(height: 250)
                .padding(.bottom, 20)
                .offset(y: -30)
        } // VStack
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(store: bakerShops[0])
    }
}

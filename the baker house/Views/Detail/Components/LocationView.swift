//
//  MapContactView.swift
//  the baker house
//
//  Created by Trí Lai on 03/08/2023.
//

import SwiftUI

struct LocationView: View {
    var bakerShop: BakerShop
    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                HStack {
                    Image(systemName: "mappin")
                        .foregroundColor(.white)
                    
                    Text("FIND A STORE")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                .padding(.bottom, 20)

                MapView(coordinate: bakerShop.location)
                    .frame(height: 250)
                
                Text(bakerShop.address)
                    .font(.caption)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.top, 10)
            } // VStack
            .padding(20)
            .background(Color("TLJ_logo"))
            
        } // ScrollView
    }
}

struct MapContactView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView(bakerShop: bakerShops[0])
    }
}

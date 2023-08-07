//
//  MapContactView.swift
//  the baker house
//
//  Created by Trí Lai on 03/08/2023.
//

/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Lai Nghiep Tri
  ID: s3799602
  Created  August 7th, 2023
  Last modified: August 7th, 2023
  Acknowledgement: iOS course COSC2659 (lectures and tutorials), Apple Documentation
*/

import SwiftUI

struct LocationView: View {
    // Adapt to the display mode (light and dark)
    @Environment(\.colorScheme) var colorScheme
    
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
            .background(colorScheme == .dark ? ColorConstants.LIGHT_TAUPE : ColorConstants.YANKEES_BLUE)
        } // ScrollView
    }
}

struct MapContactView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView(bakerShop: bakerShops[0])
    }
}

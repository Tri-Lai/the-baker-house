//
//  ShopHeaderView.swift
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

struct ShopHeaderView: View {
    var bakerShop: BakerShop
    @State private var isAnimatingImage: Bool = false
    
    var body: some View {
        ZStack {
            Color("Tous les Jours")
            Image(bakerShop.imageName)
                .resizable()
                .scaledToFit()
                .shadow(radius: 8)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        }
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

struct ShopHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ShopHeaderView(bakerShop: bakerShops[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}

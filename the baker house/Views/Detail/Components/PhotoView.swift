//
//  PhotoView.swift
//  the baker house
//
//  Created by Trí Lai on 01/08/2023.
//

import SwiftUI

struct PhotoView: View {
    let shop: BakerShop
    
    var body: some View {
        Image(shop.imageName)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView(shop: bakerShops[0])
    }
}

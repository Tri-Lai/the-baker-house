//
//  PhotoTabView.swift
//  the baker house
//
//  Created by Trí Lai on 01/08/2023.
//

import SwiftUI

struct PhotoTabView: View {
    var body: some View {
        TabView {
            ForEach(bakerShops) { shop in
                PhotoView(shop: shop)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct PhotoTabView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoTabView()
    }
}

//
//  DescriptionView.swift
//  the baker house
//
//  Created by Trí Lai on 28/07/2023.
//

import SwiftUI

struct DescriptionView: View {
    let bakerShop: BakerShop
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Description")
                .font(.system(size: 30, design: .serif))
                .padding(.leading, 30)

            Text(bakerShop.description)
                .foregroundColor(.white)
                .font(.system(size: 18, weight: .thin, design: .serif))
                .lineSpacing(5)
                .padding(30)
                .background(ColorConstants.GOLD_FUSION)
                .clipShape(Rectangle())
        }
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(bakerShop: bakerShops[0])
    }
}

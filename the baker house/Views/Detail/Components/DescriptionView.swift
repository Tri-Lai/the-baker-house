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
        VStack(alignment: .center) {
            HStack {
                Image(systemName: "doc.plaintext.fill")
                Text("Description")
                    .font(.title2)
                    .fontDesign(.serif)
            }
            
            Text(bakerShop.description)
                .foregroundColor(.white)
                .font(.system(size: 18, weight: .thin, design: .serif))
                .lineSpacing(5)
                .padding(30)
                .background(ColorConstants.GOLD_FUSION)
                .clipShape(Rectangle())
                .cornerRadius(20)
        }
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(bakerShop: bakerShops[0])
    }
}

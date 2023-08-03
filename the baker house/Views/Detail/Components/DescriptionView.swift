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
        VStack(alignment: .leading, spacing: 20) {
            // Title
            Text(bakerShop.name)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color("TLJ_logo"))
            
            // Subheadline
            Text("\"\(bakerShop.subheading)\"")
                .font(.italic(.subheadline)())
            
            // Description
            Text("Our story")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color("TLJ_logo"))
                .padding(.top, 20)
            
            Text(bakerShop.description)
                .font(.body)
                .multilineTextAlignment(.leading)
                .fontDesign(.serif)
                .lineSpacing(10)

        } // VStack (content)
        .fontDesign(.serif)
        .padding(.horizontal, 20)
        .frame(maxWidth: 640, alignment: .center)
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(bakerShop: bakerShops[0])
    }
}

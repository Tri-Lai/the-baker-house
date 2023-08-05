//
//  PhotoView.swift
//  the baker house
//
//  Created by Trí Lai on 01/08/2023.
//

import SwiftUI

struct FoodView: View {
    let food: Food
    
    var body: some View {
        Image(food.imageName)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
            .shadow(radius: 10, x: 10, y: 10)
    }
}

struct FoodView_Previews: PreviewProvider {
    static var previews: some View {
        FoodView(food: bakerShops[0].foods[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.secondary)
    }
}

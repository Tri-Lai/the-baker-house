//
//  PhotoView.swift
//  the baker house
//
//  Created by Trí Lai on 01/08/2023.
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

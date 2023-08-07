//
//  FoodTabView.swift
//  the baker house
//
//  Created by Trí Lai on 04/08/2023.
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

struct FoodTabView: View {
    var store: BakerShop
    
    var body: some View {
        TabView {
            ForEach(store.foods) { food in
                FoodView(food: food)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }
          .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FoodTabView_Previews: PreviewProvider {
    static var previews: some View {
        FoodTabView(store: bakerShops[0])
            .previewDevice("iPhone 14 Pro")
            .background(Color.gray)
    }
}

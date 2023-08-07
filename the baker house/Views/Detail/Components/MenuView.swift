//
//  MenuView.swift
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

struct MenuView: View {
    var store: BakerShop
    
    var body: some View {
        VStack {
            Text("Menu\n")
                .font(.title)
                .fontDesign(.serif)
                .fontWeight(.bold)
                .foregroundColor(Color("TLJ_logo"))
            
            FoodTabView(store: store)
                .frame(height: 250)
                .padding(.bottom, 20)
                .offset(y: -30)
        } // VStack
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(store: bakerShops[0])
    }
}

//
//  ShopCard.swift
//  the baker house
//
//  Created by Trí Lai on 28/07/2023.
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

struct ShopCard: View {
    let bakerShop: BakerShop
    
    // Binding variable to the parent view (List View)
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    // Current display mode variable (light/ dark)
    @Environment(\.colorScheme) var colorScheme
        
    // Custom back button
    var backButton : some View {
        // Dimiss the current view (Detailed View) to go back to parent view (List View)
        Button(action: { self.presentationMode.wrappedValue.dismiss()}) {
            HStack {
                Image(systemName: "arrowshape.turn.up.backward.fill")
                Spacer()
                Text("go back")
                    .font(.system(size: 18, weight: .medium))
            }
            // Custom adapt color to light and dark mode
            .foregroundColor(colorScheme == .light ? .black : .purple)
        }
    }
    
    var body: some View {
        let iconCategoryList = mapCategory(categories: bakerShop.category)

        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // -- Header --
                    ShopHeaderView(bakerShop: bakerShop)
              
                    // -- Content --
                    
                    // Category
                    HStack {
                        ForEach(0..<iconCategoryList.count, id: \.self) {
                            Image(iconCategoryList[$0])
                                .padding(10)
                                .background(Color.primary)
                                .clipShape(Circle())
                        }
                    }   // HStack
                    
                    // Breaker
                    Image("accent-horizontal-lines")
                        .frame(maxHeight: 100)
                    
                    DescriptionView(bakerShop: bakerShop)
                    
                    // Breaker
                    Image("accent-horizontal-lines")
                        .frame(maxHeight: 100)
                    
                    OpeningHoursView()
                    MenuView(store: bakerShop)
                    LocationView(bakerShop: bakerShop)
                    ContactView()
                    FooterView()
                    
                } // VStack (Header + content)
                .navigationTitle(Text("Tous les Jours"))
                .navigationBarTitleDisplayMode(.inline)
                .toolbar(.hidden, for: .navigationBar)
                
            } // ScrollView
            .edgesIgnoringSafeArea(.top)
            
        } // NavigationView
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: backButton)
    }
}

struct ShopCard_Previews: PreviewProvider {
    static var previews: some View {
        ShopCard(bakerShop: bakerShops[0])
    }
}

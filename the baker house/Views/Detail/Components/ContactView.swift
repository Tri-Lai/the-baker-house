//
//  ContactView.swift
//  the baker house
//
//  Created by Trí Lai on 03/08/2023.
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

struct ContactView: View {
    var body: some View {
        VStack {
            HStack {
                Button {
                    
                } label: {
                    Image("facebook")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                }
                
                Button {
                    
                } label: {
                    Image("foody")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .clipShape(Circle())
                }
                
                Button {
                    
                } label: {
                    Image("shopee-food")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .clipShape(Circle())
                }
                    
                Button {
                    
                } label: {
                    Image(systemName: "phone.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .tint(.green)
                }
            } // HStack
        }
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}

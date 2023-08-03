//
//  ContactView.swift
//  the baker house
//
//  Created by Trí Lai on 03/08/2023.
//

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

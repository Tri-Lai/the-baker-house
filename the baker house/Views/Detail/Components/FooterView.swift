//
//  FooterView.swift
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

struct FooterView: View {
    var body: some View {
        Text("Copyright © 2023 The Baker House. \nAll rights reserved.")
            .foregroundColor(.gray)
            .font(.footnote)
            .multilineTextAlignment(.center)
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
    }
}

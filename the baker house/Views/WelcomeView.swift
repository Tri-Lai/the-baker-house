//
//  WelcomeView.swift
//  the baker house
//
//  Created by Trí Lai on 05/08/2023.
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

struct WelcomeView: View {
    @State var isWelcomeActive: Bool = true

    var body: some View {
        ZStack {
            if isWelcomeActive {
                OnboardingView(active: $isWelcomeActive)
            } else {
                ShopList()
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

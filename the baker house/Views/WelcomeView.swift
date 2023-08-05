//
//  WelcomeView.swift
//  the baker house
//
//  Created by Trí Lai on 05/08/2023.
//

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

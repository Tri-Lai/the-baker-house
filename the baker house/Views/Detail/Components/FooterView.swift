//
//  FooterView.swift
//  the baker house
//
//  Created by Trí Lai on 03/08/2023.
//

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

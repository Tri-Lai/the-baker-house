//
//  CardModifier.swift
//  the baker house
//
//  Created by Trí Lai on 28/07/2023.
//
//  CardModifier organises the contents inside a uniform card layout.

import Foundation
import SwiftUI

struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)
    }
}

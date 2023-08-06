//
//  the_baker_houseApp.swift
//  the baker house
//
//  Created by Trí Lai on 28/07/2023.
//

import SwiftUI

@main
struct the_baker_houseApp: App {
    @AppStorage("isDarkMode") private var isDarkMode = false

    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}

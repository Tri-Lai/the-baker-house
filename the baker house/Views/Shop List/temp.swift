//
//  temp.swift
//  the baker house
//
//  Created by Trí Lai on 06/08/2023.
//

import SwiftUI

struct temp: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    var body: some View  {
         NavigationView {
            List{
               HStack{
                     Toggle("Dark Mode", isOn: $isDarkMode)
                   }
             }
        }
    }
}

struct temp_Previews: PreviewProvider {
    static var previews: some View {
        temp()
    }
}

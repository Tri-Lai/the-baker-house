//
//  OpeningHoursView.swift
//  the baker house
//
//  Created by Trí Lai on 01/08/2023.
//

import SwiftUI

struct OpeningHoursView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "clock.fill")
                Text("Opening hours")
                    .font(.title2)
                    .fontDesign(.serif)
            }
            
            VStack(spacing: 12) {
                HStack {
                    Text("Monday\t\t")
                    Text("6:30 AM - 9:30 PM")
                }
                
                HStack {
                    Text("Tuesday\t\t")
                    Text("6:30 AM - 9:30 PM")
                }
                
                HStack {
                    Text("Wednesday\t")
                    Text("6:30 AM - 9:30 PM")
                }
                
                HStack {
                    Text("Thursday\t\t")
                    Text("6:30 AM - 9:30 PM")
                }
                
                HStack {
                    Text("Friday\t\t\t")
                    Text("6:30 AM - 9:30 PM")
                }
                
                HStack {
                    Text("Saturday\t\t")
                    Text("6:30 AM - 9:30 PM")
                }
                
                HStack {
                    Text("Sunday\t\t")
                    Text("6:30 AM - 9:30 PM")
                }
            }
            .foregroundColor(.white)
            .font(.system(size: 18, weight: .thin, design: .serif))
            .lineSpacing(5)
            .padding(30)
            .background(Color("TLJ_logo"))
            .clipShape(Rectangle())
            .cornerRadius(20)
        }
    }
}

struct OpeningHoursView_Previews: PreviewProvider {
    static var previews: some View {
        OpeningHoursView()
    }
}
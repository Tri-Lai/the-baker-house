//
//  OpeningHoursView.swift
//  the baker house
//
//  Created by Trí Lai on 01/08/2023.
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

struct OpeningHoursView: View {
    // Adapt to the display mode (light and dark)
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "clock.fill")
                Text("Opening hours")
                    .font(.title2)
                    .fontDesign(.serif)
            } // HStack
            
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
            } // VStack (date-time)
            .font(.system(size: 18, weight: .thin, design: .serif))
            .lineSpacing(5)
            .padding(30)
            .background(Color("TLJ_logo"))
            .clipShape(Rectangle())
            .cornerRadius(20)
            .foregroundColor(colorScheme == .dark ? ColorConstants.VAMPIRE_BLACK : Color.white)
        } // VStack (schedule)
    }
}

struct OpeningHoursView_Previews: PreviewProvider {
    static var previews: some View {
        OpeningHoursView()
    }
}

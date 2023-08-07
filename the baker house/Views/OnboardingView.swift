//
//  OnboardingView.swift
//  the baker house
//
//  Created by Trí Lai on 05/08/2023.
//

import SwiftUI

struct OnboardingView: View {
    @Binding var active: Bool
    @State private var showAlert: Bool = false

    var body: some View {
        ZStack {
            // Wallpaper
            Image("wallpaper")
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .opacity(0.4)
            
            VStack(spacing: 20) {
                
                // Alert button
                HStack {
                    Spacer()
                    Button {
                        showAlert = true
                    } label: {
                        Label("", systemImage: "info.circle")
                            .padding(.trailing)
                            .tint(.primary)
                    }
                    .alert("Assignment 1", isPresented: $showAlert) {
                        Button("Got it", role: .cancel) {}
                    } message: {
                        Text("The Baker House is made by Lai Nghiep Tri (3799602) as the assignment of the course iOS Development (COSC2659)")
                    }
                }
                
                Spacer()
                
                // App logo and Slogan
                VStack(spacing: 0) {
                    Text("_\nThe\nBaker\nHouse")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.primary)

                        
                    Text("""
                    Tasty is EVERYWHERE
                    """)
                    .font(.title3)
                    .fontWeight(.regular)
                    .foregroundColor(.primary)
                    .multilineTextAlignment(.center)
                    .padding(.top)
                } // VStack
                
                Spacer()
                
                // Page transition button
                Button(action: {
                    active = false
                }, label: {
                    Capsule()
                      .padding()
                      .frame(width:300 ,height:80)
                      .overlay(Text("Let's Explore")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.primary))
                })
            }  // VStack
        } // ZStack
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(active: .constant(true))
    }
}

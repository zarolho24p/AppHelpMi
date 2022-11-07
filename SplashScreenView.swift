//
//  SplashScreenView.swift
//  AppHelpMi
//
//  Created by mafiosa on 02/11/2022.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            Atterissage()
        } else {
            ZStack() {
                HStack(spacing: 0) {
                    Text("help'm".uppercased())
                    Image(systemName: "figure.wave")
                }
                .padding()
                .foregroundColor(Color.blue)
                .font(.custom("Chalkduster", size: 70, relativeTo: .largeTitle))
                .imageScale(.large)
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear {
                withAnimation(.easeIn(duration: 2.2)) {
                    self.size = 0.9
                    self.opacity = 1.0
                }
                
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
            
        }
        
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}

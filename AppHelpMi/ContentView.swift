//
//  ContentView.swift
//  AppHelpMi
//
//  Created by mafiosa on 27/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack() {
            HStack(spacing: 0) {
                Text("Help'M".uppercased())
                Image(systemName: "figure.wave")
            }
            .padding()
            .foregroundColor(Color.blue)
            .font(.custom("Chalkduster", size: 45, relativeTo: .largeTitle))
            .imageScale(.large)
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

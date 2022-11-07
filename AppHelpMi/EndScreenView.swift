//
//  EndScreenView.swift
//  Help'Mi
//
//  Created by mafiosa on 03/11/2022.
//

import SwiftUI

struct EndScreenView: View {
   
    @Binding var apparait: Bool
    var body: some View {
        VStack {
            Text("votre est bien programmer pour le de à et sera effectuer par ".uppercased())
                .multilineTextAlignment(.center)
                .padding()
                .foregroundColor(.blue)
                .font(.custom("chalkduster", size: 42, relativeTo: .largeTitle))
            Button (action: { self.apparait = false}) {
                Text("t")
            }
            }
    }
}

struct EndScreenView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            EndScreenView(apparait: .constant(false))
              
        }
    }
}

//
//  ConfirmationView.swift
//  Help'Mi
//
//  Created by mafiosa on 03/11/2022.
//

import SwiftUI

struct ConfirmationView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    @Binding var apparait: Bool
    var profil: PropProfil
    var body: some View {
        if isActive {
            Atterissage()
        } else {
            ZStack() {
                VStack() {
                    Text("votre intervention a bien été programmer pour le ../.. de ..h à ..h et sera effectuer par \(profil.prenom)".uppercased())
                    Image(systemName: "hand.thumbsup.fill")
                        .padding()
                        .font(.system(size: 60))
                }
                .padding()
                .imageScale(.large)
                .foregroundColor(Color.blue)
                .font(.custom("Chalkduster", size: 41, relativeTo: .largeTitle))
                .multilineTextAlignment(.center)
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
                DispatchQueue.main.asyncAfter(deadline: .now() + 6.0) {
                    self.apparait = false
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack(spacing: 0) {
                        Text("Help'm".uppercased())
                        Image(systemName: "figure.wave")
                    }
                    .foregroundColor(.blue)
                    .font(.custom("chalkduster", size: 20, relativeTo: .largeTitle))
                }
               
            }        }
    }
}

struct ConfirmationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ConfirmationView(apparait: .constant(false), profil: PropProfil(photo: "", prenom: "", age: 12))
        }
    }
}

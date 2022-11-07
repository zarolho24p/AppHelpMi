//
//  ProfilDetails.swift
//  AppHelpMi
//
//  Created by mafiosa on 31/10/2022.
//

import SwiftUI

struct ProfilDetails: View {
    var profil: PropProfil
    @State var AlerteValidation: Bool = false
    @State var isFinished: Bool = false
    @Binding var apparait: Bool
    var body: some View {
        if isFinished {
            ConfirmationView(apparait: $apparait, profil: profil)
        } else {
        ZStack {
            VStack {
                Image(profil.photo)
                    .resizable()
                    .renderingMode(.original)
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(height: 150)
                Text(profil.prenom)
                    .font(.custom("chalkduster", size: 25, relativeTo: .largeTitle))
                Text("\(profil.age) ans")
                    .font(.custom("chalkduster", size: 25, relativeTo: .largeTitle))
                    .padding(.bottom)
                Text("Presentation de la personne avec les informations renseignées lors de l'inscription (métier service accepté etc...)")
                    .frame(height: 100)
                    .padding()
                
                Spacer()
                Button(action: {
                    self.AlerteValidation = true
                }, label: {
                    Text("Choisir cet intervenant")
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal, 70)
                    .background(Color.blue .cornerRadius(10))            })
                .alert(isPresented:$AlerteValidation) {
                    Alert(
                        title: Text("Faire appel à \(profil.prenom) pour cette prestation ?"),
                        message: Text(""),
                        primaryButton: Alert.Button.default(Text("Oui, faire appel à \(profil.prenom)")) {
                            isFinished = true
                        },
                        secondaryButton: .destructive(Text("Annuler"))
                    )
                }
            }
        }
 
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack(spacing: 0) {
                    Text("Help'm".uppercased())
                    Image(systemName: "figure.wave")
                }
                .foregroundColor(.blue)
                .font(.custom("chalkduster", size: 20, relativeTo: .largeTitle))
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink {
                    Text("Hello menu")
                } label: {
                    Image(systemName: "text.justify")
                }
       
            }
        }
    }
    }
}


struct ProfilDetails_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProfilDetails(profil: PropProfil(photo: "photoAmelia", prenom: "prenom", age: 20), apparait: .constant(false))
        }
    }
}

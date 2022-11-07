//
//  Proposition.swift
//  AppHelpMi
//
//  Created by mafiosa on 28/10/2022.
//

import SwiftUI

struct Proposition: View {
//    var profil: PropProfil
    var tableauProfil = [
        PropProfil(photo: "photoEmma", prenom: "Emma", age: 21),
        PropProfil(photo: "photoNichole", prenom: "Nichole", age: 25),
        PropProfil(photo: "photoRachel", prenom: "Rachel", age: 24)
    ]
    @Binding var apparait: Bool
    var body: some View {
        List {
            HStack {
                Spacer()
                Text("Profils".uppercased())
                    .foregroundColor(.blue)
                .font(.custom("Chalkduster", size: 30, relativeTo: .largeTitle))
                Spacer()
            }
            
            ForEach(tableauProfil) { profil in
                NavigationLink(destination: ProfilDetails(profil: profil, apparait: $apparait)) {
                    ProfilCell(profil: profil)
                }
            }
        }
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.inline)
        
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
       
            }        }
    }
}

struct Proposition_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
//            Proposition(profil: PropProfil(photo: "ProfilOne", prenom: "nomProfilOne", age: 23))
            Proposition(apparait: .constant(false))
        }
    }
}


struct PropProfil: Identifiable {
    var id = UUID()
    var photo: String
    let prenom: String
    var age: Int
}


struct ProfilCell: View {
    let profil: PropProfil
    
    var body: some View {
        HStack {
            Image(profil.photo)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .clipShape(Circle())
            
            
            VStack(alignment:.leading) {
                Text(profil.prenom)
                
                Text("\(profil.age) ans")
                    .foregroundColor(.blue)
            }
        }
    }
}

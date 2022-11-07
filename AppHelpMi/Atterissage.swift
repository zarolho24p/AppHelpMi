//
//  Atterissage.swift
//  AppHelpMi
//
//  Created by mafiosa on 27/10/2022.
//

import SwiftUI

struct Atterissage: View {
    @State var isActive = false
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(isActive: self.$isActive) {
                    PlanifierView(retourIsActive: self.$isActive)
                } label: {
                    VStack(spacing: 30) {
                    Text("Programmer une intervention".uppercased())
                            .padding()
                    Image(systemName: "calendar.badge.plus")
                        .font(.system(size: 100))
                    }
                }

                  
                }
                .foregroundColor(Color.blue)
                .font(.custom("chalkduster", size: 35, relativeTo: .largeTitle))
                .navigationTitle("")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarBackButtonHidden(true)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        HStack(spacing: 0) {
                            Text("Help'M".uppercased())
                            Image(systemName: "figure.wave")
                        }
                        .padding()
                        .foregroundColor(.blue)
                        .font(.custom("chalkduster", size: 20, relativeTo: .largeTitle))
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink {
                            Text("Hello menu")
                        } label: {
                            Image(systemName: "text.justify")
                        }
               
                    }                }
            }
        }
//    }
}
    
    struct Atterissage_Previews: PreviewProvider {
        static var previews: some View {
                Atterissage()
        }
    }

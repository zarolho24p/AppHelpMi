//
//  PlanifierView.swift
//  AppHelpMi
//
//  Created by mafiosa on 27/10/2022.
//

import SwiftUI

struct PlanifierView: View {
    @State var isOn = true
    @State var isOnT = true
    @State var isOnTh = true
    @State private var debut = Date()
    @State private var fin = Date()
    @Binding var retourIsActive: Bool
    var body: some View {
        VStack {
            List {
                Toggle(isOn: $isOn) {
                    HStack {
                        Image(systemName:"cart.badge.plus")
                        Text("Course")
                    }
                }
                Toggle(isOn: $isOnT) {
                    HStack {
                        Image(systemName:"trash")
                        Text("Nettoyage")
                    }
                }
                Toggle(isOn: $isOnTh) {
                    HStack {
                        Image(systemName:"figure.walk")
                        Text("Deplacement")
                    }
                }
                HStack {
                    DatePicker("Début", selection: $debut, in: Date()...)
                }
                .padding(.top, 30)
                HStack {
                    DatePicker("Fin", selection: $fin, in: Date()...)
                }
                .padding(.bottom, 30)
            }
            NavigationLink(destination:
                            Proposition(apparait: self.$retourIsActive)) {
                Text("Validez".uppercased())
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal, 70)
                .background(Color.blue .cornerRadius(10))
            }
            // destination : nom de la page
            // label
//                Text("Validez".uppercased())
//                    .font(.headline)
//                    .foregroundColor(.white)
//                    .padding()
//                    .padding(.horizontal, 70)
//                    .background(Color.blue .cornerRadius(10))
//            Button(action: {
//                
//            }, label: {
//                
//            })
        
        }
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.inline)
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
       
            }        }
    }
}
    
    struct PlanifierView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                PlanifierView(retourIsActive: .constant(false))
            }
        }
    }

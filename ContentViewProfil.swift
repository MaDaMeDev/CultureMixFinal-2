//
//  ContentView.swift
//  Culture Mix Profil
//
//  Created by Yacine on 29/01/2020.
//  Copyright © 2020 Yacine. All rights reserved.
//

import SwiftUI


struct ProfilView: View {
    
    var eventprofil: Event
    
    var body: some View {
        
        ScrollView {
            
            
            VStack(spacing: 20){
                Image(eventprofil.avatarprofil)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 180, height: 180)
                    .clipShape(Circle())
                Text(eventprofil.name)
                    .font(.largeTitle)
                    
                    .frame(height: 40)
                Text("Age: \(eventprofil.age)")
                    .font(.title)
                    
                    .frame(height: 20)
                Text("Pays: \(eventprofil.paysOrigins)")
                    .font(.title)
                    
                    .frame(height: 20)
                Text("Origine: \(eventprofil.pays)")
                    .font(.title)
                /*
                 Button (action:{}, label: NavigationLink(destination: ContentViewPrive()) {
                 Text("Voir profil")
                 .frame(width: 150) .padding().background(Color.blue).foregroundColor(Color.white)
                 .cornerRadius(10)
                 .shadow(color: Color.blue, radius: 10, x: 3, y: 3)
                 .offset(y: 30)
                 })
                 */
                
                NavigationLink(destination: PriveView(homeConversationPriveList: eventprofil)) {
                    Text("Discuter")
                }
                .frame(width: 150) .padding().background(Color.blue).foregroundColor(Color.white)
                .cornerRadius(10)
                .shadow(color: Color.blue, radius: 10, x: 3, y: 3)
                .offset(y: 30)
            }.padding()
            Spacer()
                .frame(height: 40)
            
            HStack {
                Text("Evenement à venir :")
                    .fontWeight(.medium)
                Spacer()
            }.padding()
            
            
            
            ScrollView(.horizontal, showsIndicators: true) {
                
                HStack(spacing: 20) {
                    
                    VStack {
                        Image(eventprofil.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .padding()
                        
                        Text(eventprofil.eventName)
                            .background(Color.black)
                        
                        
                    }
                    .border(Color.black, width: 3)
                    .foregroundColor(Color.white)
                    
                    
                    
                    
                    VStack {
                        Image("ratatouille")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .padding()
                            .clipped()
                        
                        Text("Ratatouille")
                            .background(Color.black)
                            .foregroundColor(Color.white)
                        
                        
                    }
                    .border(Color.black, width: 3)
                    
                    
                    
                    VStack {
                        Image("bouillabaisse")
                            
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .padding()
                            .clipped()
                        Text("Bouillabaisse")
                            .background(Color.black)
                    }
                    .border(Color.black, width: 3)
                    .foregroundColor(Color.white)
                }
                
            }
            
            HStack {
                Text("Evenement passé :")
                    .fontWeight(.medium)
                Spacer()
            }.padding()
            
            
            
            ScrollView(.horizontal, showsIndicators: true) {
                
                
                HStack(spacing: 20) {
                    
                    VStack {
                        Image("tieb")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .padding()
                            .clipped()
                        Text("Tieéboudiéne")
                            .background(Color.black)
                    }
                    .border(Color.black, width: 3)
                    .foregroundColor(Color.white)
                    
                    VStack {
                        Image("mafé")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .padding()
                        Text("Mafé")
                            .background(Color.black)
                    }
                    .border(Color.black, width: 3)
                    .foregroundColor(Color.white)
                    
                    VStack {
                        Image("attieke")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .padding()
                            .clipped()
                        Text("Attieké")
                            .background(Color.black)
                    }
                    .border(Color.black, width: 3)
                    .foregroundColor(Color.white)
                    
                }
                
            }
                
            .navigationBarTitle("Profil", displayMode: .inline)
        
                
            .tabItem { Image(systemName: "house.fill")
            }
        }
    }
}
struct ProfilView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilView(eventprofil: Event(eventName: "La Feijoada", dateEvents: "07/04/2020", imageName: "feijoada", imageFlag:"flag-for-brazil_1f1e7-1f1f7", placeEvents:"Bondy", storyfood: "La feijoada est considérée comme un pur produit de l’histoire du Brésil, un brassage des cultures culinaires européennes, africaines et amérindiennes. Cette recette est née chez les esclaves, ceux-ci n’avaient accès qu’aux bas de morceaux du porc : oreilles, pieds, museaux.", recettefood: "La veille, mettez les haricots à tremper dans l’eau froide. Rincez les viandes demi-sel. Mettez-les dans un grand récipient, ajoutez la palette et couvrez d’eau froide. Laissez dessaler 12 heures en renouvelant l’eau plusieurs fois.", url: "https://www.youtube.com/embed/08dmssibYyk", avatarprofil: "roro", name: "Ronaldo Moreira", pays: "Brésil", age: "43 ans", paysOrigins: "Bresil", nbPlaces: "2 places restantes"))
    }
}

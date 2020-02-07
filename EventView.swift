//
//  EventView.swift
//  CulturmixMessage
//
//  Created by angelo DA COSTA on 29/01/2020.
//  Copyright © 2020 DA COSTA. All rights reserved.
//

import SwiftUI

struct Message {
    var texte: String
    var utilisateur: String
    var time: Date
    
}


struct EventView: View {
    
    
    var homeConversationList: Event

    
    
    
    init(homeConversationList: Event) {
       UITableView.appearance().tableFooterView = UIView()
        UITableView.appearance().separatorStyle = .none
        self.homeConversationList = homeConversationList
    }
     
    var body: some View {
        
            
            VStack {
                
                //UITableView.appearance().separatorColor = .clear
                
                List {
                   
                    
                    
                    HStack(alignment: .bottom) {
                        Spacer()
                        Text("Salut, \(homeConversationList.eventName) de prévu ce vendredi 31 Janvier 2020")
                            .padding(20)
                            
                            .background(Color.gray.opacity(0.5))
                            
                           .cornerRadius(30)
                            .shadow(radius: 10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.white, lineWidth: 1)
                        )
                            
                       
                        
                     ZStack() {
                            
                        Image(homeConversationList.imageName)
                                
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .clipShape(Circle())
                                
                                .overlay(
                                    Circle().stroke(Color.white, lineWidth: 1))
                                .frame(width: 60.0, height: 60.0, alignment: .bottom)
                                .shadow(radius: 1.0)
                           .padding(.leading)
                        }
                    }.padding(5)
                        
                        HStack(alignment: .bottom) {
                                
                               Image("SanGoku")
                                   .resizable()
                                   .aspectRatio(contentMode: .fill)
                                   .clipShape(Circle())
                                   .overlay(
                                       Circle().stroke(Color.white, lineWidth: 1))
                                   .frame(width: 60, height: 60.0, alignment: .bottom)
                                   .shadow(radius: 1.0)
                               .padding(.trailing)
                                      
                               Text("C'est genial 😁.")
                                   .padding(20)
                                   
                                   .overlay(
                                       RoundedRectangle(cornerRadius: 30)
                                           .stroke(Color.white, lineWidth: 1)
                                   )
                                   .background(Color.white.opacity(0.5))
                                   
                                   .cornerRadius(30)
                                   
                                   .shadow(radius: 10)
                                   
                               Spacer()
                           }.padding(5)
            
                            
            HStack(alignment: .bottom) {
                                    
                                   Image("oxia")
                                       .resizable()
                                       .aspectRatio(contentMode: .fill)
                                       .clipShape(Circle())
                                       .overlay(
                                           Circle().stroke(Color.white, lineWidth: 1))
                                       .frame(width: 60, height: 60.0, alignment: .bottom)
                                       .shadow(radius: 1.0)
                                    .padding(.trailing)
                                   
                                   
                                   Text("ok 👍🏿.")
                                       .padding(20)
                                       
                                       .overlay(
                                           RoundedRectangle(cornerRadius: 30)
                                               .stroke(Color.white, lineWidth: 1)
                                       )
                                       .background(Color.white.opacity(0.5))
                                       
                                       .cornerRadius(30)
                                       
                                       .shadow(radius: 10)
                                       
                                   Spacer()
                               }.padding(5)

                            
                            
                            
                .navigationBarTitle(Text(homeConversationList.eventName),
                                            displayMode: .inline)
                    
                }
                
                
                
                    
                
                
                HStack {
                                           
                               Image(systemName: "camera")
                                   .padding()
                                   .opacity(0.7)
                                   
                               
                               TextField("Message", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                               .foregroundColor(Color.red)
                               .opacity(0.7)
                               
                          
                           }.frame(height: 40.0)
                                .background(Color.gray.opacity(0.2).cornerRadius(10))
                                .padding(20)
              
                         }
    
        
    }
}


struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView(homeConversationList: Event(eventName: "Panzerotti", dateEvents: "09/04/2020", imageName: "Panzerotti",
        imageFlag:"flag-for-italy_1f1ee-1f1f9",
        placeEvents:"Paris 15e", storyfood: "Les panzerotti sont une spécialité des Pouilles, qui fait partie des recettes traditionnelles et pauvres de cette région. Il s’agit de demie-lunes de pâte fourrées avec de la mozzarella et de la tomate. ", recettefood: "Mélanger la farine, le sel et la levure de boulanger avec l’eau tiède et bien pétrir la pâte à pain. La laisser lever pendant 1 heure environ (un peu plus s’il fait froid).Dans une passoire, couper en dés la mozzarella et les tomates et y ajouter un peu de sel, d’huile et des câpres.Étendre la pâte avec un rouleau en disques plutôt fins (environ 15 cm de diamètre). Poser la farce sur une moitié du disque et les fermer en demi-lunes, en faisant bien coller les bords.", url: "https://www.youtube.com/embed/Mqf_bA221-4", avatarprofil: "Alessandro Del Piero", name: "Alessandro Del Piero", pays: "Italie", age: "29 ans", paysOrigins: "France", nbPlaces: "2 places restantes"))
    }
}

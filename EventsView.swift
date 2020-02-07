//
//  ContentView.swift
//  CulturMixPageEvent
//
//  Created by Elodie Skotnicki on 29/01/2020.
//  Copyright © 2020 Elodie Skotnicki. All rights reserved.
//

import SwiftUI
import WebKit

struct EventsView: View {
    
    @State private  var popUpAlert = false
    
    var event: Event
    
    /*List(events) { event in
     
     NavigationLink(destination: EventsView(event: event)) {
     ExtractedView(eventVAr: event)*/
    
    var body: some View {
        
        ScrollView {
            VStack {
                
                
                VStack {
                    
                    
                    Image(event.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    
                    
                    
                    
                    HStack(){
                        VStack {
                            Image(event.avatarprofil)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 100)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.white, lineWidth: 5))
                            Text(event.name)
                            NavigationLink (destination: ProfilView(eventprofil: event))
                            {
                                
                                Text("Voir profil")
                                    .font(.body)
                                    .foregroundColor(Color.blue)
                            }
                            Spacer()
                            
                            
                        }.offset( y:-50)
                            .padding(.leading, 30)
                        
                        Spacer()
                        VStack(alignment: .center) {
                            Text(event.dateEvents)
                            Text(event.placeEvents)
                            .bold()
                            Text(event.nbPlaces)
                            .foregroundColor(Color.green)
                            .padding(10)
                                
                        }.padding(.trailing, 100)
                    }
                    ZStack {
                        
                        Rectangle()
                            .foregroundColor(.gray)
                            .opacity(0.6)
                            .frame(width: 450, height: 50.0)
                        Text("Histoire du plat")
                        
                        
                        
                    }
                    .padding(.bottom)
                    
                    
                    HStack{
                        Image(event.imageFlag)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width:100)
                            .aspectRatio(contentMode: .fit)
                            .clipShape(Circle())
                        
                        Text(event.pays)
                            .font(.largeTitle)
                        
                        
                        
                        
                        
                        
                    }.padding(.trailing)
                    
                    
                    
                    
                    
                    
                    VStack{
                        
                        Text(event.storyfood)
                            .multilineTextAlignment(.center)
                        
                        
                        
                        
                    }  .padding()
                        
                        
                        
                        .padding([.leading, .bottom, .trailing])
                    
                    
                    
                    ZStack {
                        
                        Rectangle()
                            .foregroundColor(.gray)
                            .opacity(0.6)
                            .frame(width: 450, height: 50.0)
                        Text("Recette")
                        
                        
                        
                    }
                    
                    
                    VStack{
                        
                        Text(event.recettefood)
                            .multilineTextAlignment(.center)
                            .padding(.all)
                        
                    } .padding()
                    
                    VStack{
                        
                        Webview(url: event.url)
                            
                            .frame(width:370,height: 300) .padding(.horizontal, 20.0).border(Color.white, width: 4)
                        
                        VStack{
                            
                            Button(action: {
                                self.popUpAlert = true
                            }) {
                                Text("Rejoindre")
                            }
                            .alert(isPresented: $popUpAlert) {

                                Alert(title: Text("Felicitation"), message: Text("vous avez rejoint '\(event.eventName)' "), dismissButton: .default(Text("Ok")))
                               /*Alert(title: Text(event.eventName), message: Text("Voulez-vous rejoindre l'événement ?"), primaryButton: Alert.Button.default(Text("Rejoindre"), action: {
                                    
                                    EventView(homeConversationList: self.event)
                                    
                                    
                                }), secondaryButton: Alert.Button.cancel(Text("Annuler")))*/
                                
                            }.frame(width: 150) .padding().background(Color.blue).foregroundColor(Color.white)
                                .cornerRadius(10)
                                .shadow(color: Color.blue, radius: 10, x: 3, y: 3)
                                .offset(y: 30)
                                .padding(.bottom, 50)
                            /*NavigationLink(destination: EventView(homeConversationList: event)) {
                             Text("Rejoindre")
                             .font(.headline)
                             }
                             .frame(width: 150) .padding().background(Color.blue).foregroundColor(Color.white)
                             .cornerRadius(10)
                             .shadow(color: Color.blue, radius: 10, x: 3, y: 3)
                             .offset(y: 30)
                             .padding(.bottom, 50)
                             */
                            
                        }
                        .padding(.top, 20.0)
                        
                    }
                    
                    
                }
                
            }
            
        }
            
            
        .navigationBarTitle(Text(event.eventName),
                            displayMode: .inline)
        
    }
}

struct EventsView_Previews: PreviewProvider {
    static var previews: some View {
        
        EventsView(event: Event(eventName: "Mafe", dateEvents: "08/04/2020", imageName: "Mafe-1", imageFlag: "flag-for-senegal_1f1f8-1f1f3", placeEvents: "Montreuil", storyfood: "Le Mafé est un des plats traditionnels les plus connus du continent Africain.D’origine malienne, il s’agit d’une sauce à base de pâte d’arachide mijotée longuement, parfois avec quelques légumes, le plus souvent avec de la viande.", recettefood:"Mettre à chauffer l’huile dans une cocotte et faire dorer la viande coupée en morceaux, ajouter un oignon et une gousse d’ail (coupée en fins morceaux). Saler,Laisser mijoter 2 minutes puis verser le concentré de tomate délayé dans un peu d’eau et laisser mijoter encore un peu.Incorporer 1 litre et demi d’eau et porter l’ensemble à ébullition.Piler un oignon et une gousse d’ail, un peu de piment en poudre et du poivre puis ajouter la pâte d’arachide délayée dans un peu d’eau.Laisser cuire 30 minutes.", url:"https:www.youtube.com/embed/MiS5vNB_y-U", avatarprofil: "africain", name: "mamadou", pays: "Sénegal", age: "22", paysOrigins: "France", nbPlaces: "2 places restantes"))
    }
}






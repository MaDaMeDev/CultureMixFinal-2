//
//  PriveView.swift
//  CulturmixMessage
//
//  Created by angelo DA COSTA on 31/01/2020.
//  Copyright © 2020 DA COSTA. All rights reserved.
//

import SwiftUI

struct PriveView: View {
    
    var homeConversationPriveList: Event
    
    
    init(homeConversationPriveList: Event) {
        UITableView.appearance().tableFooterView = UIView()
        UITableView.appearance().separatorStyle = .none
        self.homeConversationPriveList = homeConversationPriveList
    }
    
    
    var body: some View {
        
        
        
       
            
            VStack {
                
                //UITableView.appearance().separatorColor = .clear
                
                List {
                    
                    
                    
                    HStack(alignment: .bottom) {
                        Spacer()
                        
                        Text("salut, comment vas-tu ?")
                            .foregroundColor(Color.white)
                            .padding(20)
                            
                            .background(Color.gray.opacity(0.5))
                            
                            .cornerRadius(30)
                            .shadow(radius: 10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color.white, lineWidth: 1)
                                
                        )
                        
                       
                        
                       
                        /*ZStack() {
                            
                            Image(homeConversationPriveList.avatarImgPrive)
                                
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .clipShape(Circle())
                                
                                .overlay(
                                    Circle().stroke(Color.white, lineWidth: 1))
                                .frame(width: 60.0, height: 60.0, alignment: .bottom)
                                .shadow(radius: 1.0)
                        }*/
                        
                    }.padding(5)
                    
                    HStack(alignment: .bottom) {
                        
                        Image(homeConversationPriveList.avatarprofil)
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                                .clipShape(Circle())
                                                .overlay(
                                                    Circle().stroke(Color.white, lineWidth: 1))
                                                .frame(width: 50, height: 50, alignment: .bottom)
                                                .shadow(radius: 1.0)
                                                .padding(.trailing)
                                         
                        
                        Text("😎")
                            
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
                        
                        Image(homeConversationPriveList.avatarprofil)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .clipShape(Circle())
                            .overlay(
                                Circle().stroke(Color.white, lineWidth: 1))
                            .frame(width: 50, height: 50, alignment: .bottom)
                            .shadow(radius: 1.0)
                            .padding(.trailing)
                            
                        
                        
                        
                        Text("Salut")
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
                        .navigationBarTitle(Text(homeConversationPriveList.name),
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

struct PriveView_Previews: PreviewProvider {
    static var previews: some View {
        
        PriveView(homeConversationPriveList: Event(eventName: "La Feijoada", dateEvents: "07/04/2020", imageName: "feijoada", imageFlag:"flag-for-brazil_1f1e7-1f1f7", placeEvents:"Bondy", storyfood: "La feijoada est considérée comme un pur produit de l’histoire du Brésil, un brassage des cultures culinaires européennes, africaines et amérindiennes. Cette recette est née chez les esclaves, ceux-ci n’avaient accès qu’aux bas de morceaux du porc : oreilles, pieds, museaux.", recettefood: "La veille, mettez les haricots à tremper dans l’eau froide. Rincez les viandes demi-sel. Mettez-les dans un grand récipient, ajoutez la palette et couvrez d’eau froide. Laissez dessaler 12 heures en renouvelant l’eau plusieurs fois.", url: "https://www.youtube.com/embed/08dmssibYyk", avatarprofil: "roro", name: "Ronaldo Moreira", pays: "Brésil", age: "43 ans", paysOrigins: "Bresil", nbPlaces: "2 places restantes"))
    }
}

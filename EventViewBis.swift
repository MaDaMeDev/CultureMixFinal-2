
//
//  EventView.swift
//  CulturmixMessage
//
//  Created by angelo DA COSTA on 29/01/2020.
//  Copyright © 2020 DA COSTA. All rights reserved.
//

import SwiftUI




struct EventViewBis: View {
    
    
    var homeConversationList: homeConversationList

    
    
    
    init(homeConversationList: homeConversationList) {
       UITableView.appearance().tableFooterView = UIView()
        UITableView.appearance().separatorStyle = .none
        self.homeConversationList = homeConversationList
    }
     
    var body: some View {
        NavigationView() {
            
            VStack {
                
                //UITableView.appearance().separatorColor = .clear
                
                List {
                   
                    
                    
                    HStack(alignment: .bottom) {
                        Spacer()
                        Text(homeConversationList.messageTxt)
                            .padding(20)
                            
                            .background(Color.blue)
                            
                           .cornerRadius(30)
                            .shadow(radius: 10)
                            .foregroundColor(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.white, lineWidth: 1)
                        )
                            
                       
                        
                     ZStack() {
                            
                        Image(homeConversationList.avatarImg)
                                
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

                            
                            
                            
                .navigationBarTitle(Text(homeConversationList.fullName),
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
}


struct EventViewBis_Previews: PreviewProvider {
    static var previews: some View {
        EventViewBis(homeConversationList: homeConversationList(avatarImg: "angelo", fullName: "angelo", messageTxt: "salut"))
    }
}

//
//  ContentViewPrive.swift
//  CulturmixMessage
//
//  Created by angelo DA COSTA on 31/01/2020.
//  Copyright © 2020 DA COSTA. All rights reserved.
//

import SwiftUI

struct homeConversationPriveList: Identifiable {
    
    var id = UUID()
    var avatarImgPrive: String
    var fullNamePrive: String
    var messageTxtPrive: String
    
}
struct homeConversationList: Identifiable {
    
    var id = UUID()
    var avatarImg: String
    var fullName: String
    var messageTxt: String
    
}
struct ContentViewPrive: View {
    
    init() {
        UITableView.appearance().tableFooterView = UIView()
        UITableView.appearance().separatorStyle = .singleLine
    }
    
    @State private var selectorIndex = 0
//    @State private var section = ["Event","Prive"]
    
    var homeConversationPriveLists: [homeConversationPriveList] = [
        homeConversationPriveList(avatarImgPrive: "angelo", fullNamePrive: "Apple", messageTxtPrive: "salut"),
        homeConversationPriveList(avatarImgPrive: "simplon", fullNamePrive: "Simplon", messageTxtPrive: "Salut"),
        homeConversationPriveList(avatarImgPrive: "roro", fullNamePrive: "Ronaldo Moreira", messageTxtPrive: "Salut")
    ]
    
    var homeConversationLists: [homeConversationList] = [
        
        homeConversationList(avatarImg: "Mafe-1", fullName: "Mafe", messageTxt: "Salut, Mafe prévu vendredi 07 fevrier 2020, à 12h30 au 55 rue de vincennes, 93100 Montreuil"),
        homeConversationList(avatarImg: "burrata", fullName: "Burrata", messageTxt: "Salut, Burrata de prévu ce jeudi 31 Janvier 2020"),
         homeConversationList(avatarImg: "Rodizio", fullName: "Rodizio", messageTxt: "Salut, Rodizio de prévu Lundi 31 Janvier 2020")
     
        
    ]
    
    var body: some View {
            NavigationView() {
                VStack {
                    
                    
                    Picker(selection: $selectorIndex, label: Text("")) {
                        Text("Event").tag(0)
                        Text("Prive").tag(1)
//                        Text("\(selectorIndex)")
                    }   .pickerStyle(SegmentedPickerStyle())
                       .padding(.horizontal, 20)
                        .padding(.top, 30)
                        .padding(.bottom, -5)
                        
                    
                    
                    HStack {
                        
                        Image(systemName: "magnifyingglass")
                            .padding()
                            .opacity(0.7)
                        
                        
                        TextField("Recherche", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color.red)
                            .opacity(0.7)
                        
                    }.frame(height: 40.0)
                        .background(Color.gray.opacity(0.2).cornerRadius(CGFloat(10)))
                        .padding(20)
                        .padding(.bottom, -15)
                    
                    if selectorIndex == 1 {
                    
                    List(homeConversationPriveLists) { conversationListPrive in
                        
                        NavigationLink(destination: PriveViewBis(homeConversationPriveList: conversationListPrive)){
                            conversationListPriveView(conversationListPriveVar: conversationListPrive)
                        }
                        }
                    }
                    if selectorIndex == 0 {
                        List(homeConversationLists) { conversationList in
               NavigationLink(destination: EventViewBis(homeConversationList: conversationList))
               {
                   conversationListView(conversationListvar: conversationList)
               }
                    }
                    
                    }
                    
                    
                    }.navigationBarTitle(Text("Discussions"), displayMode: .inline)
                
                
            }
            .tabItem {
                Image(systemName: "message")
                Text("Chat")
        }
        
    }
}


struct ContentViewPrive_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewPrive()
    }
}


struct conversationListPriveView: View {
    
    var conversationListPriveVar: homeConversationPriveList
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 20) {
            Image(conversationListPriveVar.avatarImgPrive)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                
                .overlay(
                    Circle().stroke(Color.white, lineWidth: 1))
                .frame(width: 60.0, height: 60.0, alignment: .center)
                .shadow(radius: 5)
            
            
            
            VStack(alignment: .leading) {
                Text(conversationListPriveVar.fullNamePrive)
                    .bold()
                Text(conversationListPriveVar.messageTxtPrive)
                    .lineLimit(1)
                
            }
        }.padding()
    }
}
struct conversationListView: View {
    
    var conversationListvar: homeConversationList
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 20) {
            Image(conversationListvar.avatarImg)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                
                .overlay(
                    Circle().stroke(Color.white, lineWidth: 1))
                .frame(width: 60.0, height: 60.0, alignment: .center)
                .shadow(radius: 5)
            
            
            
            VStack(alignment: .leading) {
                Text(conversationListvar.fullName)
                    .bold()
                Text(conversationListvar.messageTxt)
                    .lineLimit(1)
                
            }
        }.padding()
    }
}

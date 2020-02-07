//
//  MonProfil.swift
//  Culture Mix Profil
//
//  Created by Yacine on 30/01/2020.
//  Copyright © 2020 Yacine. All rights reserved.
//

import SwiftUI
import UserNotifications
/*struct MonProfil: View {
 var body: some View {
 
 TabView {
 
 ProfilView()
 .tabItem { Image(systemName: "house.fill")
 }
 Text("")
 .tabItem { Image(systemName: "message")
 
 }
 
 Text("")
 .tabItem { Image(systemName: "person.circle")
 }
 }
 }
 }
 
 struct MonProfil_Previews: PreviewProvider {
 static var previews: some View {
 MonProfil()
 }
 }*/

struct MonProfil: View {
    
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                
                
                VStack(spacing:20){
                    Image("Zidane")
                        .resizable()
                        .frame(width: 180, height: 180)
                        .clipShape(Circle())
                    Text("Zinedine Zidane")
                        .font(.largeTitle)
                        
                        .frame(height: 40)
                    Text("Age: 47 ")
                        .font(.title)
                        
                        .frame(height: 20)
                    Text("Pays: France")
                        .font(.title)
                        
                        .frame(height: 20)
                    Text("Origine : Algérie")
                        .font(.title)
                    
                    
                   /* Button(action: {
                        
                       
                        
                    }) {
                        Text("Inviter")
                    }
                    .frame(width: 150) .padding().background(Color.blue).foregroundColor(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color.white, radius: 10, x: 3, y: 3)*/
                    
                    
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
                            Image("Zlabia")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 100)
                                .padding()
                            
                            Text("Zlabia")
                                .background(Color.black)
                            .foregroundColor(Color.white)
                            
                            
                        }
                        .border(Color.black, width: 3)
                        
                        VStack {
                            Image("tajine")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 100)
                                .padding()
                            Text("Tajine")
                            
                            .background(Color.black)
                            .foregroundColor(Color.white)
                        }
                        .border(Color.black, width: 3)
                        .clipped()
                        VStack {
                           Image("paella")
                               .resizable()
                               .aspectRatio(contentMode: .fill)
                               .frame(width: 100, height: 100)
                               .padding()
                           
                           Text("Paella")
                               .background(Color.black)
                           .foregroundColor(Color.white)
                           
                           
                       }
                       .border(Color.black, width: 3)

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
                            Image("LDC")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 100)
                                .padding()
                                .clipped()
                            
                            Text("LDC")
                                .background(Color.black)
                            
                            
                        }
                        .border(Color.black, width: 3)
                        .foregroundColor(Color.white)
                        
                        VStack {
                            Image("CDB")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 100)
                                .padding()
                                .clipped()
                            Text("Coup de Boule")
                                .background(Color.black)
                        }
                        .border(Color.black, width: 3)
                        .foregroundColor(Color.white)
                        
                        
                    }
                    
                    
                }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                .navigationBarTitle("Mon Profil", displayMode: .inline)
               .navigationBarItems(trailing: Button(action: {
                self.send()
               }) {
                       Text("Modifier")
               })
            }}
            .tabItem { Image(systemName: "person.circle")
                Text("Profil")
        }
    }
    
        func send(){
            UNUserNotificationCenter.current().requestAuthorization(options:  [.alert,.sound,.badge]) { (_,_) in }
        
        let content = UNMutableNotificationContent()
        content.title = "merci de votre attention"
        content.body = "Avez-vous des questions ?"
            
            let open = UNNotificationAction(identifier: "Oui", title: "Oui", options: .foreground)
            let cancel = UNNotificationAction(identifier: "Non", title: "Non", options: .destructive)
            
            let categories = UNNotificationCategory(identifier: "action", actions: [open,cancel], intentIdentifiers: [])
            
            UNUserNotificationCenter.current().setNotificationCategories([categories])
            
            content.categoryIdentifier = "action"
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        let req = UNNotificationRequest(identifier: "req", content: content, trigger: trigger)
        
            UNUserNotificationCenter.current().add(req, withCompletionHandler: nil)
        }
        
    }


struct MonProfil_Previews: PreviewProvider {
    static var previews: some View {
        MonProfil()
    }
}

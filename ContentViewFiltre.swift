//
//  ContentView.swift
//  CulturMixPageFiltre
//
//  Created by LAURE NJINGA on 29/01/2020.
//  Copyright © 2020 LAURE NJINGA. All rights reserved.
//

import SwiftUI




struct ContentViewFiltre: View {

    @State private var name: String = ""
    
    var body: some View {
        
        
        
            ScrollView {
                
                
                VStack {
                    
                    
                    
                VStack {
                        
                        ZStack {
                            Rectangle()
                                .foregroundColor(.gray)
                                .opacity(0.6)
                                .frame(width: 450, height: 50.0, alignment:.leading)
                            Text("Pays")
                            
                            }
                      
                        
                        Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: Text("")) {
                            Text("Brésil").tag(1)
                            Text("Mali").tag(2)
                            Text("Italie").tag(3)
                            Text("Japon").tag(4)
                            Text("Sénégal").tag(5)
                            Text("France").tag(6)
                            Text("Chine").tag(7)
                            Text("Canada").tag(8)
                            Text("Japon").tag(9)
                            Text("Etat-unis").tag(10)
                        }
                        .frame(width: 200.0, height: 200.0, alignment: .center)
                       
                            
                    
                    
                        
                        ZStack {
                            Rectangle()
                                .foregroundColor(.gray)
                                .opacity(0.6)
                                .frame(width: 450, height: 50.0, alignment:.leading)
                            Text(" Type de Plats")
                            
                            }
                        
                        
                        Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: Text("")) {
                            
                            
                            Text("Entrées").tag(1)
                            Text("Plats").tag(2)
                            Text("Desserts").tag(3)
                            
                        }.frame(width: 200.0, height: 200.0, alignment: .center)
                            
                        
                    
                    ZStack {
                            Rectangle()
                                .foregroundColor(.gray)
                                .opacity(0.6)
                                .frame(width: 450, height: 50.0, alignment:.leading)
                            
                            Text("Date de lévénement")
                            
                        }
                        
                        
                        DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ }).frame(width: 200.0, height: 200.0, alignment: .center)
                        
                         ZStack {
                                                   Rectangle()
                                                       .foregroundColor(.gray)
                                                       .opacity(0.6)
                                                       .frame(width: 450, height: 50.0, alignment:.leading)
                                                   Text("Lieu De L'événement")
                                                   
                                                   }
                        
                    TextField("Insérer un lieu", text: $name).frame(width: 300.0, height: 25.0, alignment: .center)
                    .padding()
                     
                    .background(Color.gray)
                        .opacity(0.4)
                    .foregroundColor(Color.black)
                        .cornerRadius(5.0)

                }
                    
                    .navigationBarTitle("Filtre", displayMode: .inline)
                        
                    .navigationBarItems(trailing: Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("valider")
                    })
                }
            }
            
    }
    
    
    struct ContentViewFiltre_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                ContentViewFiltre()
            }
        }
    }
    
}

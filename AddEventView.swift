//
//  AddEventView.swift
//  Culture Mix Profil
//
//  Created by angelo DA COSTA on 05/02/2020.
//  Copyright © 2020 Yacine. All rights reserved.
//

import SwiftUI
struct Location {
    static let allLocations = [
        "Bondy","Montreuil","Paris 15e","Paris 13e","Saint-Denis","Vincennes","Courbevoie","Boulogne-Billancourt","Nanterre","Puteaux","Roissy-en-France",
        "Levallois-Perret","Montreuil","Issy-les-Moulineaux",
        "Créteil","Versailles","Neuilly-sur-Seine","Rueil-Malmaison"
    ]
}

struct Localisation {
    static let allLocalisations = [
       
        "Afghanistan", "Afrique du Sud", "Albanie", "Algérie", "Allemagne", "Andorre",
        "Angola", "Anguilla", "Antigua-et-Barbuda", "Antilles Néerlandaises", "Arabie Saoudite", "Azerbaïdjan", "Bangladesh", "Belgique", "Bulgarie", "Cambodge", "Cameroun", "Colombie", "Danemark", "Dominique", "Érythrée", "Espagne", "Guadeloupe", "Guam", "Japon", "Kenya", "Kiribati", "Koweït", "Lettonie", "Liban", "Libéria", "Maroc", "Martinique", "Mexique", "Mongolie", "Mozambique", "Paraguay", "Pérou", "Philippines", "Pologne", "Portugal", "Qatar", "Centrafricaine", "Dominicaine", "Réunion", "Roumanie", "Rwanda", "Sénégal", "Slovaquie", "Somalie", "Soudan", "Suède", "Suisse", "Suriname", "Turquie", "Uruguay", "Venezuela","Yémen","Zambie","Zimbabwe"

    ]
}

struct AddEventView: View {
    
    @State var showImagePicker: Bool = false
    @State var image: Image? = nil
    @State private var location = ""
    @State private var localisation = ""
    @State private var terms = true
    var body: some View {
       
            
            VStack(alignment: .leading){
                HStack{
                    
                    Button(action: {withAnimation {
                            self.showImagePicker.toggle()
                        }}){
                            if image == nil {
                        Image("Add1")
                            
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .clipShape(Circle())
                            .overlay(
                                Circle().stroke(Color.white, lineWidth: 1))
                            .frame(width: 100, height: 100.0, alignment: .bottom)
                            .shadow(radius: 1.0)
                            .padding()
                            } else {
                                image?
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .clipShape(Circle())
                                .overlay(
                                    Circle().stroke(Color.white, lineWidth: 1))
                                .frame(width: 100, height: 100.0, alignment: .bottom)
                                .shadow(radius: 1.0)
                                .padding()
                                
                            }
                        
                    }.buttonStyle(PlainButtonStyle())
                        .sheet(isPresented: $showImagePicker) {
                        ImagePickerView(image: self.$image)
                    }
                    HStack {
                        TextField("Ajouter une legende", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                            .padding(.all)
                            //                                            .frame(width:245, height: 900)
                            .foregroundColor(Color.red)
                            .opacity(0.7)
                        
                    }.frame(height: 40.0)
                        .background(Color.gray.opacity(0.2).cornerRadius(CGFloat(10)))
                        .padding(20)
                        .padding(.bottom, -15)
                }
                
                
                
               
            
               
                Form {
                   Picker(selection: $location,
                          label: Text("Lieu de reception")) {
                           HStack {
                                                  
                                                  Image(systemName: "magnifyingglass")
                                                      .padding()
                                                      .opacity(0.7)
                                                  
                                                  
                                                  TextField("Recherche", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                                                      .foregroundColor(Color.red)
                                                      .opacity(0.7)
                                                  
                                              }.frame(height: 40.0)
                            ForEach(Location.allLocations, id: \.self) { location in
                                Text(location).tag(location)
                    }
                    }
                    
                     DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { Text("Date de l'événement") })
                    
                    Picker(selection: $localisation, label: Text("Origine du plat")){
                        HStack {
                                               
                                               Image(systemName: "magnifyingglass")
                                                   .padding()
                                                   .opacity(0.7)
                                               
                                               
                                               TextField("Recherche", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                                                   .foregroundColor(Color.red)
                                                   .opacity(0.7)
                                           }.frame(height: 40.0)
                        ForEach(Localisation.allLocalisations, id: \.self) { localisation in
                            Text(localisation).tag(localisation)
                            }                        }
                    Toggle(isOn: $terms, label: {
                        Text("Acceder à mon profil")
                    })
                 
                }
                
            }
            .navigationBarTitle(Text("Ajouter Un Événement"), displayMode: .inline)
        .navigationBarItems(trailing: Text("Valider"))
                
            .foregroundColor(Color.blue)
        
        
        }
    }

    struct AddEventView_Previews: PreviewProvider {
        static var previews: some View {
            AddEventView()
        }
}



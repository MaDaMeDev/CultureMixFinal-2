//
//  CulturMixPageEvents.swift
//  MyFavoritePlace
//
//  Created by Najim on 29/01/2020.
//  Copyright © 2020 Reda van Eeuwijk. All rights reserved.
//

import SwiftUI

struct Event: Identifiable {
    var id = UUID()
    var eventName: String
    var dateEvents: String
    var imageName: String
    var imageFlag: String
    var placeEvents: String
    var storyfood: String
    var recettefood: String
    var url: String
    var avatarprofil: String
    var name: String
    var pays : String
    var age: String
    var paysOrigins: String
    var nbPlaces: String
}

struct AccueilView: View {
    
    var events: [Event] = [
        
        Event(eventName: "Mafe", dateEvents: "07/02/2020", imageName: "Mafe-1", imageFlag: "flag-for-senegal_1f1f8-1f1f3", placeEvents: "Montreuil", storyfood: "Le Mafé est un des plats traditionnels les plus connus du continent Africain.D’origine malienne, il s’agit d’une sauce à base de pâte d’arachide mijotée longuement, parfois avec quelques légumes, le plus souvent avec de la viande.", recettefood:"Mettre à chauffer l’huile dans une cocotte et faire dorer la viande coupée en morceaux, ajouter un oignon et une gousse d’ail (coupée en fins morceaux). Saler,Laisser mijoter 2 minutes puis verser le concentré de tomate délayé dans un peu d’eau et laisser mijoter encore un peu.Incorporer 1 litre et demi d’eau et porter l’ensemble à ébullition.Piler un oignon et une gousse d’ail, un peu de piment en poudre et du poivre puis ajouter la pâte d’arachide délayée dans un peu d’eau.Laisser cuire 30 minutes.", url:"https:www.youtube.com/embed/MiS5vNB_y-U", avatarprofil: "africain", name: "Mamadou DIALLO", pays: "Sénegal", age: "33 ans", paysOrigins: "France", nbPlaces: "2 places restantes"),
        
        Event(eventName: "Ramen", dateEvents: "07/03/2020", imageName: "Ramen",
              imageFlag:"flag-for-japan_1f1ef-1f1f5",
              placeEvents:"Paris 13e", storyfood: "Les râmens sont originaires de Chine et son apparues au Japon au début du siècle. Ce plat est constitué d’un bouillon, de pâtes de blé et de garniture. Les râmens sont très consommées au Japon et il existe une multitude de recette : miso, shôyu, shio (sel), avec du poulet ou du bœuf, avec des pousses de soja, des champignons, etc…", recettefood: "Faites cuire les brocolis  dans de l’eau bouillante environ 10 min (si ils sont surgelés) puis égouttez les. Dans une autre casserole, portez 1 litre d’eau à ébullition puis versez-y les lardons.Au bout de 5 min, vous pouvez écumer un peu de gras qui s’accumule à la surface de l’eau avec une grosse cuillère.", url: "https://www.youtube.com/embed/yZx4lYYru2c", avatarprofil: "SanGoku", name: "SanGoku", pays: "Japon", age: "57 ans", paysOrigins: "Japon", nbPlaces: "12 places restantes"),
        
        Event(eventName: "Zlabia", dateEvents: "08/03/2020", imageName: "Zlabia",
              imageFlag:"flag-for-algeria_1f1e9-1f1ff",
              placeEvents:"Saint-Denis", storyfood: "D’origine arabo-musulmane ou juive, selon certains récits, la zlabia se prépare sous plusieurs formes : ronde, longue ou en bâtonnets. Toutefois, la plus célèbre reste la zlabia de Boufarik, légèrement épaisse, de couleur jaune-marron. Selon certaines histoires, racontées de mère en fille, la zlabia viendrait de l’«âge d’or» de l’islam à Al Andalus (Grenade). En effet, il s’agissait d’une demande d’un grand roi de l’époque (certainement le grand-père de Boabdil) aux plus grands chefs cuisiniers.", recettefood: "Mélanger la farine et la levure, puis verser l'eau et bien mélanger de nouveau pour obtenir une pâte lisse. Filmer cette pâte au contact et la laisser reposer au frais pendant 1 h.Retirer délicatement le film, puis mélanger l'appareil et ajouter le safran. Remettre ensuite un film au contact et laisser de nouveau reposer durant 1 h.", url: "https://www.youtube.com/embed/MYvk7nPx3ws", avatarprofil: "Mahrez", name: "Riyad Mahrez", pays: "Algérie", age: "22 ans", paysOrigins: "Algerie", nbPlaces: "9 places restantes"),
        
        Event(eventName: "Pot au feu", dateEvents: "09/04/2020", imageName: "potaufeu1",
              imageFlag:"flag-for-france_1f1eb-1f1f7",
              placeEvents:"Vincennes", storyfood: "Jean Louis Schefer fait remonter le pot-au-feu au rêve néolithique « celui du foyer, du vase d'argile, du pot mis au feu, de la soif étanchée, de la faim apaisée....»2, origine reprise par le restaurant A la Cloche d'or : « pot-au-feu désigne à la base le « pot à feu », le pot dans lequel on faisait revenir un bouillon aromatique auquel on ajoutait viandes et légumes »3. Jean Guillaume pense qu'à l'origine de l'agriculture les raves sont venues compléter les herbes dans les bouillons, « on y ajoutait du pain pour faire la soupe et de la viande pour les grands jours", recettefood: "Laver, éplucher tous les légumes, et les couper en morceaux assez gros.Piquer l'oignon entier avec les clous de girofle.Faire bouillir 3 litres d'eau, ajouter tous les légumes, puis le bouquet garni, l'ail, sel, poivre puis la viande.Faire cuire le tout pendant environ 2 h 30-3 h, écumer de temps en temps.1 h avant la fin, ajouter les os à moelle, et mettre du gros sel aux extremités pour conserver la moelle.Egoutter les légumes et la viande, et servir bien chaud avec de la moutarde.", url: "https://www.youtube.com/embed/8-jd7quchE8", avatarprofil: "Olivier Giroud", name: "Olivier Giroud", pays: "France", age: "30 ans", paysOrigins: "France", nbPlaces: "10 places restantes"),
        
        Event(eventName: "Panzerotti", dateEvents: "26/02/2020", imageName: "Panzerotti",
              imageFlag:"flag-for-italy_1f1ee-1f1f9",
              placeEvents:"Paris 15e", storyfood: "Les panzerotti sont une spécialité des Pouilles, qui fait partie des recettes traditionnelles et pauvres de cette région. Il s’agit de demie-lunes de pâte fourrées avec de la mozzarella et de la tomate. ", recettefood: "Mélanger la farine, le sel et la levure de boulanger avec l’eau tiède et bien pétrir la pâte à pain. La laisser lever pendant 1 heure environ (un peu plus s’il fait froid).Dans une passoire, couper en dés la mozzarella et les tomates et y ajouter un peu de sel, d’huile et des câpres.Étendre la pâte avec un rouleau en disques plutôt fins (environ 15 cm de diamètre). Poser la farce sur une moitié du disque et les fermer en demi-lunes, en faisant bien coller les bords.", url: "https://www.youtube.com/embed/Mqf_bA221-4", avatarprofil: "Alessandro Del Piero", name: "Alessandro Del Piero", pays: "Italie", age: "29 ans", paysOrigins: "France", nbPlaces: "1 places restantes"),
        
        Event(eventName: "Feijoada", dateEvents: "15/02/2020", imageName: "feijoada", imageFlag:"flag-for-brazil_1f1e7-1f1f7", placeEvents:"Bondy", storyfood: "La feijoada est considérée comme un pur produit de l’histoire du Brésil, un brassage des cultures culinaires européennes, africaines et amérindiennes. Cette recette est née chez les esclaves, ceux-ci n’avaient accès qu’aux bas de morceaux du porc : oreilles, pieds, museaux.", recettefood: "La veille, mettez les haricots à tremper dans l’eau froide. Rincez les viandes demi-sel. Mettez-les dans un grand récipient, ajoutez la palette et couvrez d’eau froide. Laissez dessaler 12 heures en renouvelant l’eau plusieurs fois.", url: "https://www.youtube.com/embed/08dmssibYyk", avatarprofil: "roro", name: "Ronaldo Moreira", pays: "Brésil", age: "43 ans", paysOrigins: "Bresil", nbPlaces: "3 places restantes")
               
    ]
    
    var body: some View {
        NavigationView() {
            
            // ScrollView{
            
            
            
            VStack {
                HStack {
                   
                    Text("Evénements de la semaine:")
                        .bold()
                    Spacer()
                   
                    
                    
                    
                    
                }
                .padding()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack{
                        
                        Image("Spécial entrée")
                            .resizable()
                            .frame(width: 100.0, height: 100.0)
                            .clipped()
                        
                        
                        Image("Recette insolite")
                            .resizable()
                            .frame(width: 100.0, height: 100.0)
                            .clipped()
                        
                        Image("baked-cake-cakes-close-up")
                            .resizable()
                            .frame(width: 100.0, height: 100.0)
                            .clipped()
                        
                        Image("paella")
                            .resizable()
                            .frame(width: 100.0, height: 100.0)
                            .clipped()
                        
                        Image("recette fruitée")
                            .resizable()
                            .frame(width: 100.0, height: 100.0)
                            .clipped()
                        Image("skewer-2611712_960_720")
                            .resizable()
                            .frame(width: 100.0, height: 100.0)
                            .clipped()
                        
                    }
                    
                }
                
                
                
                
                
                
                
                /*TabView {
                 
                 
                 Text("")
                 .tabItem { Image(systemName: "house.fill")                                         }
                 Text("")
                 .tabItem { Image(systemName: "magnifyingglass")
                 }
                 Text("")
                 .tabItem { Image(systemName: "plus.square")                                          }
                 
                 }*/
                
                
                List(events) { event in
                    //NavigationLink(destination: EventsView(event: event))
                    
                    NavigationLink(destination: EventsView(event: event)) {
                        ExtractedView(eventVAr: event)


                    }

                }
            }
                
                
            .navigationBarTitle("Events", displayMode: .inline)
                
                
               .navigationBarItems(leading: Button(action: {
                }, label: {
                    NavigationLink(destination: ContentViewFiltre()) {
                        Text("Filtre")
                     }
               } ), trailing:NavigationLink(destination: AddEventView()) { Image(systemName: "plus")}
                    .foregroundColor(Color.blue))

           /* .navigationBarItems(trailing:
                Button(action: {
                }) {
                    Text("Filtre")
                }
            )*/
        
        }.tabItem {
            Image(systemName: "house.fill")
            Text("Accueil")
        }
    }

}

struct AccueilView_Previews: PreviewProvider {
    static var previews: some View {
        AccueilView()
    }
}

struct ExtractedView: View {
    
    var eventVAr: Event
    
    var body: some View {
        
                
        HStack(spacing: 20){
            Image(eventVAr.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .shadow(radius: 10)
            .overlay(
            Circle().stroke(Color.black, lineWidth: 1))
           Spacer()
            VStack(alignment: .center) {
                Text(eventVAr.eventName)
                    .bold()
                
                Text(eventVAr.dateEvents)
                    
                
                Text(eventVAr.placeEvents)
            }
            Spacer()
            Image(eventVAr.imageFlag)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:50,height: 50)
            
            
        }  .padding()
        
    }
        
}

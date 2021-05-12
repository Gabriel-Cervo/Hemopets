//
//  RegisteredPetsView.swift
//  Hemopets
//
//  Created by Matheus Polonia on 10/05/21.
//

import SwiftUI

struct RegisteredPetsView: View {
    var catList: [Cat] = [Cat(name: "Gato", age: 3, weight: 5, imageName: "CatPlaceholder"), Cat(name: "Cachorro", age: 6, weight: 1, imageName: "DogPlaceholder")]
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("Background")
                    .ignoresSafeArea()
                
                VStack {
                    ZStack {
                        HStack {
                            TitleView(text: "Meus Pets")
                        }
                        HStack {
                            Spacer()
                            // create navigation link to register a new pet
                            Image(systemName: "plus")
                                .font(.title2)
                                .padding(.trailing, 30)
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.top, Metrics.cardPaddingTop)
                    .padding(.bottom, 10)
                    
                    ScrollView {
                        VStack(spacing: 5) {
                            ForEach(catList, id: \.id) { cat in
                                ZStack {
                                    PartialDetailsView(name: cat.name, imageName: cat.imageName, type: "Gato", isViable: cat.checkWeight())
                                        .padding(.horizontal, 10)
                                    
                                    HStack {
                                        Spacer()
                                        
                                        NavigationLink(destination: CompleteDetailsView(cat: cat)) {
                                            Image(systemName: "square.and.pencil")
                                                .font(.title3)
                                        }
                                        
                                        // Excluir -> Fazer funcionalidade
                                        Image(systemName: "trash")
                                            .font(.title3)
                                        
                                    }
                                    .padding(.trailing, 30)
                                    .foregroundColor(.gray)
                                }
                                
                            }.padding(.bottom)
                        }.padding(.top, 30)
                    }
                    Spacer()
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct RegisteredPetsView_Previews: PreviewProvider {
    static var previews: some View {
        RegisteredPetsView()
            .previewDevice("iPhone 12")
        
        RegisteredPetsView()
            .previewDevice("iPhone 8")
    }
}

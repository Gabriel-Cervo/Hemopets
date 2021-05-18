//
//  RegisteredPetsView.swift
//  Hemopets
//
//  Created by Matheus Polonia on 10/05/21.
//

import SwiftUI

struct RegisteredPetsView: View {
    @State var registeredCats: [Cat] = []
    @State var registeredDogs: [Dog] = []
    
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            
            VStack {
                ZStack {
                    HStack {
                        TitleView(text: "Meus Pets")
                    }
                    
                    NavigationLink(
                        destination: RegisterFirstScreen()) {
                        HStack {
                            Spacer()
                            Image(systemName: "plus")
                                .font(.title2)
                                .padding(.trailing, 30)
                                .foregroundColor(.gray)
                        }
                    }
                }
                .padding(.top, Metrics.cardPaddingTop)
                .padding(.bottom, 10)
                
                ScrollView {
                    VStack(spacing: 5) {
                        Group {
                            ForEach(registeredCats, id: \.id) { cat in
                                ZStack {
                                    PartialDetailsView(name: cat.name, imageName: cat.imageName, type: .cat, isViable: cat.isEligible())
                                        .padding(.horizontal, 10)
                                    
                                    HStack {
                                        Spacer()
                                        
                                        NavigationLink(destination: CompleteDetailsView(pet: cat as Pet)) {
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
                            }
                            
                            ForEach(registeredDogs, id: \.id) { dog in
                                ZStack {
                                    PartialDetailsView(name: dog.name, imageName: dog.imageName, type: .dog, isViable: dog.isEligible())
                                        .padding(.horizontal, 10)
                                    
                                    HStack {
                                        Spacer()
                                        
                                        NavigationLink(destination: CompleteDetailsView(pet: dog as Pet)) {
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
                            }
                        }.padding(.bottom)
                    }.padding(.top, 30)
                }
                Spacer()
            }
            .navigationBarHidden(true)
        }
        .onAppear() {
            self.registeredCats = PetsConstants.registeredCats
            self.registeredDogs = PetsConstants.registeredDogs
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

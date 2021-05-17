//
//  RegisteredPetsView.swift
//  Hemopets
//
//  Created by Matheus Polonia on 10/05/21.
//

import SwiftUI

struct RegisteredPetsView: View {
    var catList: [Cat] = [Cat(name: "Gato1", age: 20, weight: 30, imageName: "NewImage"), Cat(name: "Gato2", age: 20, weight: 2, imageName: "NewImage")]
    
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
                                                .resizable()
                                                .frame(width: 25, height: 25)
                                                .padding(.trailing, 30)
                                                .foregroundColor(.gray)
                                        }
                                    }
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

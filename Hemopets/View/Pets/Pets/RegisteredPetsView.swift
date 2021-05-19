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
        if registeredCats.count + registeredDogs.count == 0 {
            NoPetsView()
        } else {
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
                                        
                                        HStack(spacing: 25) {
                                            Spacer()
                                            
                                            NavigationLink(destination: CompleteDetailsView(petType: .cat, pet: cat as Pet)) {
                                                Image(systemName: "square.and.pencil")
                                                    .font(.title3)
                                            }
                                            
                                            Button(action: {
                                                deleteRegister(pet: cat, petType: .cat)
                                            }, label: {
                                                Image(systemName: "trash")
                                                    .font(.title3)
                                            })
                                        }
                                        .padding(.trailing, 30)
                                        .foregroundColor(.gray)
                                    }
                                }
                                .onDelete(perform: { indexSet in
                                    deleteRegister(pet: registeredCats[indexSet.first!], petType: .cat)
                                })
                                
                                ForEach(registeredDogs, id: \.id) { dog in
                                    ZStack {
                                        PartialDetailsView(name: dog.name, imageName: dog.imageName, type: .dog, isViable: dog.isEligible())
                                            .padding(.horizontal, 10)
                                        
                                        HStack(spacing: 25) {
                                            Spacer()
                                            
                                            NavigationLink(destination: CompleteDetailsView(petType: .dog, pet: dog as Pet)) {
                                                Image(systemName: "square.and.pencil")
                                                    .font(.title3)
                                            }
                                        }
                                        .padding(.trailing, 30)
                                        .foregroundColor(.gray)
                                    }
                                }
                                .onDelete(perform: { indexSet in
                                    deleteRegister(pet: registeredDogs[indexSet.first!], petType: .dog)
                                })
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
    
    func deleteRegister(pet: Pet, petType: PetType) {
        do {
            switch petType {
            case .cat:
                let registeredCats: [Cat] = try UserDefaultsManager.loadData(for: "registeredCats")
                let filteredCats = registeredCats.filter {
                    $0.id != pet.id
                }
                try UserDefaultsManager.saveData(data: filteredCats, for: "registeredCats")
                PetsConstants.registeredCats = filteredCats
                self.registeredCats = PetsConstants.registeredCats
                
            case .dog:
                let registeredDogs: [Dog] = try UserDefaultsManager.loadData(for: "registeredDogs")
                let filteredDogs = registeredDogs.filter {
                    $0.id != pet.id
                }
                try UserDefaultsManager.saveData(data: filteredDogs, for: "registeredDogs")
                PetsConstants.registeredDogs = filteredDogs
                self.registeredDogs = PetsConstants.registeredDogs
            }
        } catch {
            print(error.localizedDescription)
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

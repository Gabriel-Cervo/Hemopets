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
                HStack {
                    HStack {
                        Spacer()
                        TitleView(text: "Meus Pets")
                            .padding(.leading, 50)
                        Spacer()
                    }
                    NavigationLink(
                        destination: RegisterFirstScreen()) {
                        Image(systemName: "plus")
                            .font(.title2)
                            .foregroundColor(.gray)
                            .padding(.trailing)
                    }
                }
                .padding(.top, Metrics.cardPaddingTop)
                
                List {
                    ForEach(registeredCats, id: \.id) { cat in
                        ZStack {
                            HStack {
                                PartialDetailsView(name: cat.name, imageName: cat.imageName, type: .cat, isViable: cat.isEligible())
                                    .padding(.horizontal)
                                Spacer()
                                NavigationLink(destination: CompleteDetailsView(petType: .cat, pet: cat as Pet)) {
                                }
                            }
                        }
                    }
                    .onDelete(perform: { indexSet in
                        deleteRegister(pet: registeredCats[indexSet.first!], petType: .cat)
                    })
                    
                    ForEach(registeredDogs, id: \.id) { dog in
                        ZStack {
                            HStack {
                                PartialDetailsView(name: dog.name, imageName: dog.imageName, type: .dog, isViable: dog.isEligible())
                                    .padding(.horizontal)
                                Spacer()
                                NavigationLink(destination: CompleteDetailsView(petType: .dog, pet: dog as Pet)) {
                                }
                            }
                        }
                    }
                    .onDelete(perform: { indexSet in
                        deleteRegister(pet: registeredDogs[indexSet.first!], petType: .dog)
                    })
                }
                
            }
            .navigationBarHidden(true)
        }
        .onAppear() {
            self.registeredCats = PetsConstants.registeredCats
            self.registeredDogs = PetsConstants.registeredDogs
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

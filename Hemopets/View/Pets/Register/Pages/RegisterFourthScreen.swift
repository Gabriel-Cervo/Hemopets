//
//  RegisterFourthScreen.swift
//  Hemopets
//
//  Created by Natália Brocca dos Santos on 13/05/21.
//

import SwiftUI

struct RegisterFourthScreen: View {
    @State var selectedIndexes: [Int] = [Int]()
    
    var body: some View {
        RegisterContainerContentView {
            Group {
                VStack {
                    HStack {
                        Text("Quais vacinas seu pet já realizou?")
                            .foregroundColor(Color("TextColorPrimary"))
                            .font(.title3)
                            .fontWeight(.medium)
                        Spacer()
                    }
                    .padding(.top, Metrics.registerFieldPaddingTop)
                    .padding(.leading)
                    
                    VaccinesListView(selectedIndexes: $selectedIndexes, petType: PetRegistration.type)
                        .padding(.top)
                        .padding(.horizontal)
                    
                    HStack {
                        PreviousPageButton()
                        Spacer()
                       
                        FinishButton(text: "Finalizar", nextView: AnyView(RegisteredPetsView()), onClick: registerPet)
                    }
                    .padding(.bottom)
                    .padding(.horizontal)
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
            }
            .padding(.horizontal, 15)
        }
    }
    
    func registerPet() {        
        let newPet = PetRegistration.type == .cat ?
            Cat(name: PetRegistration.name, age: PetRegistration.age, weight: PetRegistration.weight, imageName: "CatPlaceholder") :
            Dog(name: PetRegistration.name, age: PetRegistration.age, weight: PetRegistration.weight, imageName: "DogPlaceholder")
        
        for i in 0..<PetsConstants.totalNumberOfVaccines {
            if selectedIndexes.contains(i) {
                newPet.vaccines[i].isTaken = true
            }
        }
        
        if newPet is Dog {
            PetsConstants.registeredDogs.append(newPet as! Dog)
        } else {
            PetsConstants.registeredCats.append(newPet as! Cat)
        }
    }
}

struct RegisterFourthScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterFourthScreen()
    }
}

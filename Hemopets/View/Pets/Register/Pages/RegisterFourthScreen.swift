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
                    RegisterText(text: "Quais das vacinas abaixo seu pet tomou?")
                        .padding(.top,  Metrics.registerFieldPaddingTop)
                        .padding(.leading)
                    
                    VaccinesListView(selectedIndexes: $selectedIndexes, petType: PetRegistration.type)
                        .padding(.top)
                        .padding(.horizontal)
                        .colorScheme(.light)
                    
                    HStack {
                        PreviousPageButton()
                        Spacer()
                        
                        FinishButton(text: "Finalizar", nextView: AnyView(MainContentView()), onClick: registerPet)
                    }
                    .padding(.bottom)
                    .padding(.horizontal)
                }
                .navigationBarTitle("")
                .navigationBarBackButtonHidden(true)
                .navigationBarHidden(true)
            }
            .padding(.horizontal, 15)
        }
    }
    
    func registerPet() {
        let newPet = PetRegistration.type == .cat ?
            Cat(name: PetRegistration.name, age: PetRegistration.age, weight: PetRegistration.weight, imageName: "CatPlaceholder") :
            Dog(name: PetRegistration.name, age: PetRegistration.age, weight: PetRegistration.weight, imageName: "DogPlaceholder")
        
        if let image = PetRegistration.image {
            let imageName = saveImage(image)
            if let imageName = imageName {
                newPet.imageName = imageName
            }
        }
        
        for i in 0..<PetsConstants.totalNumberOfVaccines {
            if selectedIndexes.contains(i) {
                newPet.vaccines[i].isTaken = true
            }
        }
        
        if let newDog = newPet as? Dog {
            PetsConstants.registeredDogs.append(newDog)
            do {
                try UserDefaultsManager.saveData(data: PetsConstants.registeredDogs as [Pet], for: "registeredDogs")
            } catch {
                print(error.localizedDescription)
            }
            
        }
        
        if let newCat = newPet as? Cat {
            PetsConstants.registeredCats.append(newCat)
            
            do {
                try UserDefaultsManager.saveData(data: PetsConstants.registeredCats as [Pet], for: "registeredCats")
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
    func saveImage(_ image: UIImage) -> String? {
        if let data = image.jpegData(compressionQuality: 0.8) {
            let imageName = "image\(uniqueFilename())"
            let filename = UserDefaultsManager.getDocumentsDirectory().appendingPathComponent(imageName)
            
            if (try? data.write(to: filename)) != nil {
                return imageName
            }
        }
        
        return nil
    }
}

struct RegisterFourthScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterFourthScreen()
    }
}

// Generate a unique filename
// Source: https://gist.github.com/marcelvoss/cf437ec5ef1d717c675dc9b0f35aa4cd
func uniqueFilename(withPrefix prefix: String? = nil) -> String {
    let uniqueString = ProcessInfo.processInfo.globallyUniqueString
    
    if prefix != nil {
        return "\(prefix!)-\(uniqueString)"
    }
    
    return uniqueString
}

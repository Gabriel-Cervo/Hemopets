//
//  RegisterFourthScreen.swift
//  Hemopets
//
//  Created by Natália Brocca dos Santos on 13/05/21.
//

import SwiftUI

struct RegisterFourthScreen: View {
    @State var selectedIndexes: [Int] = [Int]()
    @State var isEligible: Bool = false
    @State var newPet = PetRegistration.type == .cat ?
        Cat(name: PetRegistration.name, age: PetRegistration.age, weight: PetRegistration.weight, imageName: "CatPlaceholder") :
        Dog(name: PetRegistration.name, age: PetRegistration.age, weight: PetRegistration.weight, imageName: "DogPlaceholder")
    
    var body: some View {
        RegisterContainerContentView {
            Group {
                VStack {
                    RegisterText(text: "Quais das vacinas abaixo \(PetRegistration.name) tomou?")
                        .padding(.top,  Metrics.registerFieldPaddingTop)
                        .padding(.leading)
                    
                    VaccinesListView(vacs: $newPet.vaccines)
                        .padding(.top)
                        .padding(.horizontal)
                    
                    HStack {
                        PreviousPageButton()
                        Spacer()
                        
                        FinishButton(text: "Finalizar", nextView: AnyView(ShowPetEligibleStatus(isEligible: $isEligible)), onClick: registerPet)
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
        if let image = PetRegistration.image {
            let imageName = saveImage(image)
            
            if let imageName = imageName {
                newPet.imageName = imageName
            }
        }
        
        newPet.age = PetRegistration.age // Resolve bug bizarro em que o newPet nao carrega o age na linha 13
        
        if let newDog = newPet as? Dog {
            PetsConstants.registeredDogs.insert(newDog, at: 0)
            isEligible = newDog.isEligible()
            
            do {
                try UserDefaultsManager.saveData(data: PetsConstants.registeredDogs, for: "registeredDogs")
            } catch {
                print(error.localizedDescription)
            }
        }
        
        if let newCat = newPet as? Cat {
            PetsConstants.registeredCats.insert(newCat, at: 0)
            isEligible = newCat.isEligible()
            
            do {
                try UserDefaultsManager.saveData(data: PetsConstants.registeredCats, for: "registeredCats")
            } catch {
                print(error.localizedDescription)
            }
        }
        
        resetPetRegistrationImage()
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
    
    func resetPetRegistrationImage() {
        PetRegistration.image = nil
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

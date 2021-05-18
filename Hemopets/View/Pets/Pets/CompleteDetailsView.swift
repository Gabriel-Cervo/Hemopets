//
//  CompleteDetailsView.swift
//  Hemopets
//
//  Created by Matheus Polonia on 10/05/21.
//

import SwiftUI

struct CompleteDetailsView: View {
    var petType: PetType
    
    @State var showingAlert: Bool = false
    @State var isEditingName: Bool = true
    @State var pet: Pet
    @State var name: String = ""
    @State var alertTitle: String = ""
    @State var alertText: String = ""
    
    @State private var weight: WeightOptions = .first
    private var selectedWeightDescription: String {
        weight.description
    }
    
    @State var age: AgeOptions = .first
    private var selectedAgeDescription: String {
        age.description
    }
    
    @State var castration: CastrationOptions = .first
    private var selectedCastrationDescription: String {
        castration.description
    }
    
    @State var gender: GenderOptions = .first
    private var selectedGenderDescription: String {
        gender.description
    }
    
    @State private var activateLink: Bool = false
    
    var body: some View {
        ZStack {
            NavigationLink(destination: MainContentView(), isActive: $activateLink,
                           label: { EmptyView() })
            
            Color("Background")
                .ignoresSafeArea()
            
            
            VStack(alignment: .leading) {
                HStack {
                    PreviousPageButton(title: "Meus Pets")
                        .foregroundColor(.gray)
                        .padding(.top, Metrics.cardPaddingTop - 30)
                        .padding(.bottom, -10)
                    Spacer()
                    
                    Button(action: saveInfo, label: {
                        Text("Salvar")
                            .foregroundColor(.init("ButtonPrimary"))
                            .bold()
                    })
                    .padding(.top, Metrics.cardPaddingTop - 30)
                    .padding(.bottom, -10)
                    .padding(.trailing, 30)
                }
                
                
                ScrollView {
                    ZStack {
                        Color("Card")
                        
                        VStack {
                            Image(pet.imageName)
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 120, height: 120)
                                .padding(.top, 30)
                                .shadow(radius: 2)
                            
                            TextField("Nome", text: $name)
                                .font(.custom("Mithella-Bold", size: CGFloat(25) + Metrics.fontSize))
                                .foregroundColor(.init("ButtonPrimary"))
                                .multilineTextAlignment(.center)
                                .padding()
                            
                            HStack {
                                VStack (alignment: .leading, spacing: 20) {
                                    Text("Informações Básicas")
                                        .font(.custom("Mithella-Bold", size: 20))
                                        .foregroundColor(.init("ButtonSecondary"))
                                    
                                    Group {
                                        HStack {
                                            Text("Peso: ")
                                                .foregroundColor(.gray)
                                            
                                            
                                            Picker(selection: $weight, label: FormPickerView(text: selectedWeightDescription, hasUnderline: false), content: {
                                                Text("Não sei").tag(WeightOptions.first)
                                                Text("Menos de 3kg").tag(WeightOptions.second)
                                                Text("Entre 4 e 10kg").tag(WeightOptions.third)
                                                Text("Entre 11 e 20kg").tag(WeightOptions.fourth)
                                                Text("Entre 20 e 25kg").tag(WeightOptions.five)
                                                Text("Mais de 28kg").tag(WeightOptions.sixth)
                                            })
                                            .pickerStyle(MenuPickerStyle())
                                            .foregroundColor(weight != .first ? .black : .gray)
                                            .padding(.top, -3)
                                        }
                                        .underlineTextField(isActive: weight != .first)
                                        HStack {
                                            Text("Idade:")
                                                .foregroundColor(.gray)
                                            
                                            
                                            Picker(selection: $age, label: FormPickerView(text: selectedAgeDescription, hasUnderline: false), content: {
                                                Text("Não sei").tag(AgeOptions.first)
                                                Text("Menos de um ano").tag(AgeOptions.second)
                                                Text("Entre 1 e 8 anos").tag(AgeOptions.third)
                                                Text("Entre 9 e 15 anos").tag(AgeOptions.fourth)
                                                Text("Mais de 15 anos").tag(AgeOptions.five)
                                            })
                                            .pickerStyle(MenuPickerStyle())
                                            .foregroundColor(age != .first ? .black : .gray)
                                            .padding(.top, -3)
                                        }
                                        .underlineTextField(isActive: age != .first)
                                    }
                                    .padding(.trailing, 15)
                                }
                                .padding(.leading, 30)
                                Spacer()
                            }
                            
                            VStack(alignment: .leading) {
                                Text("Vacinas")
                                    .font(.custom("Mithella-Bold", size: 20))
                                    .foregroundColor(.init("ButtonSecondary"))
                                    .padding(.leading, 30)
                                    .padding(.top, 15)
                                    .padding(.bottom, -10)
                                
                                VaccinesListView(vacs: $pet.vaccines)
                                    .frame(height: 180)
                                    .padding(.horizontal, 15)
                                    .colorScheme(.light)
                            }
                            .padding(.bottom, 40)
                            
                            Spacer()
                        }
                    }
                    .cornerRadius(50)
                    .padding(.horizontal, 10)
                    .padding(.bottom, 20)
                }
            }
            .alert(isPresented: $showingAlert) {
                Alert(title: Text(alertTitle), message: Text(alertText), dismissButton: .default(Text("Ok")) {
                    self.navigateBackToMainContent()
                })
            }
            .onAppear() {
                name = pet.name
                age = pet.age
                weight = pet.weight
            }
            .navigationBarHidden(true)
        }
    }
    
    func successAlert() {
        alertTitle =  "Salvo com Sucesso!"
        alertText = "Alterações salvas com sucesso."
        showingAlert = true
    }
    
    func failAlert() {
        alertTitle =  "Ocorreu um Problema!"
        alertText = "As alterações não forem salvas, tente novamente."
        showingAlert = true
    }
    
    func saveInfo() {
        if petType == .cat {
            for cat in PetsConstants.registeredCats {
                if cat.id == pet.id {
                    cat.name = name
                    cat.age = age
                    cat.weight = weight
                    do {
                        try UserDefaultsManager.saveData(data: PetsConstants.registeredCats, for: "registeredCats")
                        successAlert()
                    } catch {
                        failAlert()
                    }
                    return
                }
            }
        }
        for dog in PetsConstants.registeredDogs {
            if dog.id == pet.id {
                dog.name = name
                dog.age = age
                dog.weight = weight
                do {
                    try UserDefaultsManager.saveData(data: PetsConstants.registeredDogs, for: "registeredDogs")
                    successAlert()
                } catch {
                    failAlert()
                }
                return
            }
        }
    }
    
    func navigateBackToMainContent() {
        DispatchQueue.main.async {
            self.activateLink = true
        }
    }
}

struct CompleteDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteDetailsView(petType: .dog, pet: Pet(name: "Gato1", age: .first, weight: .second, imageName: "testeHemo"))
            .previewDevice("iPhone 12")
        
        CompleteDetailsView(petType: .dog, pet: Pet(name: "Gato1", age: .first, weight: .third, imageName: "testeHemo"))
            .previewDevice("iPhone 8")
    }
}

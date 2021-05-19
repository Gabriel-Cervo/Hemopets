//
//  RegisterThirdScreen.swift
//  Hemopets
//
//  Created by Natália Brocca dos Santos on 13/05/21.
//

import SwiftUI

struct RegisterThirdScreen: View {
    @State var age: AgeOptions = .first
    @State var selectedSeriousIllness: ButtonId?
    @State var selectedInfecctionIllness: ButtonId?
    private var selectedAgeDescription: String {
        age.description
    }
    
    @State private var isNextPageButtonActive: Bool = false
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        RegisterContainerContentView {
            Group {
                VStack {
                    RegisterText(text: "\(PetRegistration.name) já teve algum caso de doença grave?")
                        .padding(.top, Metrics.registerFieldPaddingTop)
                        .padding(.leading)
                    
                    ChooseButtons(firstButtonAction: {
                        selectedSeriousIllness = .firstButton
                        checkIfShouldActivateButton()
                    }, secondButtonAction: {
                        selectedSeriousIllness = .secondButton
                        checkIfShouldActivateButton()
                    }, firstButtonLabel: "SIM", secondButtonLabel: "NÃO", selectedButton: $selectedSeriousIllness)
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                    
                    RegisterText(text: "\(PetRegistration.name) tem alguma doença infecciosa?")
                        .padding(.top,  Metrics.registerFieldPaddingTop)
                        .padding(.leading)
                        .padding(.bottom, 10)
                    
                    ChooseButtons(firstButtonAction: {
                        selectedInfecctionIllness = .firstButton
                        checkIfShouldActivateButton()
                    }, secondButtonAction: {
                        selectedInfecctionIllness = .secondButton
                        checkIfShouldActivateButton()
                    }, firstButtonLabel: "SIM", secondButtonLabel: "NÃO", selectedButton: $selectedInfecctionIllness)
                    .padding(.horizontal)
                    
                    RegisterText(text: "Qual a idade \(PetRegistration.gender == .male ? "do" : "da") \(PetRegistration.name)?")
                        .padding(.leading)
                        .padding(.top, Metrics.registerFieldPaddingTop + 10)
                        .padding(.bottom, 10)
                    
                    
                    Picker(selection: $age, label: FormPickerView(text: selectedAgeDescription), content: {
                        Text("Não sei").tag(AgeOptions.first)
                        Text("Mais de 15 anos").tag(AgeOptions.five)
                        Text("Entre 9 e 15 anos").tag(AgeOptions.fourth)
                        Text("Entre 1 e 8 anos").tag(AgeOptions.third)
                        Text("Menos de 1 ano").tag(AgeOptions.second)
                    })
                    .pickerStyle(MenuPickerStyle())
                    .foregroundColor(age != .first ? .black : .gray)
                    .underlineTextField(isActive: age != .first)
                    .padding(.top, -3)
                    .padding(.leading, 15)
                    .padding(.trailing, 25)
                    
                    Spacer()
                    
                    HStack {
                        PreviousPageButton()
                        
                        Spacer()
                        
                        Button(action: saveValues, label: {
                            NextPageButton(nextView: AnyView(RegisterFourthScreen()), onClick: saveValues, isActive: isNextPageButtonActive)
                        })
                    }
                    .padding(.bottom)
                    .padding(.horizontal)
                }
            }
            .padding(.horizontal, 15)
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
    
    func saveValues() {
        PetRegistration.haveSeriousIllness = selectedSeriousIllness == .firstButton ? true : false
        PetRegistration.haveInfectionIllness = selectedInfecctionIllness == .firstButton ? true : false
        PetRegistration.age = age

    }
    
    func checkIfShouldActivateButton() {
        if selectedSeriousIllness != nil &&
            selectedInfecctionIllness != nil {
            isNextPageButtonActive = true
            return
        }

        isNextPageButtonActive = false
    }
}

struct RegisterThirdScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterThirdScreen()
            .previewDevice("iPhone 8")
        
        RegisterThirdScreen()
            .previewDevice("iPhone 12")
    }
}

//
//  RegisterSecondScreen.swift
//  Hemopets
//
//  Created by Natália Brocca dos Santos on 12/05/21.
//

import SwiftUI

struct RegisterSecondScreen: View {
    @State private var selectedGenderButton: ButtonId?
    @State private var selectedCastratedButton: ButtonId?
    @State private var weight: WeightOptions = .first
    private var selectedWeightDescription: String {
        weight.description
    }
    
    @State private var isNextPageButtonActive: Bool = false

    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        RegisterContainerContentView {
            Group {
                RegisterText(text: "Qual o sexo do seu pet?")
                    .padding(.leading)
                    .padding(.top, Metrics.registerFieldPaddingTop + 10)
                
                ChooseButtons(firstButtonAction: {
                    selectedGenderButton = .firstButton
                    checkIfShouldActivateButton()
                }, secondButtonAction: {
                    selectedGenderButton = .secondButton
                    checkIfShouldActivateButton()
                }, firstButtonLabel: "MACHO", secondButtonLabel: "FÊMEA", selectedButton: $selectedGenderButton)
                .padding(.horizontal)
                .padding(.vertical, 10)
                
                RegisterText(text: "Seu pet é castrado?")
                    .padding(.leading)
                    .padding(.top, Metrics.registerFieldPaddingTop + 10)
                
                ChooseButtons(firstButtonAction: {
                    selectedCastratedButton = .firstButton
                    checkIfShouldActivateButton()
                }, secondButtonAction: {
                    selectedCastratedButton = .secondButton
                    checkIfShouldActivateButton()
                }, firstButtonLabel: "SIM", secondButtonLabel: "NÃO", selectedButton: $selectedCastratedButton)
                .padding(.horizontal)
                .padding(.vertical, 10)
                
                RegisterText(text: "Qual o peso dele(a)?")
                    .padding(.top, Metrics.registerFieldPaddingTop + 10)
                    .padding(.bottom, 10)
                    .padding(.leading)
                
                Picker(selection: $weight, label: FormPickerView(text: selectedWeightDescription), content: {
                    Text("Não sei").tag(WeightOptions.first)
                    Text("Menos de 3kg").tag(WeightOptions.second)
                    Text("Entre 4 e 10kg").tag(WeightOptions.third)
                    Text("Entre 11 e 20kg").tag(WeightOptions.fourth)
                    Text("Entre 20 e 25kg").tag(WeightOptions.five)
                    Text("Mais de 28kg").tag(WeightOptions.sixth)
                })
                .pickerStyle(MenuPickerStyle())
                .foregroundColor(weight != .first ? .black : .gray)
                .underlineTextField(isActive: weight != .first)
                .padding(.top, -3)
                .padding(.horizontal, 25)
                
                Spacer()
                
                HStack {
                    PreviousPageButton()
                    
                    Spacer()
                    Button(action: saveValues, label: {
                        NextPageButton(nextView: AnyView(RegisterThirdScreen()), onClick: saveValues, isActive: isNextPageButtonActive)
                    })
                }
                .padding(.bottom)
                .padding(.horizontal)
            }
            .padding(.horizontal, 15)
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
    
    func saveValues() {
        PetRegistration.gender = selectedGenderButton == .firstButton ? .male : .female
        PetRegistration.isCastrated = selectedCastratedButton == .firstButton ? true : false
        PetRegistration.weight = weight
    }
    
    func checkIfShouldActivateButton() {
        if selectedGenderButton != nil &&
            selectedCastratedButton != nil {
            isNextPageButtonActive = true
            return
        }

        isNextPageButtonActive = false
    }
}

struct RegisterSecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterSecondScreen()
            .colorScheme(.dark)
            .previewDevice("iPhone 12")
        
        RegisterSecondScreen()
            .colorScheme(.dark)
            .previewDevice("iPhone 8")
    }
}


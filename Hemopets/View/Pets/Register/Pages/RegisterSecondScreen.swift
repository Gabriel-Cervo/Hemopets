//
//  RegisterSecondScreen.swift
//  Hemopets
//
//  Created by Natália Brocca dos Santos on 12/05/21.
//

import SwiftUI

struct RegisterSecondScreen: View {
    @State var selectedGenderButton: ButtonId?
    @State var selectedCastratedButton: ButtonId?
    @State var weight: String = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        RegisterContainerContentView {
            Group {
                RegisterText(text: "Qual o sexo do seu pet?")
                    .padding(.leading)
                    .padding(.top, Metrics.registerFieldPaddingTop + 10)
                
                ChooseButtons(firstButtonAction: {
                    selectedGenderButton = .firstButton
                }, secondButtonAction: {
                    selectedGenderButton = .secondButton
                }, firstButtonLabel: "MACHO", secondButtonLabel: "FÊMEA", selectedButton: $selectedGenderButton)
                .padding(.horizontal)
                .padding(.vertical, 10)

                RegisterText(text: "Seu pet é castrado?")
                    .padding(.leading)
                    .padding(.top, Metrics.registerFieldPaddingTop + 10)
                
                ChooseButtons(firstButtonAction: {
                    selectedCastratedButton = .firstButton
                }, secondButtonAction: {
                    selectedCastratedButton = .secondButton
                }, firstButtonLabel: "SIM", secondButtonLabel: "NÃO", selectedButton: $selectedCastratedButton)
                .padding(.horizontal)
                .padding(.vertical, 10)
                
                RegisterText(text: "Qual o peso dele/a?")
                    .padding(.top, Metrics.registerFieldPaddingTop + 10)
                    .padding(.leading)
                
                HStack {
                    TextField("", text: $weight)
                        .foregroundColor(Color("TextColorPrimary"))
                    Image(systemName: "chevron.down")
                        .foregroundColor(Color("TextColorPrimary"))
                }
                .underlineTextField()
                .padding()
                
                Spacer()
                
                HStack {
                    PreviousPageButton()
                    
                    Spacer()
                    Button(action: saveValues, label: {
                        NextPageButton(nextView: AnyView(RegisterThirdScreen()), onClick: saveValues)
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
        PetRegistration.weight = Double(weight) ?? 0.0
    }
    
    func underlineTextField() -> some View {
        self
            .padding(.vertical, 10)
            .overlay(Rectangle().frame(height: 1).padding(.top, 35))
            .foregroundColor(Color("ButtonPrimary"))
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


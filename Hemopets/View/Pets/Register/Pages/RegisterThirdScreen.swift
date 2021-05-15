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
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        RegisterContainerContentView {
            Group {
                VStack {
                    RegisterText(text: "Ele(a) já teve algum caso de doença grave?")
                        .padding(.top, Metrics.registerFieldPaddingTop)
                        .padding(.leading)
                    
                    ChooseButtons(firstButtonAction: {
                        selectedSeriousIllness = .firstButton
                    }, secondButtonAction: {
                        selectedSeriousIllness = .secondButton
                    }, firstButtonLabel: "SIM", secondButtonLabel: "NÃO", selectedButton: $selectedSeriousIllness)
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                    
                    RegisterText(text: "Seu pet tem alguma doença infecciosa?")
                        .padding(.top,  Metrics.registerFieldPaddingTop)
                        .padding(.leading)
                        .padding(.bottom, 10)
                    
                    ChooseButtons(firstButtonAction: {
                        selectedInfecctionIllness = .firstButton
                    }, secondButtonAction: {
                        selectedInfecctionIllness = .secondButton
                    }, firstButtonLabel: "SIM", secondButtonLabel: "NÃO", selectedButton: $selectedInfecctionIllness)
                    .padding(.horizontal)
                    
                    RegisterText(text: "Qual a idade dele(a)?")
                        .padding(.leading)
                        .padding(.top, Metrics.registerFieldPaddingTop + 10)
                        .padding(.bottom, 10)
                    
                    HStack(spacing: 3) {
                        Image(systemName: "hourglass")
                            .foregroundColor(.red)
                            .font(.title3)
                            .padding(.top, 3)
                        
                        Picker(selectedAgeDescription, selection: $age) {
                            Text("Não sei").tag(AgeOptions.first)
                            Text("Menos de um ano").tag(AgeOptions.second)
                            Text("Entre 1 e 8 anos").tag(AgeOptions.third)
                            Text("Entre 9 e 15 anos").tag(AgeOptions.fourth)
                            Text("Mais de 15 anos").tag(AgeOptions.five)
                        }
                        .pickerStyle(MenuPickerStyle())
                        .frame(width: UIScreen.main.bounds.width * 0.65, alignment: .leading)
                        .overlay(Rectangle().frame(height: 1).padding(.top, 25))
                        .foregroundColor(.gray)
                        .padding(.leading, 5)
                        .padding(.trailing, 10)
                    }
                    .padding(.top, -3)

                    
                    //                    Picker($age.description, selection: $age) {
                    //                        Text("Não sei").tag(AgeOptions.first)
                    //                        Text("Menos de um ano").tag(AgeOptions.second)
                    //                        Text("Entre 1 e 8 anos").tag(AgeOptions.third)
                    //                        Text("Entre 9 e 15 anos").tag(AgeOptions.fourth)
                    //                        Text("Mais de 15 anos").tag(AgeOptions.five)
                    //                    }
                    //                    .pickerStyle(MenuPickerStyle())
                    //                    .padding(.top, -15)
                    
                    Spacer()
                    
                    HStack {
                        PreviousPageButton()
                        Spacer()
                        Button(action: saveValues, label: {
                            NextPageButton(nextView: AnyView(RegisterFourthScreen()), onClick: saveValues)
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
        PetRegistration.age = age
        PetRegistration.haveSeriousIllness = selectedSeriousIllness == .firstButton ? true : false
        PetRegistration.haveInfectionIllness = selectedInfecctionIllness == .firstButton ? true : false
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

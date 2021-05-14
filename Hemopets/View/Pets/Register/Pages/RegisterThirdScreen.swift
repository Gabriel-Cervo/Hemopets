//
//  RegisterThirdScreen.swift
//  Hemopets
//
//  Created by Natália Brocca dos Santos on 13/05/21.
//

import SwiftUI

struct RegisterThirdScreen: View {
    @State var age: String = ""
    @State var selectedSeriousIllness: ButtonId?
    @State var selectedInfecctionIllness: ButtonId?
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        RegisterContainerContentView {
            Group {
                VStack {
                    HStack {
                        Text("Quantos anos ele tem?")
                            .font(.title3)
                            .fontWeight(.medium)
                            .foregroundColor(Color("TextColorPrimary"))
                        Spacer()
                    }
                    .padding(.leading)
                    .padding(.top, Metrics.registerFieldPaddingTop)
                    
                    HStack {
                        TextField("", text: $age)
                        Image(systemName: "chevron.down")
                            .padding(.horizontal, 30)
                            .foregroundColor(Color("TextColorPrimary"))
                    }
                    .underlineTextField()
                    .padding(.horizontal)
                    
                    HStack {
                        Text("Algum caso de doença grave?")
                            .font(.title3)
                            .fontWeight(.medium)
                            .foregroundColor(Color("TextColorPrimary"))
                        Spacer()
                    }
                    .padding(.top, Metrics.registerFieldPaddingTop)
                    .padding(.leading)
                    
                    ChooseButtons(firstButtonAction: {
                        selectedSeriousIllness = .firstButton
                    }, secondButtonAction: {
                        selectedSeriousIllness = .secondButton
                    }, firstButtonLabel: "SIM", secondButtonLabel: "NÃO", selectedButton: $selectedSeriousIllness)
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                    
                    HStack {
                        Text("Seu pet tem alguma doença infecciosa?")
                            .font(.title3)
                            .fontWeight(.medium)
                            .foregroundColor(Color("TextColorPrimary"))
                        Spacer()
                    }
                    .padding(.top, Metrics.registerFieldPaddingTop)
                    .padding(.leading)
                    .padding(.vertical, 10)
                    
                    ChooseButtons(firstButtonAction: {
                        selectedInfecctionIllness = .firstButton
                    }, secondButtonAction: {
                        selectedInfecctionIllness = .secondButton
                    }, firstButtonLabel: "SIM", secondButtonLabel: "NÃO", selectedButton: $selectedInfecctionIllness)
                    .padding(.horizontal)
                    
                    Spacer()
                    
                    HStack {
                        PreviousPageButton()
                        Spacer()
                        Button(action: saveValues, label: {
                            NextPageButton(nextView: AnyView(RegisterFourthScreen()))
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
        PetRegistration.age = Int(age)!
        PetRegistration.haveSeriousIllness = selectedSeriousIllness == .firstButton ? true : false
        PetRegistration.haveInfectionIllness = selectedInfecctionIllness == .firstButton ? true : false
    }
    
    func underlineTextField() -> some View {
        self
            .padding(.vertical, 10)
            .overlay(Rectangle()
                        .frame(height: 1)
                        .padding(.top, 35))
            .foregroundColor(Color("ButtonPrimary"))
    }
}

struct RegisterThirdScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterThirdScreen()
    }
}

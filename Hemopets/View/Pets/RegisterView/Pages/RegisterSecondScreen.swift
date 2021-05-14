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
            
            HStack {
                Text("Qual o sexo do seu pet?")
                    .foregroundColor(Color("TextColorPrimary"))
                    .font(.title3)
                    .fontWeight(.medium)
                Spacer()
            }
            .padding(.leading)
            .padding(.top)
            
            ChooseButtons(firstButtonAction: {
                selectedGenderButton = .firstButton
            }, secondButtonAction: {
                selectedGenderButton = .secondButton
            }, firstButtonLabel: "MACHO", secondButtonLabel: "FÊMEA", selectedButton: $selectedGenderButton)
            .padding(.horizontal)

            HStack {
                Text("É castrado?")
                    .foregroundColor(Color("TextColorPrimary"))
                    .font(.title3)
                    .fontWeight(.medium)
                    
                Spacer()
            }
            .padding(.leading)
            .padding(.top)
            ChooseButtons(firstButtonAction: {
                selectedCastratedButton = .firstButton
            }, secondButtonAction: {
                selectedCastratedButton = .secondButton
            }, firstButtonLabel: "SIM", secondButtonLabel: "NÃO", selectedButton: $selectedCastratedButton)
            .padding(.horizontal)
            HStack {
                Text("E o peso?")
                    .foregroundColor(Color("TextColorPrimary"))
                    .font(.title3)
                    .fontWeight(.medium)
                    
                Spacer()
            }
            .padding(.top)
            .padding(.leading)
            
            HStack {
                TextField("", text: $weight)
                    .foregroundColor(Color("TextColorPrimary"))
                Image(systemName: "chevron.down")
//                    .padding(.horizontal, 30)
                    .foregroundColor(Color("TextColorPrimary"))
            }
            .underlineTextField()
            .padding()
            
            HStack{
                PreviousPageButton()
                
                Spacer()
                NextPageButton(nextView: AnyView(RegisterThirdScreen()))
                    
            }
            .padding(.bottom)
            .padding(.horizontal)
            
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
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
    }
}


//
//  RegistrationScreen.swift
//  Hemopets
//
//  Created by Natália Brocca dos Santos on 12/05/21.
//

import SwiftUI

struct RegiterFirstScreen: View {
    @State var name: String = ""
    @State var selectedButton: ButtonId?
    
    var body: some View {
        RegisterContainerContentView {
            Group {
                Image("NewImage")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width * 0.35, height: UIScreen.main.bounds.width * 0.35)
                    .padding(.top)
                    
                HStack {
                    Text("Qual o nome do seu pet?")
                        .foregroundColor(Color("TextColorPrimary"))
                        .font(.title3)
                        .fontWeight(.medium)
                    Spacer()
                }
                .padding(.leading)
                .padding(.top, Metrics.registerFieldPaddingTop)
                
                TextField("", text: $name)
                    .underlineTextField()
                    .padding(.horizontal)
                
                HStack {
                    Text("Seu pet é um...")
                        .font(.title3)
                        .fontWeight(.medium)
                        .foregroundColor(Color("TextColorPrimary"))
                    Spacer()
                }
                .padding(.leading)
                .padding(.top, Metrics.registerFieldPaddingTop)
                
                ChooseButtons(firstButtonAction: {
                    selectedButton = .firstButton
                }, secondButtonAction: {
                    selectedButton = .secondButton
                }, firstButtonLabel: "CACHORRO", secondButtonLabel: "GATO", selectedButton: $selectedButton)
                .padding()

                Spacer()
                
                HStack {
                    PreviousPageButton()
                    
                    Spacer()
                    Button(action: saveValues, label: {
                        NextPageButton(nextView: AnyView(RegisterSecondScreen()), onClick: {
                            saveValues()
                        })
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
        PetRegistration.name = name
        PetRegistration.type = selectedButton == .firstButton ? .dog : .cat
    }
}
    
struct RegistrationScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegiterFirstScreen()
            .colorScheme(.dark)
            .previewDevice("iPhone 12")
        
        RegiterFirstScreen()
            .colorScheme(.dark)
            .previewDevice("iPhone 8")
    }

}

extension View {
    func underlineTextField() -> some View {
        self
            .padding(.vertical, 10)
            .overlay(Rectangle().frame(height: 1).padding(.top, 35))
            .foregroundColor(Color("ButtonPrimary"))
    }
}

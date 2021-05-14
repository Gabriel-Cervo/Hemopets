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

            Image("NewImage")
                .resizable()
                .frame(width: 100, height: 100)
                .padding(.top)
                
            HStack {
                Text("Qual o nome do seu pet?")
                    .foregroundColor(Color("TextColorPrimary"))
                    .font(.title3)
                    .fontWeight(.medium)
                Spacer()
            }
            .padding(.leading)
            .padding(.top)
            TextField("", text: $name)
                .underlineTextField()                 .padding(.horizontal)
            HStack {
                Text("Seu pet é um...")
                    .font(.title3)
                    .fontWeight(.medium)
                    .foregroundColor(Color("TextColorPrimary"))
                Spacer()
            }
            .padding(.leading)
            .padding(.top)
            ChooseButtons(firstButtonAction: {
                selectedButton = .firstButton
            }, secondButtonAction: {
                selectedButton = .secondButton
            }, firstButtonLabel: "CACHORRO", secondButtonLabel: "GATO", selectedButton: $selectedButton)
            .padding()

            HStack {
                Spacer()
                NextPageButton.init(nextView: AnyView(RegisterSecondScreen()))
                
            }
            .padding(.bottom)
            .padding(.horizontal)
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}
    
struct RegistrationScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegiterFirstScreen()
            .colorScheme(.dark)
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

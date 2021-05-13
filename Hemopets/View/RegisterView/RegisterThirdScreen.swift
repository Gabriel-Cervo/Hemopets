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
        RoundedRectangleView {
            VStack {
                HStack {
                    Text("Quantos anos ele(a) tem?")
                        .padding(.horizontal, 60)
                        .padding(.top, -200)
                    Spacer()
                }
                HStack {
                    TextField("", text: $age)
                    Image(systemName: "chevron.down")
                        .padding(.horizontal, 30)
                        .foregroundColor(Color("TextColorPrimary"))
                }
                .underlineTextField()
                .padding(.horizontal, 40)
                .padding(.top, -190)
                HStack {
                    Text("Algum caso de doença grave?")
                        .padding(.horizontal, 60)
                        .padding(.top, -110)
                    Spacer()
                }
                ChooseButtons(firstButtonAction: {
                    selectedSeriousIllness = .firstButton
                }, secondButtonAction: {
                    selectedSeriousIllness = .secondButton
                }, firstButtonLabel: "SIM", secondButtonLabel: "NÃO", selectedButton: $selectedSeriousIllness)
                .padding(.top, 10)
                HStack {
                    Text("Seu pet tem alguma doença infecciosa?")
                        .padding(.horizontal, 60)
                        .padding(.top, -110)
                    Spacer()
                }
                ChooseButtons(firstButtonAction: {
                    selectedInfecctionIllness = .firstButton
                }, secondButtonAction: {
                    selectedInfecctionIllness = .secondButton
                }, firstButtonLabel: "SIM", secondButtonLabel: "NÃO", selectedButton: $selectedInfecctionIllness)
                .padding(.top, 10)
                HStack{
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "chevron.backward")
                            .resizable()
                            .foregroundColor(Color("TextColorPrimary"))
                            .frame(width: 15, height: 25)
                    })
                    .padding(.horizontal, 50)
                    Spacer()
                    NavigationLink(
                        destination: RegisterThirdScreen(),
                        label: {
                            Image(systemName: "chevron.right.circle.fill")
                                .resizable()
                                .foregroundColor(Color("RegisterColorPrimary"))
                                .frame(width: 50, height: 50)
                        })
                        .padding(.horizontal, 50)
                }
                .padding(.top, 50)
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
    func underlineTextField() -> some View {
        self
            .padding(.vertical, 10)
            .overlay(Rectangle().frame(height: 1).padding(.top, 35))
            .foregroundColor(Color("RegisterColorPrimary"))
            .padding(10)
    }
}

struct RegisterThirdScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterThirdScreen()
    }
}

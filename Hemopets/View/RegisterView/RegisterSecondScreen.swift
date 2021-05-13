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
//    @State var decimalKilo: String = ""
//    @State var numeralKilo: String = ""
//    @State var decimalGram: String = ""
//    @State var numeralGram: String = ""
    
    var body: some View {
        RoundedRectangleView {
            VStack() {
                HStack {
                    Text("Qual o sexo do seu animalzinho?")
                        .font(.headline)
                        .fontWeight(.regular)
                        .padding(.horizontal, 40)
                    Spacer()
                }
                ChooseButtons(firstButtonAction: {
                    selectedGenderButton = .firstButton
                }, secondButtonAction: {
                    selectedGenderButton = .secondButton
                }, firstButtonLabel: "MACHO", secondButtonLabel: "FÊMEA", selectedButton: $selectedGenderButton)
                .padding(.top, 10)
                HStack {
                    Text("É castrado?")
                        .font(.headline)
                        .fontWeight(.regular)
                        .padding(.horizontal, 40)
                        .padding(.top, 20)
                    Spacer()
                }
                ChooseButtons(firstButtonAction: {
                    selectedCastratedButton = .firstButton
                }, secondButtonAction: {
                    selectedCastratedButton = .secondButton
                }, firstButtonLabel: "SIM", secondButtonLabel: "NÃO", selectedButton: $selectedCastratedButton)
                .padding(.top, 10)
                HStack {
                    Text("E o peso?")
                        .font(.headline)
                        .fontWeight(.regular)
                        .padding(.top, 30)
                        .padding(.horizontal, 40)
                    Spacer()
                }
                HStack {
//                    ZStack{
                        TextField("", text: $weight)
//                          .keyboardType(.numberPad)
                            .padding(.horizontal, 0)
                            .foregroundColor(Color("TextColorPrimary"))
//                        HStack {
//                            Picker("", selection: $decimalKilo) {
//                                ForEach(0 ..< 10) {
//                                    Text("\($0)")
//                                        .frame(width: 20)
//                                }
//                            }
//                            Picker("", selection: $numeralKilo) {
//                                ForEach(0 ..< 10) {
//                                    Text("\($0)")
//                                        .frame(width: 20)
//                                }
//                            }
//                            Picker("", selection: $decimalGram) {
//                                ForEach(0 ..< 10) {
//                                    Text("\($0)")
//                                        .frame(width: 20)
//                                }
//                            }
//                            Picker("", selection: $numeralGram) {
//                                ForEach(0 ..< 10) {
//                                    Text("\($0) kg")
//                                        .frame(width: 20)
//                                }
//                            }
//                        }
//                        .frame(width: 10)
//                    }
                    Image(systemName: "chevron.down")
                        .padding(.horizontal, 30)
                        .foregroundColor(Color("TextColorPrimary"))
                }
                .underlineTextField()
                .padding(.horizontal, 30)
                .padding(.top, -15)
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
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
    
    func underlineTextField() -> some View {
        self
            .padding(.vertical, 10)
            .overlay(Rectangle().frame(height: 1).padding(.top, 35))
            .foregroundColor(Color("RegisterColorPrimary"))
            .padding(10)
    }
}

struct RegisterSecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterSecondScreen()
    }
}


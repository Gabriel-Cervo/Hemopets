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
        NavigationView{
            RoundedRectangleView {
                VStack {
                    Image("NewImage")
                        .resizable()
                        .frame(width: 110, height: 110, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    HStack {
                        Text("Qual o nome do seu pet?")
                            .foregroundColor(Color("TextColorPrimary"))
                            .font(.headline)
                            .fontWeight(.regular)
                            .padding(.top, 30)
                            .padding(.horizontal, 50)
                        Spacer()
                    }
                    TextField("", text: $name)
                        .underlineTextField()
                        .padding(.horizontal, 40)
                        .padding(.top, -15)
                    HStack {
                        Text("Seu pet é um...")
                            .font(.headline)
                            .fontWeight(.regular)
                            .foregroundColor(Color("TextColorPrimary"))
                            .padding(.horizontal, 50)
                            .padding(.top)
                        Spacer()
                    }.padding(.bottom)
                    ChooseButtons(firstButtonAction: {
                        selectedButton = .firstButton
                    }, secondButtonAction: {
                        selectedButton = .secondButton
                    }, firstButtonLabel: "CACHORRO", secondButtonLabel: "GATO", selectedButton: $selectedButton)
                    HStack{
                        Spacer()
                        NavigationLink(
                            destination: RegisterSecondScreen(),
                            label: {
                                Image(systemName: "chevron.right.circle.fill")
                                    .resizable()
                                    .accentColor(Color("RegisterColorPrimary"))
                                    .frame(width: 50, height: 50)
                            })
                            .padding(.horizontal, 50)
                            .padding(.top, 50)
                    }
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}
    
//    var body: some View {
//        NavigationView{
//            ZStack {
//                Color.init("Background")
//                VStack {
//                    TitleView(text: "Cadastro")
//                        .font(.largeTitle)
//                        .padding(.vertical, 20)
//                    ZStack {
//                        RoundedRectangle(cornerRadius: 50)
//                            .accentColor(.white)
//                            .frame(width: 350, height: 500, alignment: .center)
//                            .padding(.vertical, 10)
//                        VStack {
//                            Image("NewImage")
//                                .resizable()
//                                .frame(width: 110, height: 110, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                                .padding(.top)
//                            HStack {
//                                Text("Qual o nome do seu pet?")
//                                    .foregroundColor(Color("TextColorPrimary"))
//                                    .font(.headline)
//                                    .fontWeight(.regular)
//                                    .padding(.top, 50)
//                                    .padding(.horizontal, 50)
//                                Spacer()
//                            }
//                            TextField("", text: $name)
//                                .underlineTextField()
//                                .padding(.horizontal, 40)
//                                .padding(.top, -15)
//                            HStack {
//                                Text("Seu pet é um...")
//                                    .font(.headline)
//                                    .fontWeight(.regular)
//                                    .foregroundColor(Color("TextColorPrimary"))
//                                    .padding(.horizontal, 50)
//                                    .padding(.top)
//                                Spacer()
//                            }.padding(.bottom)
//                            HStack{
//                                Button(action: {
//                                    self.selectedType = .dog
//                                    }, label: {
//                                        Text("CACHORRO")
//                                            .font(.subheadline)
//                                            .fontWeight(.bold)
//                                            .foregroundColor(self.selectedType == .dog ? .white : Color("RegisterColorPrimary"))
//                                    })
//                                .frame(width: 110, height: 20)
//                                .padding()
//                                .background(self.getButtonBackground(buttonType: .dog))
//                                Spacer()
//                                Button(action: {
//                                    self.selectedType = .cat
//                                    }, label: {
//                                        Text("GATO")
//                                            .font(.subheadline)
//                                            .fontWeight(.bold)
//                                            .foregroundColor(self.selectedType == .cat ? .white : Color("RegisterColorPrimary"))
//                                    })
//                                .frame(width: 110, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                                .padding()
//                                .background(self.getButtonBackground(buttonType: .cat))
//                                }
//                            .padding(.horizontal, 40)
//                            HStack{
//                                Spacer()
//                                NavigationLink(
//                                    destination: RegisterSecondScreen(),
//                                    label: {
//                                        Image(systemName: "chevron.right.circle.fill")
//                                            .resizable()
//                                            .accentColor(Color("RegisterColorPrimary"))
//                                            .frame(width: 50, height: 50)
//                                    })
//                                    .padding(.horizontal, 50)
//                                    .padding(.vertical, 30)
//                            }
//                        }
//                    }
//
//                }
//            }
//        }
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
            .foregroundColor(Color("RegisterColorPrimary"))
            .padding(10)
    }
}

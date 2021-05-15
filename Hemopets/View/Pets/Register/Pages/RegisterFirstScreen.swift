//
//  RegistrationScreen.swift
//  Hemopets
//
//  Created by Natália Brocca dos Santos on 12/05/21.
//

import SwiftUI

struct RegisterFirstScreen: View {
    @State private var name: String = ""
    @State private var selectedButton: ButtonId?
    
    @State private var showingImagePicker: Bool = false
    @State private var inputImage: UIImage?
    @State private var imageHasBeenSet: Bool = false
    
    
    var body: some View {
        RegisterContainerContentView {
            Group {
                ZStack {
                    Button(action: {
                            self.showingImagePicker = true
                    }) {
                        if imageHasBeenSet {
                            Image(uiImage: inputImage!)
                                .resizable()
                                .shadow(radius: 2)
                                .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                                .frame(width: UIScreen.main.bounds.width * 0.35, height: UIScreen.main.bounds.width * 0.35)
                                .cornerRadius(100)
                        } else {
                            Image("NewImage")
                                .resizable()
                                .shadow(radius: 2)
                                .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                                .frame(width: UIScreen.main.bounds.width * 0.35, height: UIScreen.main.bounds.width * 0.35)
                                .cornerRadius(100)
                        }
                    }
                    .opacity(imageHasBeenSet ? 1 : 0.6)
                    .padding(.top)
                }
                
                HStack(spacing: 0) {
                    Text("Toque")
                        .bold()
                    
                    Text(" na imagem para mudar a foto")
                }
                .foregroundColor(Color("TextColorPrimary"))
                .font(.subheadline)
                .padding(.top, 5)
                .padding(.bottom, 10)
                
                Divider()
                
                RegisterText(text: "Qual o nome do seu pet?")
                    .padding(.leading)
                    .padding(.top, 10)
                
                TextField("", text: $name)
                    .underlineTextField()
                    .padding(.horizontal)
                
                RegisterText(text: "Seu pet é um...")
                    .padding(.leading)
                    .padding(.top, Metrics.registerFieldPaddingTop - 5)
                
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
        .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
            ImagePicker(image: self.$inputImage)
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
    
    func saveValues() {
        PetRegistration.name = name
        PetRegistration.type = selectedButton == .firstButton ? .dog : .cat
        if imageHasBeenSet {
            guard let inputImage = inputImage else { return }
            PetRegistration.image = inputImage
        }
    }
    
    func loadImage() {
        imageHasBeenSet = true
    }
}
    
struct RegistrationScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterFirstScreen()
            .colorScheme(.dark)
            .previewDevice("iPhone 12")
        
        RegisterFirstScreen()
            .colorScheme(.dark)
            .previewDevice("iPhone 8")
    }

}

extension View {
    func underlineTextField() -> some View {
        self
            .overlay(Rectangle().frame(height: 1).padding(.top, 25))
            .foregroundColor(Color("ButtonPrimary"))
    }
}

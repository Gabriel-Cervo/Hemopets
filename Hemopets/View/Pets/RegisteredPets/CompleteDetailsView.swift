//
//  CompleteDetailsView.swift
//  Hemopets
//
//  Created by Matheus Polonia on 10/05/21.
//

import SwiftUI

struct CompleteDetailsView: View {
    @State var cat: Cat //typecast
    @State var catAge: String = ""
    
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            
            
            VStack(alignment: .leading) {
                PreviousPageButton(title: "Meus Pets")
                    .foregroundColor(.gray)
                    .padding(.top, Metrics.cardPaddingTop - 30)
                    .padding(.bottom, -10)
                
                ScrollView {
                    ZStack {
                        Color("Card")
                        
                        VStack {
                            Image("NewImage")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 120, height: 120)
                                .padding(.top, 30)
                                .shadow(radius: 2)
                            
                            SubtitleView(text: cat.name)
                                .padding()
                            
                            HStack {
                                VStack (alignment: .leading, spacing: 10) {
                                    Text("Informações Básicas")
                                        .font(.custom("Mithella-Bold", size: 20))
                                        .foregroundColor(.init("ButtonSecondary"))
                                    
                                    Group {
                                        EditableDetail(text: "Nome", textFieldValue: $catAge)
                                        EditableDetail(text: "Idade", textFieldValue: $catAge)
                                        EditableDetail(text: "Peso", textFieldValue: $catAge)
                                    }
                                    .padding(.trailing, 15)
                                }
                                .padding(.leading, 30)
                                Spacer()
                            }
                            
                            VStack(alignment: .leading) {
                                Text("Vacinas")
                                    .font(.custom("Mithella-Bold", size: 20))
                                    .foregroundColor(.init("ButtonSecondary"))
                                    .padding(.leading, 30)
                                    .padding(.top, 15)
                                    .padding(.bottom, -10)
                                
                                VaccinesListView()
                                    .frame(height: 180)
                                    .padding(.horizontal, 15)
                                    .colorScheme(.light)
                            }
                            .padding(.bottom, 40)
                            
                            Spacer()
                        }
                    }
                    .cornerRadius(50)
                    .padding(.horizontal, 10)
                    .padding(.bottom, 20)
                }
            }
            .onAppear() {
                catAge = String(cat.age)
            }
            .navigationBarHidden(true)
        }
    }
}

struct CompleteDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteDetailsView(cat: Cat(name: "Gato1", age: 20, weight: 30, imageName: "testeHemo"))
            .previewDevice("iPhone 12")
        
        CompleteDetailsView(cat: Cat(name: "Gato1", age: 20, weight: 30, imageName: "testeHemo"))
            .previewDevice("iPhone 8")
    }
}

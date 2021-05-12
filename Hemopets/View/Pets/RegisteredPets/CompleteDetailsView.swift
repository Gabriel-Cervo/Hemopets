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
            Color(.init("Background"))
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                HStack {
                    PreviousPageButton(title: "Meus Pets")
                        .foregroundColor(.gray)
                        .padding(.top, 105)
                    Spacer()
                }
                Spacer()
            }
            
            ZStack {
                Color("Card")
                
                ScrollView {
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
                                    .font(.custom("Mithella-Bold", size: 25))
                                    .foregroundColor(.init("ButtonSecondary"))
                                
                                EditableDetail(text: "Nome", textFieldValue: $catAge)
                                EditableDetail(text: "Idade", textFieldValue: $catAge)
                                EditableDetail(text: "Idade", textFieldValue: $catAge)

                            }
                            .padding(.leading, 30)
                            Spacer()
                        }
                        
                        VaccinesListView()
                            .frame(height: 180)
                            .padding(.horizontal, 15)
                        
                        Spacer()
                    }
                }
            }
            .frame(height: UIScreen.main.bounds.height * 0.92)
            .cornerRadius(45)
            .padding(.top, 160)
            .padding(.horizontal, 10)
        }
        .onAppear() {
            catAge = String(cat.age)
        }
        .navigationBarHidden(true)
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

//
//  NoPetsView.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 10/05/21.
//

import SwiftUI

struct NoPetsView: View {
    var body: some View {
        ZStack {
            Color.init("Background")
                .ignoresSafeArea()
            
            VStack {
                TitleView(text: "Meus Pets")
                    .padding(.top, Metrics.cardPaddingTop)
                
                VStack(alignment: .center) {
                    ZStack {
                        Color.init("Card")

                        VStack {
                            NoPetsIllustration(illustrationName: "NoPets")
                                .padding(.top, 45)
                                .padding(.bottom, 15)
                            
                            Text("Ei, tutor!")
                                .font(.custom("Mithella-Bold", size: 40))
                                .foregroundColor(.yellow)
                                .padding(.bottom, 5)
                            
                            Divider()
                                .frame(width: 300)
                            
                            VStack(alignment: .center, spacing: 15) {
                                Text("Vi que você ainda não cadastrou nenhum pet!")
                                    .font(.title2)
                                    .foregroundColor(.black)
                                    .bold()
                                    .lineLimit(2)
                                
                                Text("Que tal clicar no botão abaixo e ver se seu animalzinho pode ser um doador?")
                                    .font(.body)
                                    .foregroundColor(.black)
                                    .frame(width: 230)
                            }
                            .padding(.top, 10)
                            .frame(width: 300)
                            
                            Spacer()
                            
                            FinishButton(text: "Cadastrar meu Pet", nextView: AnyView(RegisterFirstScreen().background(Color("Background"))), width: 250)
                                .padding(.bottom, 25)
                            
                        }
                        
                    }
                    .cornerRadius(40)
                }
                .shadow(radius: 2)
                .padding()
                .navigationTitle("")
                .navigationBarBackButtonHidden(true)
                .navigationBarHidden(true)
            }
        }
    }
}

struct NoPetsView_Previews: PreviewProvider {
    static var previews: some View {
        NoPetsView()
            .previewDevice("iPhone SE")
    }
}

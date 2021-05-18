//
//  NotEligiblePetScreen.swift
//  Hemopets
//
//  Created by Rodrigo Okido on 17/05/21.
//

import SwiftUI

struct NotEligiblePetScreen: View {
    var body: some View {
        ZStack {
            Color.init("Background")
                .ignoresSafeArea()
            
            VStack {
                TitleView(text: "Cadastro")
                    .padding(.top, Metrics.cardPaddingTop)
                
                VStack(alignment: .center) {
                    ZStack {
                        Color.init("Card")

                        VStack {
                            Spacer()
                            
                            NoPetsIllustration(illustrationName: "PetNotEligible", width: 0.55, height: 0.45)
                                .padding(.top)
                                .padding(.bottom, 15)
                            
                            Text("Opa!")
                                .font(.custom("Mithella-Bold", size: 40))
                                .foregroundColor(.yellow)
                                .padding(.bottom, 0)

                            
                            VStack(alignment: .center, spacing: 15) {
                                Text("Infelizmente o seu pet não cumpriu os requisitos para se tornar um doador")
                                    .font(.title2)
                                    .bold()
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.black)
                                    .lineLimit(3)
                                
                                Text("Você pode conferir os requisitos mínimos na aba Dúvidas > Pré-requisitos.")
                                    .font(.body)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.black)
                                    .frame(width: 280)
                                    .lineLimit(3)
                            }
                            .padding(.top, 10)
                            .frame(width: 300)
                            
                            Spacer()
                            
                            FinishButton(text: "Entendi", nextView: AnyView(MainContentView().background(Color("Background"))), width: 250)
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

struct NotEligiblePetScreen_Previews: PreviewProvider {
    static var previews: some View {
        NotEligiblePetScreen()
    }
}

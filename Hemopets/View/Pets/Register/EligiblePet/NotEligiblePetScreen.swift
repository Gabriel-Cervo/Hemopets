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
                            NoPetsIllustration(illustrationName: "PetNotEligible")
                                .padding(.top, 45)
                                .padding(.bottom, 15)
                            
                            Text("Opa!")
                                .font(.custom("Mithella-Bold", size: 40))
                                .foregroundColor(.yellow)
                                .padding(.bottom, 5)

                            
                            VStack(alignment: .center, spacing: 15) {
                                Text("Infelizmente o seu pet não cumpriu os requisitos para se tornar um doador")
                                    .font(.title2)
                                    .foregroundColor(.black)
                                    .bold()
                                    .lineLimit(3)
                                
                                Text("Você pode conferir os requisitos mínimos na aba Dúvidas > Pré-requisitos.")
                                    .font(.body)
                                    .foregroundColor(.black)
                                    .frame(width: 280)
                            }
                            .padding(.top, 10)
                            .frame(width: 300)
                            
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

//
//  EligiblePetScreen.swift
//  Hemopets
//
//  Created by Rodrigo Okido on 17/05/21.
//

import SwiftUI

struct EligiblePetScreen: View {
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
                            
                            NoPetsIllustration(illustrationName: "PetEligible", width: 0.55, height: 0.45)
                                .padding(.top)
                                .padding(.bottom, 15)
                            
                            Text("Maravilha!")
                                .font(.custom("Mithella-Bold", size: 40))
                                .foregroundColor(.green)
                                .padding(.bottom, 5)
                            
                            
                            VStack(alignment: .center, spacing: 15) {
                                Text("Seu pet está previamente aprovado para se tornar um doador de sangue!")
                                    .bold()
                                    .multilineTextAlignment(.center)
                                    .font(.title2)
                                    .foregroundColor(.black)
                                    .lineLimit(3)
                                
                                Text("Entre em contato com o hemocentro de sua preferência e consulte maiores informações.")
                                    .font(.body)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.black)
                                    .frame(width: 280)
                            }
                            .padding(.top, 10)
                            .frame(width: 300)
                            
                            Spacer()
                            
                            FinishButton(text: "Entendi", nextView: AnyView(MainContentView().background(Color("Background")).colorScheme(.light)), width: 250)
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

struct EligiblePetScreen_Previews: PreviewProvider {
    static var previews: some View {
        EligiblePetScreen()
    }
}

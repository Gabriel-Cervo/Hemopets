//
//  SecondOnboardingPage.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 07/05/21.
//

import SwiftUI

struct SecondOnboardingPage: View {
    var body: some View {
        ZStack {
            OnboardingBackgroundView()
            
            VStack(alignment: .leading) {
                OnboardingIllustration()
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("Pets")
                        .foregroundColor(.init("Title"))
                        .font(.custom("Mithella-Bold", size: 30))
                    .padding(.bottom, 5)
                    
                    OnboardingDescriptionTextView(text: "Cadastre o seu pet e descubra se ele pode se tornar um doador e salvar vidas!")

                    ProgressView(activeCircle: 2)
                    
                    NextPageButton(nextView: AnyView(OnboardingView()))
                }
                Spacer()
            }
        }
    }
}

struct SecondOnboardingPage_Previews: PreviewProvider {
    static var previews: some View {
        SecondOnboardingPage()
    }
}

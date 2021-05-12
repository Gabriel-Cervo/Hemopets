//
//  ThirdOnboardingPage.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 07/05/21.
//

import SwiftUI

struct ThirdOnboardingPage: View {
    var body: some View {
        NavigationView {
            ZStack {
                OnboardingBackgroundView()
                
                VStack(alignment: .center) {
                    OnboardingIllustration(illustrationName: "ThirdOnboarding")
                    
                    VStack(alignment: .leading) {
                        Text("Hemocentros")
                            .foregroundColor(.init("Title"))
                            .font(.custom("Mithella-Bold", size: 30))
                        .padding(.bottom, 5)
                        
                        OnboardingDescriptionTextView(text: "Encontre o local mais próximo para realizar a doação de forma segura e rápida")

                        ProgressView(activeCircle: 3)
                        
                        ButtonAligned(nextPage: AnyView(FourthOnboardingPage()))
                    }
                    Spacer()
                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct ThirdOnboardingPage_Previews: PreviewProvider {
    static var previews: some View {
        ThirdOnboardingPage()
    }
}

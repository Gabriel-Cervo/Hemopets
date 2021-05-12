//
//  FirstOnboardingPage.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 07/05/21.
//

import SwiftUI

struct FirstOnboardingPage: View {
    var body: some View {
        NavigationView {
            ZStack {
                OnboardingBackgroundView()
                
                VStack(alignment: .center) {
                    OnboardingIllustration(illustrationName: "FirstOnboarding")

                    VStack(alignment: .leading) {
                        HStack(spacing: 0) {
                            Text("Hemo")
                                .foregroundColor(.init("ButtonPrimary"))
                                .font(.custom("Mithella-Bold", size: 30))
                            
                            Text("Pets")
                                .foregroundColor(.init("Title"))
                                .font(.custom("Mithella-Regular", size: 30))
                        }
                        .padding(.bottom, 5)
                        
                        OnboardingDescriptionTextView(text: "Faça do seu companheiro um verdadeiro salva-vidas!")

                        ProgressView(activeCircle: 1)
                        
                        ButtonAligned(nextPage: AnyView(SecondOnboardingPage()))
                    }
                    Spacer()
                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct FirstOnboardingPage_Previews: PreviewProvider {
    static var previews: some View {
        FirstOnboardingPage()
    }
}

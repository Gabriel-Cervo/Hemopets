//
//  FourthOnboardingPage.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 07/05/21.
//

import SwiftUI

struct FourthOnboardingPage: View {
    var body: some View {
        ZStack {
            OnboardingBackgroundView()
            
            VStack(alignment: .center) {
                Spacer()
                
                OnboardingIllustration(illustrationName: "FourthOnboarding")
                
                VStack(alignment: .leading) {
                    Text("Saiba mais")
                        .foregroundColor(.init("Title"))
                        .font(.custom("Mithella-Bold", size: 30))
                    .padding(.bottom, 5)
                    
                    OnboardingDescriptionTextView(text: "Descubra sobre o procedimento e os pré-requisitos necessários para realizar a doação")

                    ProgressView(activeCircle: 4)
                    
                    FinishButton(text: "Vamos lá!", nextView: AnyView(MainContentView()))
                        .frame(width: 300, alignment: .center)
                        .padding(.top, 30)
                        .padding(.leading, 10)
                }
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

struct FourthOnboardingPage_Previews: PreviewProvider {
    static var previews: some View {
        FourthOnboardingPage()
    }
}

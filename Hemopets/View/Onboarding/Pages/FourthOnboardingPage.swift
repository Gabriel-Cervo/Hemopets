//
//  FourthOnboardingPage.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 07/05/21.
//

import SwiftUI

struct FourthOnboardingPage: View {
    var body: some View {
        NavigationView {
            ZStack {
                OnboardingBackgroundView()
                
                VStack(alignment: .leading) {
                    OnboardingIllustration(illustrationName: "Blank4")

                    Spacer()
                    
                    VStack(alignment: .leading) {
                        Text("Dúvidas")
                            .foregroundColor(.init("Title"))
                            .font(.custom("Mithella-Bold", size: 30))
                        .padding(.bottom, 5)
                        
                        OnboardingDescriptionTextView(text: "Saiba mais sobre o procedimento e os pré-requisitos necessários para realizar a doação")

                        ProgressView(activeCircle: 4)
                        
                        FinishButton(text: "Vamos lá!", nextView: AnyView(MapView()))
                            .frame(width: 300, alignment: .center)
                            .padding(.top, 30)
                            .padding(.leading, 10)
                    }
                    Spacer()
                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct FourthOnboardingPage_Previews: PreviewProvider {
    static var previews: some View {
        FourthOnboardingPage()
    }
}

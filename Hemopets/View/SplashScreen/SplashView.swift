//
//  SplashView.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 07/05/21.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            OnboardingBackgroundView()
            
            VStack(alignment: .center) {
                Spacer()
                
                SplashIllustration(illustrationName: "Blank4")
                    .padding(.bottom, 10)
                
                VStack(alignment: .leading) {
                    HStack(spacing: 0) {
                        Text("Hemo")
                            .foregroundColor(.init("ButtonPrimary"))
                            .font(.custom("Mithella-Bold", size: 40))
                        
                        Text("Pets")
                            .foregroundColor(.init("Title"))
                            .font(.custom("Mithella-Regular", size: 40))
                    }
                }
                Spacer()
            }
            .padding(.bottom, 55)
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}

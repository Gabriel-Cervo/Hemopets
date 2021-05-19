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
                
                SplashIllustration(illustrationName: "Logo")
                
                Spacer()
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}

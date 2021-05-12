//
//  OnboardingIllustration.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 07/05/21.
//

import SwiftUI

struct OnboardingIllustration: View {
    var illustrationName: String
    
    var body: some View {
        Image(illustrationName)
            .resizable()
            .cornerRadius(10)
            .frame(width: 300 * Metrics.sizeModifier, height: 300 * Metrics.sizeModifier)
            .padding(.bottom, 30)
    }
}

struct OnboardingIllustration_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingIllustration(illustrationName: "Blank4")
    }
}

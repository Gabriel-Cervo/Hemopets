//
//  OnboardingIllustration.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 07/05/21.
//

import SwiftUI

struct OnboardingIllustration: View {
    var body: some View {
        Image("Blank4")
            .resizable()
            .cornerRadius(10)
            .frame(width: 300, height: 300)
    }
}

struct OnboardingIllustration_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingIllustration()
    }
}

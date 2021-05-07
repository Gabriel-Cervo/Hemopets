//
//  OnboardingDescriptionTextView.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 07/05/21.
//

import SwiftUI

struct OnboardingDescriptionTextView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .frame(width: 300, alignment: .leading)
            .foregroundColor(.gray)
    }
}

struct OnboardingDescriptionTextView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingDescriptionTextView(text: "Faça do seu companheiro um verdadeiro salva-vidas!")
    }
}

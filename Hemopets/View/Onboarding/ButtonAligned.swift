//
//  ButtonAligned.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 07/05/21.
//

import SwiftUI

struct ButtonAligned: View {
    var nextPage: AnyView
    
    var body: some View {
        NextPageButton(nextView: nextPage)
            .frame(width: 300, alignment: .trailing)
            .padding(.top, 30)
            .padding(.leading, 10)
    }
}

struct ButtonAligned_Previews: PreviewProvider {
    static var previews: some View {
        ButtonAligned(nextPage: AnyView(OnboardingView()))
    }
}

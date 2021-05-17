//
//  ButtonAligned.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 07/05/21.
//

import SwiftUI

struct ButtonAligned: View {
    var nextPage: AnyView
    var showPrevious: Bool = true
    
    var body: some View {
        HStack {
            if showPrevious {
                PreviousPageButton()
            }
            
            Spacer()
            
            NextPageButton(nextView: nextPage)
        }
        .frame(width: 300)
        .padding(.top, 40)
    }
}

struct ButtonAligned_Previews: PreviewProvider {
    static var previews: some View {
        ButtonAligned(nextPage: AnyView(OnboardingView()))
    }
}

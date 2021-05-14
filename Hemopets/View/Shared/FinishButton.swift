//
//  FinishButton.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 07/05/21.
//

import SwiftUI
struct FinishButton: View {
    var text: String
    var nextView: AnyView
    var width: Int?
    
    var onClick: (() -> Void)?
    
    var body: some View {
        NavigationLink(destination: nextView) {
            ZStack {
                Color.init("ButtonPrimary")
                
                Text(text)
                    .bold()
                    .foregroundColor(.white)
                    .textCase(.uppercase)
                    .font(.system(.callout))
            }
            .frame(width: CGFloat(width ?? 170), height: 45)
            .cornerRadius(20)
        }
        .simultaneousGesture(TapGesture().onEnded {
            onClick?()
        })
    }
}

struct FinishButton_Previews: PreviewProvider {
    static var previews: some View {
        FinishButton(text: "Vamos lá!", nextView: AnyView(FirstOnboardingPage()), width: 170)
    }
}

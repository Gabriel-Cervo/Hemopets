//
//  NextPageButton.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 07/05/21.
//

import SwiftUI

struct NextPageButton: View {
    var nextView: AnyView
    var onClick: (() -> Void)?
    var isActive: Bool = true
    
    var body: some View {
        if isActive {
            NavigationLink(destination: nextView) {
                NextPageButtonDesign()
            }
            .simultaneousGesture(TapGesture().onEnded {
                onClick?()
            })
        } else {
            NextPageButtonDesign(backgroundColor: "ButtonSecondary")
                .opacity(0.6)
        }
    }
}

struct NextPageButtonDesign: View {
    var backgroundColor: String = "ButtonPrimary"
    
    var body: some View {
        ZStack {
            Color(backgroundColor)
            
            Image(systemName: "chevron.right")
                .resizable()
                .frame(width: 15, height: 20)
                .foregroundColor(.white)
        }
        .frame(width: 55, height: 55)
        .cornerRadius(30)
    }
}

struct NextPageButton_Previews: PreviewProvider {
    static var previews: some View {
        NextPageButton(nextView: AnyView(FirstOnboardingPage()), onClick: {
            print("AAA")
        }, isActive: false)
    }
}

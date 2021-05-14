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
    
    var body: some View {
        NavigationLink(destination: nextView) {
            ZStack {
                Color.init("ButtonPrimary")
                
                Image(systemName: "chevron.right")
                    .resizable()
                    .frame(width: 15, height: 20)
                    .foregroundColor(.white)
            }
            .frame(width: 55, height: 55)
            .cornerRadius(30)
        }
        .simultaneousGesture(TapGesture().onEnded {
            onClick?()
        })
    }
}

struct NextPageButton_Previews: PreviewProvider {
    static var previews: some View {
        NextPageButton(nextView: AnyView(FirstOnboardingPage()), onClick: {
            print("AAA")
        })
    }
}

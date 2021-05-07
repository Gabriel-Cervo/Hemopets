//
//  NextPageButton.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 07/05/21.
//

import SwiftUI

struct NextPageButton: View {
    var nextView: AnyView
    
    var body: some View {
        NavigationLink(destination: nextView) {
            ZStack {
                Color.init("ButtonPrimary")
                
                Image(systemName: "greaterthan")
                    .resizable()
                    .frame(width: 18, height: 18)
                    .foregroundColor(.white)
            }
            .frame(width: 55, height: 55)
            .cornerRadius(30)
        }
    }
}

struct NextPageButton_Previews: PreviewProvider {
    static var previews: some View {
        NextPageButton(nextView: AnyView(FirstOnboardingPage()))
    }
}

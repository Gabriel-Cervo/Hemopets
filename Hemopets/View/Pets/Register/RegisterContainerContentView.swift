//
//  RoundedRectangleView.swift
//  Hemopets
//
//  Created by Natália Brocca dos Santos on 12/05/21.
//

import SwiftUI

struct RegisterContainerContentView<Content: View>: View {
    var content: () -> Content
    
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    var body: some View {
        ZStack {
            Color.init("Background")
                .ignoresSafeArea()
            
            VStack {
                TitleView(text: "Cadastro")
                RoundedRectangleView(content: content)
                    .padding()
                Spacer()
            }
            .padding(.top, Metrics.cardPaddingTop)
        }
    }
}

struct RegisterContainerContentView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterContainerContentView() {
            Text("oi")
        }
    }
}

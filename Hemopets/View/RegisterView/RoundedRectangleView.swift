//
//  RoundedRectangleView.swift
//  Hemopets
//
//  Created by Natália Brocca dos Santos on 12/05/21.
//

import SwiftUI

struct RoundedRectangleView<Content: View>: View {
    var content: () -> Content
    
    var body: some View {
        ZStack {
            Color.init("Background")
            VStack {
                TitleView(text: "Cadastro")
                    .font(.largeTitle)
                    .padding(.vertical, 20)
                ZStack() {
                    RoundedRectangle (cornerRadius: 50)
                        .foregroundColor(.white)
                        .frame(width: 350, height: 500, alignment: .center)
                        .padding(.vertical, 10)
                    ZStack(content: content)
                }
            }
        }
    }
}

struct RoundedRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RoundedRectangleView() {
            Text("oi")
        }
    }
}

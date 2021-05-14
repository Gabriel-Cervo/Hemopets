//
//  RoundedRectangleView.swift
//  Hemopets
//
//  Created by Natália Brocca dos Santos on 13/05/21.
//

import SwiftUI

struct RoundedRectangleView<Content: View>: View {
    
    var content: () -> Content
    
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    var body: some View {
        VStack(content: content)
            .background(RoundedRectangle (cornerRadius: 40)
            .foregroundColor(.white))
    }
}

struct RoundedRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RoundedRectangleView(content: {Text("legal")})
    }
}

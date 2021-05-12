//
//  DisclosureDetailsView.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 12/05/21.
//

import SwiftUI

struct DisclosureDetailsView: View {
    var text: String
    
    var body: some View {
        Divider()
            .padding()
            .padding(.bottom, -25)
        
        Text(text)
            .font(.callout)
            .foregroundColor(Color("ButtonSecondary"))
            .padding()
            .lineLimit(500)
    }
}

struct DisclosureDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureDetailsView(text: "Teste")
    }
}

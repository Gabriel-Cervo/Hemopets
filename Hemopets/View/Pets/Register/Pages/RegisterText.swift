//
//  RegisterText.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 14/05/21.
//

import SwiftUI

struct RegisterText: View {
    var text: String
    
    var body: some View {
        HStack {
            Text(text)
                .foregroundColor(Color("TextColorPrimary"))
                .font(.title3)
                .fontWeight(.medium)
            Spacer()
        }
    }
}

struct RegisterText_Previews: PreviewProvider {
    static var previews: some View {
        RegisterText(text: "teste")
    }
}

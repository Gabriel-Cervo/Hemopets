//
//  FormPickerView.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 15/05/21.
//

import SwiftUI

struct FormPickerView: View {
    var text: String
    
    var body: some View {
        HStack(spacing: 0) {
            Text(text)
            
            Spacer()
            
            Image(systemName: "chevron.down")
                .foregroundColor(Color("ButtonPrimary"))
                .font(.title3)
        }
        .overlay(Rectangle().frame(height: 1).padding(.top, 25))
    }
}

struct FormPickerView_Previews: PreviewProvider {
    static var previews: some View {
        FormPickerView(text: "teste")
    }
}

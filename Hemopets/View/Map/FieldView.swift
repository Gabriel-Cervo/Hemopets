//
//  FieldView.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 06/05/21.
//

import SwiftUI

struct FieldView: View {
    var iconName: String
    var fieldName: String
    var fieldDescription: String
    
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: iconName)
                .offset(y: 2)
                .foregroundColor(.black)
            
            VStack(alignment: .leading, spacing: 2) {
                Text(fieldName)
                    .bold()
                    .font(.headline)
                    .foregroundColor(.black)
                
                Text(fieldDescription)
                    .font(.subheadline)
                    .foregroundColor(.black)
            }
        }
        .frame(width: 255, alignment: .leading)
        .padding(.bottom, 10)
    }
}

struct FieldView_Previews: PreviewProvider {
    static var previews: some View {
        FieldView(iconName: "pencil", fieldName: "Endereço:", fieldDescription: "R. Dr. Florêncio Ygartua, 429 - Moinhos de Vento, Porto Alegre - RS, 90430-010")
    }
}

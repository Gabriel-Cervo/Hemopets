//
//  EditableDetail.swift
//  Hemopets
//
//  Created by Matheus Polonia on 11/05/21.
//

import SwiftUI

struct EditableDetail: View {
    var text: String
    @Binding var textFieldValue: String
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Text("\(text):")
                    .foregroundColor(.gray)
                
                TextField(text, text: $textFieldValue)
                    .foregroundColor(.black)
                    .padding(.trailing, 40)
            }
            
            Divider()
                .padding(.vertical, 5)
        }
    }
}

struct EditableDetail_Previews: PreviewProvider {
    static var previews: some View {
        EditableDetail(text: "Nome", textFieldValue: Binding.constant("Roberto"))
    }
}

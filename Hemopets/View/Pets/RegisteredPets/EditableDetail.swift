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
                Text(text)
                    .padding(.leading, 5)
                
                Spacer()
                
                TextField(text, text: $textFieldValue)
                    .multilineTextAlignment(.trailing)
                    .padding(.trailing, 40)
            }
            
            Divider()
                .padding(.vertical, 5)
        }
    }
}

struct EditableDetail_Previews: PreviewProvider {
    static var previews: some View {
        EditableDetail(text: "1", textFieldValue: Binding.constant("Roberto"))
    }
}

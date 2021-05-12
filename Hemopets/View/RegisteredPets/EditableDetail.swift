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
        VStack (spacing: 0) {
            HStack{
                Text("\(text)")
                Spacer()
                TextField("\(text)", text: $textFieldValue)
                    .multilineTextAlignment(.center)
                    .frame(width: 200)
            }
            Divider()
                .padding(.top, 2)
        }
    }
}


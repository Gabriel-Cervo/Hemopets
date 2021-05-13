//
//  ChooseButtons.swift
//  Hemopets
//
//  Created by Natália Brocca dos Santos on 12/05/21.
//

import SwiftUI

enum ButtonId {
    case firstButton
    case secondButton
}

struct ChooseButtons: View {
    var firstButtonAction: () -> Void
    var secondButtonAction: () -> Void
    var firstButtonLabel: String
    var secondButtonLabel: String
    @Binding var selectedButton: ButtonId?
    var body: some View {
        HStack{
            Button(action: firstButtonAction,
                   label: {
                    Text(firstButtonLabel)
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundColor(self.selectedButton == .firstButton ? .white : Color("RegisterColorPrimary"))
                })
            .frame(width: 110, height: 15)
            .padding()
                .background(self.getButtonBackground(buttonId: .firstButton))
            Spacer()
            Button(action: secondButtonAction,
                   label: {
                    Text(secondButtonLabel)
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundColor(self.selectedButton == .secondButton ? .white : Color("RegisterColorPrimary"))
                })
                .frame(width: 110, height: 15)
            .padding()
                .background(self.getButtonBackground(buttonId: .secondButton))
            }
        .padding(.horizontal, 42)
    }
    
    @ViewBuilder
    func getButtonBackground(buttonId: ButtonId) -> some View {
        if buttonId == selectedButton {
            RoundedRectangle(cornerRadius: 25).foregroundColor(Color("RegisterColorPrimary"))
        } else {
            RoundedRectangle(cornerRadius: 25).stroke(Color("RegisterColorPrimary"), lineWidth: 2)
        }
    }
}

struct ChooseButtons_Previews: PreviewProvider {
    static var previews: some View {
        ChooseButtons(firstButtonAction: {}, secondButtonAction: {}, firstButtonLabel: "CACHORRO", secondButtonLabel: "GATO", selectedButton: .constant(nil))
    }
}

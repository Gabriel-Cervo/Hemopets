//
//  PreviousPageButton.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 07/05/21.
//

import SwiftUI

struct PreviousPageButton: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "chevron.left")
                .resizable()
                .frame(width: 15, height: 20)
                .foregroundColor(.gray)
                .frame(width: 55, height: 55)
                .cornerRadius(30)
        })
    }
}

struct PreviousPageButton_Previews: PreviewProvider {
    static var previews: some View {
        PreviousPageButton()
    }
}
//
//  SubtitleView.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 06/05/21.
//

import SwiftUI

struct SubtitleView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.custom("Mithella-Bold", size: 25))
            .foregroundColor(.init("ButtonPrimary"))
    }
}

struct SubtitleView_Previews: PreviewProvider {
    static var previews: some View {
        SubtitleView(text: "Teste")
    }
}

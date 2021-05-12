//
//  TitleView.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 06/05/21.
//

import SwiftUI

struct TitleView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.custom("Mithella-Bold", size: 30 + Metrics.fontSize))
            .foregroundColor(.init("Title"))
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(text: "Hemocentros")
    }
}

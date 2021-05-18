//
//  NoPetsIllustration.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 10/05/21.
//

import SwiftUI

struct NoPetsIllustration: View {
    var illustrationName: String
    var width: CGFloat = 0.35
    var height: CGFloat = 0.35

    
    var body: some View {
        Image(illustrationName)
            .resizable()
            .cornerRadius(10)
            .frame(width: UIScreen.main.bounds.width * width, height: UIScreen.main.bounds.width * height)
    }
}

struct NoPetsIllustration_Previews: PreviewProvider {
    static var previews: some View {
        NoPetsIllustration(illustrationName: "blank4")
    }
}

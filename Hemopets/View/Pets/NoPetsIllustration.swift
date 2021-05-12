//
//  NoPetsIllustration.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 10/05/21.
//

import SwiftUI

struct NoPetsIllustration: View {
    var illustrationName: String
    
    var body: some View {
        Image(illustrationName)
            .resizable()
            .cornerRadius(10)
            .frame(width: UIScreen.main.bounds.width * 0.35, height: UIScreen.main.bounds.width * 0.35)
    }
}

struct NoPetsIllustration_Previews: PreviewProvider {
    static var previews: some View {
        NoPetsIllustration(illustrationName: "blank4")
    }
}
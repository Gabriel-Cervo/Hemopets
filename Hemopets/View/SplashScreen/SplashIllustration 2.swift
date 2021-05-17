//
//  SplashIllustration.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 10/05/21.
//

import SwiftUI

struct SplashIllustration: View {
    var illustrationName: String
    
    var body: some View {
        Image(illustrationName)
            .resizable()
            .frame(width: 180, height: 180)
    }
}

struct SplashIllustration_Previews: PreviewProvider {
    static var previews: some View {
        SplashIllustration(illustrationName: "blank4")
    }
}

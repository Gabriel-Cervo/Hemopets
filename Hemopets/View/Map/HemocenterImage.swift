//
//  HemocenterImage.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 06/05/21.
//

import SwiftUI

struct HemocenterImage: View {
    var imageName: String
    
    var body: some View {
        HStack {
            Spacer()
            Image(imageName)
                .resizable()
                .frame(width: 300, height: 250)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
                .shadow(radius: 1)
            Spacer()
        }
    }
}

struct HemocenterImage_Previews: PreviewProvider {
    static var previews: some View {
        HemocenterImage(imageName: MapConstants.pins[0].info.name)
    }
}

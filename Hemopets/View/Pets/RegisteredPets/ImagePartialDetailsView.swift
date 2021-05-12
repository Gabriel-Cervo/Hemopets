//
//  ImagePartialDetailsView.swift
//  Hemopets
//
//  Created by Matheus Polonia on 10/05/21.
//

import SwiftUI

struct ImagePartialDetailsView: View {
    var imageName: String
    var isViable: Bool
    var body: some View {
        ZStack {
            Image(imageName)
                .resizable()
                .clipShape(Circle())
                .frame(width: 75, height: 75)
            
            Image(systemName: isViable ? "checkmark.seal" : "xmark.seal")
                .resizable()
                .foregroundColor(isViable ? .green : .yellow)
                .frame(width: 40, height: 40)
                .padding([.leading, .top], 60)
        }
        
        .frame(width: 115, height: 115)
    }
}

struct ImagePartialDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePartialDetailsView(imageName: "NewImage", isViable: true)
    }
}

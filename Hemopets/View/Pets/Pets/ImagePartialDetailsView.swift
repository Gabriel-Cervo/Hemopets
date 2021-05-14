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
            
            Image(systemName: isViable ? "checkmark.seal.fill" : "xmark.seal.fill")
                .font(.largeTitle)
                .foregroundColor(isViable ? .green : .yellow)
                .padding(.top, 50)
                .padding(.leading, 80)
        }
        
        .frame(width: 115, height: 115)
    }
}

struct ImagePartialDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePartialDetailsView(imageName: "NewImage", isViable: false)
    }
}

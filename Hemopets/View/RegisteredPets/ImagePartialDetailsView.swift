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
        ZStack{
            Image(imageName)
                .resizable()
                .clipShape(Circle())
                .frame(width: 75, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Image(systemName: isViable ? "checkmark.seal" : "xmark.seal")
                .resizable()
                .foregroundColor(isViable ? Color(UIColor.systemGreen) : Color(UIColor.systemYellow))
                .frame(width: 40, height: 40)
                .offset(x: 30, y: 30)
        }.frame(width: 115, height: 115)
    }
}

struct ImagePartialDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePartialDetailsView(imageName: "testeHemo", isViable: true)
    }
}

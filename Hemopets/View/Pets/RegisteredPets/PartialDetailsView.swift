//
//  PartialDetailsView.swift
//  Hemopets
//
//  Created by Matheus Polonia on 10/05/21.
//

import SwiftUI

struct PartialDetailsView: View {
    var name: String
    var imageName: String
    var type: String
    var isViable: Bool
    
    var body: some View {
        ZStack {
            Color("Card")
            
            HStack {
                ImagePartialDetailsView(imageName: imageName, isViable: isViable)
                
                VStack (alignment: .leading, spacing: 2) {
                    SubtitleView(text: name)
                    Text("\(type)")
                        .foregroundColor(.gray)
                    Text(isViable ? "Doador" : "Não Doador")
                        .foregroundColor(isViable ? .green : .yellow)
                        .bold()
                }
                Spacer()
            }
        }
        .frame(height: 120)
        .cornerRadius(25)
        .shadow(radius: 2)
    }
}

struct PartialDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PartialDetailsView(name: "Felino", imageName: "testeHemo", type: "gato", isViable: true)
    }
}

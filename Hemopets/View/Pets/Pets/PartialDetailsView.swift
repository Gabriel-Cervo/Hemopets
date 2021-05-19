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
    var type: PetType
    var isViable: Bool
    
    var body: some View {
        ZStack {
            Color("Card")
            
            HStack {
                ImagePartialDetailsView(imageName: imageName, isViable: isViable)
                    .padding(.leading)
                
                VStack(alignment: .leading, spacing: 2) {
                    SubtitleView(text: name)
                        .lineLimit(2)
                    
                    Text(type == .cat ? "Gato" : "Cachorro")
                        .foregroundColor(.gray)
                    
                    Text(isViable ? "Doador" : "Não Doador")
                        .foregroundColor(isViable ? .green : .yellow)
                        .bold()
                }
                .frame(width: 130, alignment: .leading)
                
                Image(systemName: "square.and.pencil")
                    .font(.title3)
                    .foregroundColor(.gray)
                    .padding(.trailing)
            }
        }
        .cornerRadius(25)
        .shadow(radius: 2)
    }
}

struct PartialDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PartialDetailsView(name: "Felino", imageName: "testeHemo", type: .cat, isViable: true)
    }
}

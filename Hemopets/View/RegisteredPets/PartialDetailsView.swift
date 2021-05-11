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
            Image("Blank3")
                .resizable()
                .frame(width: 370, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            HStack{
                ImagePartialDetailsView(imageName: imageName, isViable: isViable)
                    .padding(.leading, 20)
                VStack (alignment: .leading, spacing: 2) {
                    SubtitleView(text: name)
                    Text("\(type)")
                    Text(isViable ? "Doador" : "Não Doador")
                        .foregroundColor(isViable ? Color(UIColor.systemGreen) : Color(UIColor.systemYellow))
                        .bold()
                }
                Spacer()
                Image(systemName: "square.and.pencil")
                    .resizable()
                    .frame(width: 35, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(.trailing, 30)
            }
        }.frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
    }
}

struct PartialDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PartialDetailsView(name: "Felino", imageName: "testeHemo", type: "gato", isViable: true)
    }
}

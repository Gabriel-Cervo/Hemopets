//
//  ArrayFieldView.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 08/05/21.
//

import SwiftUI

struct ArrayFieldView: View {
    var iconName: String
    var fieldName: String
    var fieldDescription: [String]
    var isURL: Bool = false
    
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: iconName)
                .offset(y: 2)
                .foregroundColor(.black)
            
            VStack(alignment: .leading, spacing: 2) {
                Text(fieldName)
                    .bold()
                    .font(.headline)
                    .foregroundColor(.black)
                
                ForEach(fieldDescription, id: \.self) {
                    if isURL {
                        Link($0, destination: URL(string: $0)!)
                            .font(.subheadline)
                            .foregroundColor(Color.init("Title"))
                            .padding(.bottom, 5)
                    } else {
                        Text($0)
                            .font(.subheadline)
                            .foregroundColor(.black)
                            .lineLimit(5)
                    }
                }
            }
        }
        .frame(width: 255, alignment: .leading)
        .padding(.bottom, 10)
    }
}

struct ArrayFieldView_Previews: PreviewProvider {
    static var previews: some View {
        ArrayFieldView(iconName: "pencil", fieldName: "Horários:", fieldDescription: MapConstants.pins[3].info.openingHours, isURL: false)
    }
}

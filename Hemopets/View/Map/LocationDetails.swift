//
//  LocationDetails.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 04/05/21.
//

import SwiftUI

struct LocationDetails: View {
    var name: String
    
    var body: some View {
        ZStack {
            Color.init("Card")

            VStack(alignment: .leading) {
                
                SwipeDownIndicatorView()
                
                HStack {
                    Spacer()
                    TitleView(text: "Detalhes")
                    Spacer()
                }
                .padding(.bottom, 10)
                
                HemocenterImage(imageName: "testeHemo")
                
                VStack(alignment: .leading) {
                    SubtitleView(text: name)
                        .padding(.vertical, 15)
                    
                    FieldView(iconName: "phone.circle.fill", fieldName: "Telefone:", fieldDescription: " (51) 3072-0427")
                    
                    FieldView(iconName: "clock.fill", fieldName: "Horário:", fieldDescription: "09:00 - 18:30 (segunda a sexta)")
                    
                    FieldView(iconName: "location.circle.fill", fieldName: "Endereço:", fieldDescription: "R. Dr. Florêncio Ygartua, 429 - Moinhos de Vento, Porto Alegre - RS, 90430-010")
                }
                .padding(.leading, 10)
                
                Spacer()
            }
            .padding()
        }
    }
}

struct LocationDetails_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetails(name: "Companhia dos bichos")
    }
}

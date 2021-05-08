//
//  LocationDetails.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 04/05/21.
//

import SwiftUI

struct LocationDetails: View {
    var hemocenter: Hemocenter
    
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
                    SubtitleView(text: hemocenter.name)
                        .padding(.vertical, 15)
                    
                    ArrayFieldView(iconName: "phone.circle.fill", fieldName: "Telefone:", fieldDescription: hemocenter.telephoneNumbers)
                    
                    ArrayFieldView(iconName: "clock.fill", fieldName: "Horário:", fieldDescription: hemocenter.openingHours)
                    
                    FieldView(iconName: "location.circle.fill", fieldName: "Endereço:", fieldDescription: hemocenter.address)
                    
                    ArrayFieldView(iconName: "desktopcomputer", fieldName: "Sites:", fieldDescription: hemocenter.websites ?? [""], isURL: true)
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
        LocationDetails(hemocenter: MapConstants.pins[0].info)
    }
}

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
                
                ScrollView {
                    HemocenterImage(imageName: hemocenter.name)
                    
                    VStack(alignment: .leading) {
                        SubtitleView(text: hemocenter.name)
                            .padding(.vertical, 15)
                            .frame(width: 350, alignment: .leading)
                        
                        HStack {
                            HemocenterButtonView(icon: "phone.fill", text: "Ligar") {
                                let telephone = "tel://"
                                
                                let cleanString = cleanTelephoneString(number: hemocenter.telephoneNumbers.first!)
                                
                                let formattedString = telephone + cleanString
                                guard let url = URL(string: formattedString) else { return }
                                
                                UIApplication.shared.open(url)
                            }
                            
                            HemocenterButtonView(icon: "car.fill", text: "Como chegar", needsMoreSpace: true, onTap: {})
                        }
                        
                        ArrayFieldView(iconName: "phone.circle.fill", fieldName: "Telefone:", fieldDescription: hemocenter.telephoneNumbers)
                        
                        ArrayFieldView(iconName: "clock.fill", fieldName: "Horário:", fieldDescription: hemocenter.openingHours)
                        
                        FieldView(iconName: "location.circle.fill", fieldName: "Endereço:", fieldDescription: hemocenter.address)
                        
                        ArrayFieldView(iconName: "desktopcomputer", fieldName: "Sites:", fieldDescription: hemocenter.websites ?? [""], isURL: true)
                    }
                    Spacer()
                }
                .padding(.horizontal, 10)
            }
            .padding()
        }
    }
    
    func cleanTelephoneString(number: String) -> String {
        return number.replacingOccurrences(of: "(", with: "").replacingOccurrences(of: ")", with: "").replacingOccurrences(of: "-", with: "")
            .replacingOccurrences(of: " ", with: "")
    }
}

struct LocationDetails_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetails(hemocenter: MapConstants.pins[3].info)
    }
}

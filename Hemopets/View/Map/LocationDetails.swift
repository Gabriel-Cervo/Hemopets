//
//  LocationDetails.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 04/05/21.
//

import SwiftUI
import MapKit

struct LocationDetails: View {
    var hemocenter: Hemocenter
    
    var body: some View {
        ZStack {
            Color("Card")

            VStack(alignment: .leading) {
                
                SwipeDownIndicatorView()
                    .padding(.top, 25)
                
                HStack {
                    Spacer()
                    TitleView(text: "Detalhes")
                    Spacer()
                }
                .padding(.bottom, 10)
                
                ScrollView {
                    HemocenterImage(imageName: hemocenter.name)
                        .padding(.top, 10)
                    
                    VStack(alignment: .leading) {
                        SubtitleView(text: hemocenter.name)
                            .padding(.bottom, 15)
                            .frame(width: 350, alignment: .leading)
                        
                        HStack {
                            HemocenterButtonView(icon: "phone.fill", text: "Ligar", onTap: callHemocenter)
                            
                            HemocenterButtonView(icon: "car.fill", text: "Como chegar", needsMoreSpace: true, onTap: openHemocenterInMaps)
                        }
                        .padding(.bottom, 15)
                        
                        ArrayFieldView(iconName: "phone.circle.fill", fieldName: "Telefone:", fieldDescription: hemocenter.telephoneNumbers)
                        
                        ArrayFieldView(iconName: "clock.fill", fieldName: "Horário:", fieldDescription: hemocenter.openingHours)
                        
                        FieldView(iconName: "location.circle.fill", fieldName: "Endereço:", fieldDescription: hemocenter.address)
                        
                        ArrayFieldView(iconName: "desktopcomputer", fieldName: "Sites:", fieldDescription: hemocenter.websites ?? [""], isURL: true)
                    }
                    .padding(.horizontal, 20)
                    Spacer()
                }
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
    
    func callHemocenter() {
        let telephone = "tel://"
        
        let cleanString = cleanTelephoneString(number: hemocenter.telephoneNumbers.first!)
        
        let formattedString = telephone + cleanString
        guard let url = URL(string: formattedString) else { return }
        
        UIApplication.shared.open(url)
    }
    
    func cleanTelephoneString(number: String) -> String {
        return number.replacingOccurrences(of: "(", with: "").replacingOccurrences(of: ")", with: "").replacingOccurrences(of: "-", with: "")
            .replacingOccurrences(of: " ", with: "")
    }
    
    func openHemocenterInMaps() {
        let placemark = MKPlacemark(coordinate: hemocenter.coordinate)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = hemocenter.name
        mapItem.openInMaps(launchOptions: nil)
    }
}

struct LocationDetails_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetails(hemocenter: MapConstants.pins[3].info)
    }
}

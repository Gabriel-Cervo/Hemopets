//
//  Constants.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 06/05/21.
//

import Foundation
import MapKit

struct MapConstants {
    static let defaultRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03))
    
    static let pins = [
        PinAnnotation(info: Hemocenter(name: "Compania dos Bichos", coordinate: .init(latitude: -30.045382, longitude:  -51.191168))),
        PinAnnotation(info: Hemocenter(name: "Pets & Cia", coordinate: .init(latitude: -30.043571, longitude: -51.193679))),
        PinAnnotation(info: Hemocenter(name: "Teste & Cia", coordinate: .init(latitude: -30.047617, longitude: -51.196549))),
        ]
}

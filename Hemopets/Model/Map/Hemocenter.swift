//
//  Hemocenter.swift
//  Hemopets
//
//  Created by Joao Gabriel Dourado Cervo on 04/05/21.
//

import Foundation
import CoreLocation

struct Hemocenter: Identifiable {
    let id = UUID()
    var name: String
    var telephoneNumbers: [String]
    var address: String
    var coordinate: CLLocationCoordinate2D
    var openingHours: [String]
    var websites: [String]?
}

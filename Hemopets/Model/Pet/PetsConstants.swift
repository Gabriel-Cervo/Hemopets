//
//  PetsConstants.swift
//  Hemopets
//
//  Created by Natália Brocca dos Santos on 07/05/21.
//

import Foundation

struct PetsConstants {
    static let mandatoryVaccines: [String:[Vaccine]] =
        ["Dog" : [Vaccine(name: "V8", isTaken: false),
                  Vaccine(name: "V10", isTaken: false),
                  Vaccine(name: "V12", isTaken: false),
                  Vaccine(name: "Antirrábica", isTaken: false)],
         "Cat" : [Vaccine(name: "V3", isTaken: false),
                  Vaccine(name: "V4", isTaken: false),
                  Vaccine(name: "V5", isTaken: false),
                  Vaccine(name: "Antirrábica", isTaken: false)]]
    
    static var totalNumberOfVaccines: Int {
        return PetRegistration.type == .cat ? PetsConstants.mandatoryVaccines["Cat"]!.count : PetsConstants.mandatoryVaccines["Dog"]!.count
    }
    
    static var registeredDogs: [Dog] = [Dog]()
    static var registeredCats: [Cat] = [Cat]()
}

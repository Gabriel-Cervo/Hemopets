//
//  PetsConstants.swift
//  Hemopets
//
//  Created by Natália Brocca dos Santos on 07/05/21.
//

import Foundation

struct PetsContants {
    static let mandatoryVaccines: [String:[Vaccine]] = ["Dog" : [Vaccine(name: "V8", isTaken: false),
                                                                 Vaccine(name: "V10", isTaken: false),
                                                                 Vaccine(name: "V12", isTaken: false),
                                                                 Vaccine(name: "Antirrábica", isTaken: false)],
                                                       "Cat" : [Vaccine(name: "V3", isTaken: false),
                                                                Vaccine(name: "V4", isTaken: false),
                                                                Vaccine(name: "V5", isTaken: false),
                                                                Vaccine(name: "Antirrábica", isTaken: false)]]
}

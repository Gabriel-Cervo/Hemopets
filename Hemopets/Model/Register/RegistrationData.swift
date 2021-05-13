//
//  RegistrationData.swift
//  Hemopets
//
//  Created by Natália Brocca dos Santos on 12/05/21.
//

import Foundation

class PetRegistration {
    var image: String
    var name: String
    var type: Bool
    var gender: Bool
    var isCastrated: Bool
    var weight: Double
    var age: Int
    var haveSeriousIllness: Bool
    var haveInfectionIllness: Bool
    var vaccines: [String]
    
    init(image: String, name: String, type: Bool, gender: Bool, isCastrated: Bool, weight: Double, age: Int, haveSeriousIllness: Bool, haveInfectionIllness: Bool, vaccines: [String]) {
        self.image = image
        self.name = name
        self.type = type
        self.gender = gender
        self.isCastrated = isCastrated
        self.weight = weight
        self.age = age
        self.haveSeriousIllness = haveSeriousIllness
        self.haveInfectionIllness = haveInfectionIllness
        self.vaccines = vaccines
    }
}

//
//  RegistrationData.swift
//  Hemopets
//
//  Created by Natália Brocca dos Santos on 12/05/21.
//

import Foundation

struct PetRegistration {
    //    var image: String
    static var name: String = ""
    static var type: PetType = .cat
    static var gender: GenderType = .male
    static var isCastrated: Bool = false
    static var weight: Double = 0.0
    static var age: Int = 0
    static var haveSeriousIllness: Bool = false
    static var haveInfectionIllness: Bool = false
}

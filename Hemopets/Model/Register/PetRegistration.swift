//
//  RegistrationData.swift
//  Hemopets
//
//  Created by Natália Brocca dos Santos on 12/05/21.
//

import Foundation
import SwiftUI

struct PetRegistration {
    static var name: String = ""
    static var type: PetType = .cat
    static var gender: GenderType = .male
    static var isCastrated: Bool = false
    static var weight: WeightOptions = .first
    static var age: AgeOptions = .first
    static var haveSeriousIllness: Bool = false
    static var haveInfectionIllness: Bool = false
    static var image: UIImage?
}

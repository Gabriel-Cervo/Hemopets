//
//  Pet.swift
//  Hemopets
//
//  Created by Natália Brocca dos Santos on 07/05/21.
//

import Foundation

protocol Eligible {
    func checkAge() -> Bool
    func checkWeight() -> Bool
    func checkVaccinesNotTaken() -> [String]
}

extension Eligible {
    func isEligible() -> Bool {
        return checkAge() && checkWeight() && checkVaccinesNotTaken().count == 0
    }
}

class Pet: Identifiable, Codable {
    var id: String = UUID().uuidString
    var name: String
    var age: AgeOptions
    var weight: WeightOptions
    var imageName: String
    var vaccines: [Vaccine]
    
    init(name: String, age: AgeOptions, weight: WeightOptions, imageName: String) {
        self.name = name
        self.age = age
        self.weight = weight
        self.imageName = imageName
        self.vaccines = [Vaccine]()
    }
    
    func checkVaccinesNotTaken() -> [String] {
        let filterVaccines = self.vaccines.filter { !$0.isTaken }
        
        return filterVaccines.map { $0.name }
    }
    
    func checkAge() -> Bool {
        return self.age == .third
    }
}

class Dog: Pet, Eligible {
    override init(name: String, age: AgeOptions, weight: WeightOptions, imageName: String) {
        super.init(name: name, age: age, weight: weight, imageName: imageName)
        self.vaccines = PetsConstants.mandatoryVaccines["Dog"]!
    }
    
    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }
    
    
    func checkWeight() -> Bool {
        return self.weight == .sixth
    }
}

class Cat: Pet, Eligible {
    override init(name: String, age: AgeOptions, weight: WeightOptions, imageName: String) {
        super.init(name: name, age: age, weight: weight, imageName: imageName)
        self.vaccines = PetsConstants.mandatoryVaccines["Cat"]!
    }
    
    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }
    
    func checkWeight() -> Bool {
        return self.weight.id >= 2
    }
}

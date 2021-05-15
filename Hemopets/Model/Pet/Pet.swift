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
    var age: Int
    var weight: Double
    var imageName: String
    var vaccines: [Vaccine]
    
    init(name: String, age: Int, weight: Double, imageName: String) {
        self.name = name
        self.age = age
        self.weight = weight
        self.imageName = imageName
        self.vaccines = [Vaccine]()
    }
    
    func checkVaccinesNotTaken() -> [String] {
        let filterVaccines = self.vaccines.filter{ vaccine in
            return !vaccine.isTaken
        }
        return filterVaccines.map { vaccine in
            return vaccine.name
        }
    }
}

class Dog: Pet, Eligible {
    override init(name: String, age: Int, weight: Double, imageName: String) {
        super.init(name: name, age: age, weight: weight, imageName: imageName)
        self.vaccines = PetsConstants.mandatoryVaccines["Dog"]!
    }
    
    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }
    
    func checkAge() -> Bool {
        return self.age >= 1 && self.age <= 8
    }
    
    func checkWeight() -> Bool {
        return self.weight >= 27
    }
}

class Cat: Pet, Eligible {
    override init(name: String, age: Int, weight: Double, imageName: String) {
        super.init(name: name, age: age, weight: weight, imageName: imageName)
        self.vaccines = PetsConstants.mandatoryVaccines["Cat"]!
    }
    
    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }
    
    func checkAge() -> Bool {
        return self.age >= 1 && self.age <= 7
    }
    
    func checkWeight() -> Bool {
        return self.weight >= 4
    }
}

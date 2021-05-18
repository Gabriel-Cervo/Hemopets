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
    func checkVaccines() -> Bool
}

extension Eligible {
    func isEligible() -> Bool {
        return checkAge() && checkWeight() && checkVaccines()
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
    
    func checkVaccines() -> Bool {
        var oneOfFirstThreeTaken: Bool = false
        
        for index in 0..<3 {
            if vaccines[index].isTaken && !oneOfFirstThreeTaken {
                oneOfFirstThreeTaken = true
            }
        }
        
        if oneOfFirstThreeTaken && vaccines.last!.isTaken {
            return true
        }
        
        return false
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
        return self.weight.id > 2
    }
}

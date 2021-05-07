//
//  Pet.swift
//  Hemopets
//
//  Created by Natália Brocca dos Santos on 07/05/21.
//

import Foundation

protocol Pet: Identifiable {
    var id: UUID {get}
    var name: String {get set}
    var age: Int {get set}
    var weight: Double {get set}
    var vaccinesTaken: [String] {get set}
    var imageName: String {get set}
    
    func checkAge() -> Bool
    func checkWeight() -> Bool
    func checkVaccinesTaken() -> [String]
}

struct Dog: Pet {
    
    var id: UUID
    var name: String
    var age: Int
    var weight: Double
    var vaccinesTaken: [String]
    var imageName: String
    
    func checkAge() -> Bool {
        return self.age >= 1 && self.age <= 8
    }
    
    func checkWeight() -> Bool {
        return self.weight >= 27
    }
    
    func checkVaccinesTaken() -> [String] {
        var vaccinesNotTaken: [String] = []
        for vac in PetsContants.mandatoryVaccines["Dog"]! {
            if !self.vaccinesTaken.contains(vac) {
                vaccinesNotTaken.append(vac)
            }
        }
        return vaccinesNotTaken
    }
}

struct Cat: Pet {
    
    var id: UUID
    var name: String
    var age: Int
    var weight: Double
    var vaccinesTaken: [String]
    var imageName: String
    
    func checkAge() -> Bool {
        return self.age >= 1 && self.age <= 7
    }
    
    func checkWeight() -> Bool {
        return self.weight >= 4
    }
    
    func checkVaccinesTaken() -> [String] {
        var vaccinesNotTaken: [String] = []
        for vac in PetsContants.mandatoryVaccines["Cat"]! {
            if !self.vaccinesTaken.contains(vac) {
                vaccinesNotTaken.append(vac)
            }
        }
        return vaccinesNotTaken
    }
}


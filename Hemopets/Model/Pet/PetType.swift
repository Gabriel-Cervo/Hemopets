//
//  PetType.swift
//  Hemopets
//
//  Created by Natália Brocca dos Santos on 12/05/21.
//

import Foundation

enum PetType {
    case dog
    case cat
}

enum GenderType {
    case male
    case female
}

enum WeightOptions: String, CaseIterable, Identifiable, Codable {
    case first
    case second
    case third
    case fourth
    case five
    case sixth
    
    var id: Int {
        switch self {
        case .first:
            return 1
        case .second:
            return 2
        case .third:
            return 3
        case .fourth:
            return 4
        case .five:
            return 5
        case .sixth:
            return 6
        }
    }
    
    var description: String {
        switch self {
        case .first:
            return "Não informado"
        case .second:
            return "Menos de 3kg"
        case .third:
            return "Entre 4 e 10kg"
        case .fourth:
            return "Entre 11 e 20kg"
        case .five:
            return "Entre 20 e 28kg"
        case .sixth:
            return "Mais de 28kg"
        }
    }
}

enum AgeOptions: String, CaseIterable, Identifiable, Codable {
    case first
    case second
    case third
    case fourth
    case five
    
    var id: Int {
        switch self {
        case .first:
            return 1
        case .second:
            return 2
        case .third:
            return 3
        case .fourth:
            return 4
        case .five:
            return 5
        }
    }
    
    var description: String {
        switch self {
        case .first:
            return "Não informado"
        case .second:
            return "Menos de um ano"
        case .third:
            return "Entre 1 e 8 anos"
        case .fourth:
            return "Entre 9 e 15 anos"
        case .five:
            return "Mais de 15 anos"
        }
    }
}

enum CastrationOptions: String, CaseIterable, Identifiable, Codable {
    case first
    case second
    
    var id: Int {
        switch self {
        case .first:
            return 1
        case .second:
            return 2
        }
    }
    
    var description: String {
        switch self {
        case .first:
            return "Não"
        case .second:
            return "Sim"
        }
    }
}

enum GenderOptions: String, CaseIterable, Identifiable, Codable {
    case first
    case second
    
    var id: Int {
        switch self {
        case .first:
            return 1
        case .second:
            return 2
        }
    }
    
    var description: String {
        switch self {
        case .first:
            return "Macho"
        case .second:
            return "Fêmea"
        }
    }
}

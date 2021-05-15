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
            return "Entre menos de um e 3kg"
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

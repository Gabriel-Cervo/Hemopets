//
//  Vaccine.swift
//  Hemopets
//
//  Created by Natália Brocca dos Santos on 11/05/21.
//

import Foundation

class Vaccine: Codable {
    var name: String
    var isTaken: Bool
    
    init(name: String, isTaken: Bool) {
        self.name = name
        self.isTaken = isTaken
    }
}

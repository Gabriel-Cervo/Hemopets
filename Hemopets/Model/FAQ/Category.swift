//
//  Category.swift
//  Hemopets
//
//  Created by Rodrigo Okido on 07/05/21.
//

import Foundation


/**
 Category Struct. Responsible to create an category inside FAQ section.
 */
struct Category: Identifiable {
    
    let id: Int
    let categoryName: String
    let questions: [Question]
    
}

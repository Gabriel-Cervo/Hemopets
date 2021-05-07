//
//  QuestionCategories.swift
//  Hemopets
//
//  Created by Rodrigo Okido on 06/05/21.
//

import Foundation

struct QuestionCategory: Identifiable {
    
    let id: Int
    let categoryName: String
    let questions: [Question]
    
}

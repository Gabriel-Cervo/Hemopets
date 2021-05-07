//
//  Question.swift
//  Hemopets
//
//  Created by Rodrigo Okido on 05/05/21.
//

import Foundation


/**
 Question struct. Simple struct of an Q&A to help user understand everything about blood donation. Contains two Strings
 variables named question and answer.
 */
struct Question: Identifiable{
    
    let id: Int
    let question: String
    let answer: String
    
}

//
//  Question.swift
//  Quizzler
//
//  Created by khoirunnisa' rizky noor fatimah on 28/04/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation
class Question {
    let questionText : String
    let answer : Bool
    
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
    
}

/* for your information
 
 class myOtherClass {
    let question = Question(text: "am I muslimah?", correctAnswer: true)
    let question2 = Question(text: "am I an amazing muslimah?", correctAnswer: false)
}
 */

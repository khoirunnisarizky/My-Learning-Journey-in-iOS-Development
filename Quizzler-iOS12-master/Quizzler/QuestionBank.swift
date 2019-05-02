//
//  QuestionBank.swift
//  Quizzler
//
//  Created by khoirunnisa' rizky noor fatimah on 30/04/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init() {
        // Creating a quiz item and appending it to the list
        let newQuestion = Question(text: "My name is Khoirunnisa' Rizky Noor Fatimah", correctAnswer: true)
        
        // Add the Question to the list of questions
       list.append(newQuestion)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Question(text: "I have married with someone there", correctAnswer: false))
        
        list.append(Question(text: "I wanna marry with a good moslem that make Quran as his main preference in life", correctAnswer: true))
        
        list.append(Question(text: "My mom is beautiful and an amazing mom in the world", correctAnswer: true))
        
        list.append(Question(text: "I do not want to meet My Prophet Muhammad SAW", correctAnswer: false))
        
        list.append(Question(text: "My blood is blue", correctAnswer: false))
        
        list.append(Question(text: "I always want to give more benefits to others.", correctAnswer: true))
        
        list.append(Question(text: "I wanna get more inspired and inspire more", correctAnswer: true))
        
        //so on and on.
        
    }
    
}

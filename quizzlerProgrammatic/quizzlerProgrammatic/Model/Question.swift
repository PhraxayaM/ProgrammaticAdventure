//
//  Question.swift
//  quizzlerProgrammatic
//
//  Created by MattHew Phraxayavong on 1/22/20.
//  Copyright © 2020 Matthew Phraxayavong. All rights reserved.
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

class myOtherClass {
    let question = Question(text: "What's the meaning of life", correctAnswer: true)
    
}

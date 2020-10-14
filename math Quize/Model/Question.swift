//
//  Question.swift
//  math Quize
//
//  Created by Basma Said on 12/3/18.
//  Copyright © 2018 Basma Said. All rights reserved.
//

import Foundation

class Question {
    let questionText : String
    let answerA : String
    let answerB : String
    let answerC : String
    let answerD : String
    let answerNumber : Int
    init(text: String, choiceA:String, choiceB:String, choiceC:String, choiceD:String, correctAnswer: Int){
        questionText = text
        answerA = choiceA
        answerB = choiceB
        answerC = choiceC
        answerD = choiceD
        answerNumber = correctAnswer
    }
}

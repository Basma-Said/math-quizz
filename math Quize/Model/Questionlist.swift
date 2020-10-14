//
//  Questionlist.swift
//  math Quize
//
//  Created by Basma Said on 12/3/18.
//  Copyright © 2018 Basma Said. All rights reserved.
//

import Foundation
class QuestionList {
    var list = [Question]()
    init(){
        let item = Question(text: "2*2",choiceA: "5", choiceB: "4", choiceC: "7", choiceD: "9", correctAnswer: 2)
        list.append(item)
        list.append(Question(text: "2*3",choiceA: "6", choiceB: "4", choiceC: "7", choiceD: "9", correctAnswer: 1))
        list.append(Question(text: "2*4",choiceA: "6", choiceB: "4", choiceC: "7", choiceD: "8", correctAnswer: 4))
        list.append(Question(text: "2*5",choiceA: "10", choiceB: "4", choiceC: "7", choiceD: "8", correctAnswer: 1))
        list.append(Question(text: "2*6",choiceA: "6", choiceB: "12", choiceC: "7", choiceD: "8", correctAnswer: 2))
        
    }
    
}

//
//  EFCQuizModelForImage.swift
//  EnglishForHotelManagement
//
//  Created by Subroto Mohonto on 10/7/20.
//  Copyright © 2020 Subroto Mohonto. All rights reserved.
//

import UIKit

class EFHMQuizModelForImage: NSObject {
    let question: String
    let optionA: String
    let optionB: String
    let optionC: String
    let optionD: String
    let correctAnswer: Int
       
    init(questionText: String, choiceA: String, choiceB: String, choiceC: String, choiceD: String, answer: Int){
        question = questionText
        optionA = choiceA
        optionB = choiceB
        optionC = choiceC
        optionD = choiceD
        correctAnswer = answer
       }
    
}

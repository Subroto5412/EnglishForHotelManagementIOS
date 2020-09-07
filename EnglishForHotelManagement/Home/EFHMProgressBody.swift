//
//  EFCProgressBody.swift
//  EnglishForHotelManagement
//
//  Created by Subroto Mohonto on 21/5/20.
//  Copyright © 2020 Subroto Mohonto. All rights reserved.
//

import UIKit

class EFHMProgressBody: EFHMXibView {

    var vocabularyHandler : ((Bool?) -> Void)?
    var sentenceHandler : ((Bool?) -> Void)?
    var conversationHandler : ((Bool?) -> Void)?
    var interviewHandler : ((Bool?) -> Void)?
    var quizHandler : ((Bool?) -> Void)?
    
    @IBAction func btnVocabulary(_ sender: UIButton) {
         self.vocabularyHandler?(true)
    }
    
    @IBAction func btnSentence(_ sender: UIButton) {
        self.sentenceHandler?(true)
    }
    @IBAction func btnConversation(_ sender: Any) {
        self.conversationHandler?(true)
    }
    @IBAction func btnInterview(_ sender: UIButton) {
    }
    
    @IBAction func btnQuiz(_ sender: Any) {
        self.quizHandler?(true)
    }
    
}

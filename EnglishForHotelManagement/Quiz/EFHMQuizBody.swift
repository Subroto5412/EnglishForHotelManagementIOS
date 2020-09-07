//
//  EFCQuizBody.swift
//  EnglishForHotelManagement
//
//  Created by Subroto Mohonto on 21/5/20.
//  Copyright © 2020 Subroto Mohonto. All rights reserved.
//

import UIKit

class EFHMQuizBody: EFHMXibView {

    var quizRulesHandler : ((Bool?) -> Void)?
    var LevelHandler1 : ((Bool?) -> Void)?
    var LevelHandler2 : ((Bool?) -> Void)?
    var LevelHandler3 : ((Bool?) -> Void)?
    var LevelHandler4 : ((Bool?) -> Void)?
    var ResultHandler : ((Bool?) -> Void)?

    @IBAction func quizRulesBtn(_ sender: Any) {
        self.quizRulesHandler?(true)
    }
    
    @IBAction func labelBtn1(_ sender: Any) {
         self.LevelHandler1?(true)
    }
    
    @IBAction func labelBtn2(_ sender: Any) {
        self.LevelHandler2?(true)
    }
    
    @IBAction func labelBtn3(_ sender: Any) {
         self.LevelHandler3?(true)
    }
    
    
    @IBAction func labelBtn5(_ sender: Any) {
        self.ResultHandler?(true)
    }
}

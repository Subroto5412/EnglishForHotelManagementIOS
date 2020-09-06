//
//  EFCQuizBody.swift
//  EnglishForConstruction
//
//  Created by Subroto Mohonto on 21/5/20.
//  Copyright © 2020 Subroto Mohonto. All rights reserved.
//

import UIKit

class EFHMQuizBody: EFHMXibView {

    var quizRulesHandler : ((Bool?) -> Void)?
    var LabelHandler1 : ((Bool?) -> Void)?
    var LabelHandler2 : ((Bool?) -> Void)?
    var LabelHandler3 : ((Bool?) -> Void)?
    var LabelHandler4 : ((Bool?) -> Void)?
    var ResultHandler : ((Bool?) -> Void)?

    @IBAction func quizRulesBtn(_ sender: Any) {
        self.quizRulesHandler?(true)
    }
    
    @IBAction func labelBtn1(_ sender: Any) {
         self.LabelHandler1?(true)
    }
    
    @IBAction func labelBtn2(_ sender: Any) {
        self.LabelHandler2?(true)
    }
    
    @IBAction func labelBtn3(_ sender: Any) {
         self.LabelHandler3?(true)
    }
    
    
    @IBAction func labelBtn5(_ sender: Any) {
        self.ResultHandler?(true)
    }
}

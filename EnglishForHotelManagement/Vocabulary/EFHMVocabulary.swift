//
//  EFHMVocabulary.swift
//  EnglishForConstruction
//
//  Created by Subroto Mohonto on 21/5/20.
//  Copyright © 2020 Subroto Mohonto. All rights reserved.
//

import UIKit

class EFHMVocabulary: EFHMXibView {

    var primaryHandler : ((Bool?) -> Void)?
    var toolsHandler : ((Bool?) -> Void)?
    var workHandler : ((Bool?) -> Void)?
    var productHandler : ((Bool?) -> Void)?
    var foodsHandler : ((Bool?) -> Void)?
    var interviewHandler : ((Bool?) -> Void)?
 
    
    @IBAction func btnPrimary(_ sender: UIButton) {
        self.primaryHandler?(true)
    }
    
    @IBAction func btnTools(_ sender: UIButton) {
         self.toolsHandler?(true)
    }
    
    @IBAction func btnWork(_ sender: UIButton) {
         self.workHandler?(true)
    }
    
    @IBAction func btnProduct(_ sender: UIButton) {
         self.productHandler?(true)
    }
    
    @IBAction func btnFoods(_ sender: Any) {
         self.foodsHandler?(true)
    }
    
    @IBAction func btnInterview(_ sender: UIButton) {
        self.interviewHandler?(true)
    }
}

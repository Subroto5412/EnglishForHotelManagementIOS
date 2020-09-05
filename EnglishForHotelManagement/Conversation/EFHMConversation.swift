//
//  EFHMConversation.swift
//  EnglishForConstruction
//
//  Created by Subroto Mohonto on 30/5/20.
//  Copyright © 2020 Subroto Mohonto. All rights reserved.
//

import UIKit

class EFHMConversation: EFHMXibView {

       var howToWorkHandler : ((Bool?) -> Void)?
       var instructionHandler : ((Bool?) -> Void)?
       var workHandler : ((Bool?) -> Void)?
       var productHandler : ((Bool?) -> Void)?
       var foodsHandler : ((Bool?) -> Void)?
       var interviewHandler : ((Bool?) -> Void)?
    
       
       @IBAction func btnPrimary(_ sender: UIButton) {
           self.howToWorkHandler?(true)
       }
       
       @IBAction func btnTools(_ sender: UIButton) {
            self.instructionHandler?(true)
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

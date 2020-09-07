//
//  EFHMVocabulary.swift
//  EnglishForHotelManagement
//
//  Created by Subroto Mohonto on 21/5/20.
//  Copyright © 2020 Subroto Mohonto. All rights reserved.
//

import UIKit

class EFHMVocabulary: EFHMXibView {

    var geetingsHandler : ((Bool?) -> Void)?
    var receptionHandler : ((Bool?) -> Void)?
    var serviceHandler : ((Bool?) -> Void)?
    var kitchenHandler : ((Bool?) -> Void)?
    var foodsHandler : ((Bool?) -> Void)?
 
    @IBAction func btnGeetings(_ sender: UIButton) {
        self.geetingsHandler?(true)
    }
    
    @IBAction func btnReception(_ sender: UIButton) {
         self.receptionHandler?(true)
    }
    
    @IBAction func btnServices(_ sender: UIButton) {
         self.serviceHandler?(true)
    }
    
    @IBAction func btnKitchen(_ sender: UIButton) {
         self.kitchenHandler?(true)
    }
    
    @IBAction func btnFoods(_ sender: Any) {
         self.foodsHandler?(true)
    }
}

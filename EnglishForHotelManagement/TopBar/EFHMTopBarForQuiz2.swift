//
//  EFCTopBarForQuiz2.swift
//  EnglishForHotelManagement
//
//  Created by Subroto Mohonto on 8/7/20.
//  Copyright © 2020 Subroto Mohonto. All rights reserved.
//

import UIKit

enum EFHMButtonType2 : Int {
    
    case back
    case top
    case reset
}
protocol EFHMTopBar2Delegate : NSObjectProtocol {
    func didPressedOnButtonType(type:EFHMButtonType2)
}


class EFHMTopBarForQuiz2: EFHMXibView {
    
    weak var delegate : EFHMTopBarDelegate?
    
    @IBOutlet weak var progressView1: UIView!
    @IBOutlet weak var progressView2: UIView!
    @IBOutlet weak var progressView3: UIView!
    @IBOutlet weak var progressView4: UIView!
    @IBOutlet weak var progressView5: UIView!
    @IBOutlet weak var progressView6: UIView!
    @IBOutlet weak var progressView7: UIView!
    @IBOutlet weak var progressView8: UIView!
    @IBOutlet weak var progressView9: UIView!
    @IBOutlet weak var progressView10: UIView!
    
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var percentLbl: UILabel!
  
    @IBOutlet weak var questionImage: UIImageView!
    @IBOutlet weak var questionLbl: UILabel!
    
    @IBAction func backBtn(_ sender: Any) {
        
         self.delegate?.didPressedOnButtonType(type: .back)
    }
}

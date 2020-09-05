//
//  EFCTopBarForQuiz.swift
//  EnglishForConstruction
//
//  Created by Subroto Mohonto on 7/7/20.
//  Copyright © 2020 Subroto Mohonto. All rights reserved.
//

import UIKit

class EFHMTopBarForQuiz: EFHMXibView {
    
    weak var delegate : EFHMTopBarDelegate?

   // @IBOutlet weak var CircularProgress: EFHMCircularProgressView!
    @IBOutlet weak var percentLbl: UILabel!
    @IBOutlet weak var questionLbl: UILabel!
    
    @IBOutlet weak var ProgressView1: UIView!
    @IBOutlet weak var progressView2: UIView!
    @IBOutlet weak var progressView3: UIView!
    @IBOutlet weak var progressView4: UIView!
    @IBOutlet weak var progressView5: UIView!
    @IBOutlet weak var progressView6: UIView!
    @IBOutlet weak var progressView7: UIView!
    @IBOutlet weak var progressView8: UIView!
    @IBOutlet weak var progressView9: UIView!
    @IBOutlet weak var progressView10: UIView!
    
    @IBOutlet weak var lablelName: UILabel!
    @IBOutlet weak var resultLbl: UILabel!
    
    
    @IBAction func backBtn(_ sender: Any) {
        self.delegate?.didPressedOnButtonType(type: .back)
    }
}

//
//  EFHMResultController.swift
//  EnglishForHotelManagement
//
//  Created by Subroto Mohonto on 8/9/20.
//  Copyright © 2020 Opu Sumon. All rights reserved.
//

import UIKit

class EFHMResultController: UIViewController {
        @IBOutlet weak var topBar: EFHMTopBar!
        @IBOutlet weak var progressLbl: UILabel!
        let progress = Progress(totalUnitCount: 10)
        @IBOutlet weak var progressViewForVocabulary: UIView!
        @IBOutlet weak var ProgressViewVocabulary: UIView!
        @IBOutlet weak var trailing: NSLayoutConstraint!
        
        @IBOutlet weak var progressForSentence: UIView!
        @IBOutlet weak var trailingForSentence: NSLayoutConstraint!
        @IBOutlet weak var progressLblForSentence: UILabel!
        
        @IBOutlet weak var progressForConversation: UIView!
        @IBOutlet weak var trailingForConversation: NSLayoutConstraint!
        @IBOutlet weak var progressLblForConversation: UILabel!
        
        @IBOutlet weak var progressForInterview: UIView!
        @IBOutlet weak var trailingForInterview: NSLayoutConstraint!

        
        class func initWithStoryboard() -> EFHMResultController
                 {
                     let storyboard = UIStoryboard(name: "Main", bundle: nil)
                     let controller = storyboard.instantiateViewController(withIdentifier: EFHMResultController.className) as! EFHMResultController
                     return controller
                 }
           
        
        override func viewDidLoad() {
            super.viewDidLoad()
            self.initializeTopBar()
            self.topBar.titleNameLbl.text = "Progress Result"

            let screenSize: CGRect = UIScreen.main.bounds
            let screenWidth = screenSize.width
          
            
            self.progressLbl.text = "\(1*10)%"
            self.trailing.constant =  ((screenWidth-58) - (screenWidth/10)*1)
            
            self.progressLblForSentence.text = "\(3*10)%"
            self.trailingForSentence.constant =  ((screenWidth-58) - (screenWidth/10)*3)
                  
            
            self.progressLblForConversation.text = "\(5*10)%"
            self.trailingForConversation.constant =  ((screenWidth-58) - (screenWidth/10)*5)
                  
            
        }
        
        func initializeTopBar() {
         self.topBar.delegate = self
        }
       
    }


    extension EFHMResultController : EFHMTopBarDelegate {

    func didPressedOnButtonType(type:EFHMButtonType) {
        
        if type == .back {
          //  self.navigationController?.popToFadeAnimation()
            let controller = EFHMQuizViewController.initWithStoryboard()
            self.present(controller, animated: true, completion: nil);
        }
        
     }
    }

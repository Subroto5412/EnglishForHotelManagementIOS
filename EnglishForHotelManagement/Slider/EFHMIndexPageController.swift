//
//  EFHMIndexPageController.swift
//  EnglishForHotelManagement
//
//  Created by Subroto Mohonto on 13/8/20.
//  Copyright © 2020 Opu Sumon. All rights reserved.
//

import UIKit

class EFHMIndexPageController: UIViewController {
    enum EFHMIndexControllerType : Int {
        case indexPageController1 = 0
        case indexPageController2 = 1
        case indexPageController3 = 2
    }

    @IBOutlet weak var displayImageView: UIImageView!
    @IBOutlet weak var titleText: UILabel!
    @IBOutlet weak var subTitleText: UILabel!
      
    var controllerType : EFHMIndexControllerType = .indexPageController2
    class func initWithStoryboard(withType type:EFHMIndexControllerType) -> EFHMIndexPageController {
        let storyboard  = UIStoryboard(name: "Main", bundle: Bundle.main)
        let controller = storyboard.instantiateViewController(withIdentifier: EFHMIndexPageController.className) as! EFHMIndexPageController
        controller.controllerType = type
          return controller
    }
          
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.controllerType.rawValue == 0 {
            displayImageView.image = UIImage(named: "slider1")
            titleText.text = "Unlimited Hotel English\nLearning Lessons"
            titleText.textColor = UIColor(red: 1.0/255, green: 131/255, blue: 255/255, alpha: 1.0)
            subTitleText.text = "Learn every single day"
        } else if self.controllerType.rawValue == 1 {
            displayImageView.image = UIImage(named: "slider2")
            titleText.text = "Learn Daily Essential\nHotel Conversation"
             titleText.textColor = UIColor(red: 48/255, green: 214/255, blue: 76/255, alpha: 1.0)
            subTitleText.text = "Be confident english speaker"
        } else if self.controllerType.rawValue == 2 {
            displayImageView.image = UIImage(named: "slider3")
            titleText.text = "Daily Easy Video\nLessson Learning"
             titleText.textColor = UIColor(red: 255/255, green: 122/255, blue: 0, alpha: 1.0)
            subTitleText.text = "Learn by video watching"
        }
             
    }
}

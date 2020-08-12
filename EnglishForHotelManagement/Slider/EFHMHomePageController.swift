//
//  EFHMHomePageControllerViewController.swift
//  EnglishForHotelManagement
//
//  Created by Subroto Mohonto on 13/8/20.
//  Copyright © 2020 Opu Sumon. All rights reserved.
//

import UIKit

class EFHMHomePageController: UIViewController {
    
    @IBOutlet weak var container : UIView!
    @IBOutlet weak var pageControl : UIPageControl!
    @IBOutlet weak var continueBtnView: UIButton!
    
        var pageController : EFHMPageViewController?
        var closeHandler : ((Bool?) -> Void)?
        class func initWithStoryboard() -> EFHMHomePageController {
            
            let storyboard  = UIStoryboard(name: "Main", bundle: Bundle.main)
            let controller = storyboard.instantiateViewController(withIdentifier: EFHMHomePageController.className) as! EFHMHomePageController
            controller.providesPresentationContextTransitionStyle = true
            controller.definesPresentationContext = true
            controller.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
            controller.modalPresentationStyle = UIModalPresentationStyle.overFullScreen
            return controller
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            self.continueBtnView.layer.cornerRadius = 20
            self.initializePages()
        }
        
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            self.pageControl.currentPage = (self.pageController?.selectedIndex)!
        }
        
        func initializePages() {
            
            self.pageController = EFHMPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
            self.pageController?.selectionDelegate = self
            
            if let controllers = self.pageController {
                
                let firstController = EFHMIndexPageController.initWithStoryboard(withType: .indexPageController1)
                let secondController = EFHMIndexPageController.initWithStoryboard(withType: .indexPageController2)
                let thirdController = EFHMIndexPageController.initWithStoryboard(withType: .indexPageController3)
                controllers.setSubViewControllers(controllers: [firstController,secondController,thirdController])
                
                controllers.view.frame = container.bounds
                print(controllers.view.frame)
                addChild(controllers)
                container.addSubview(controllers.view)
                controllers.didMove(toParent: self)
            }
            
           // self.pageController?.isPagingEnabled = true
            self.pageController?.view.frame = container.bounds
            
          //  self.container.layer.borderWidth = 1.0
          //  self.container.layer.borderColor = KRConstants.kAppDefaultBlackColor.cgColor
        }
        
       
        @IBAction func btnCloseAction(_ sender: Any) {
            //   self.removeControllerFromParent()
        }
        
//        @IBAction func btnNext(_ sender: UIButton) {
//            let controller = EFHMHomeController.initWithStoryboard()
//           self.present(controller, animated: true, completion: nil);
//
//        }
        
    }

    extension EFHMHomePageController : EFHMPageViewControllerDelegate {
        
        func didSelectedController(type: Int) {
            self.pageControl.currentPage = type
        }
    }

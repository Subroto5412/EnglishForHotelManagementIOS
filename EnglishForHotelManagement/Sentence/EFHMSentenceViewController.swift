//
//  EFHMSentenceViewController.swift
//  EnglishForConstruction
//
//  Created by Subroto Mohonto on 5/9/20.
//  Copyright © 2020 Subroto Mohonto. All rights reserved.
//

import UIKit

class EFHMSentenceViewController: UIViewController {

        @IBOutlet weak var bodyContainer: EFHMSentence!
        @IBOutlet weak var topBar: EFHMTopBar!
        class func initWithStoryboard() -> EFHMSentenceViewController
           {
               let storyboard = UIStoryboard(name: "Main", bundle: nil)
               let controller = storyboard.instantiateViewController(withIdentifier: EFHMSentenceViewController.className) as! EFHMSentenceViewController

               return controller
           }

        override func viewDidLoad() {
            super.viewDidLoad()
            topBar.titleNameLbl.text = "Sentence"
            self.initializeTopBar()
            
            self.bodyContainer.geetingsHandler = {
                       [weak self] (isShow) in
                       guard let weakSelf = self else {
                       return
                      }
                   weakSelf.showGettingsyController()
               }
            
            self.bodyContainer.foodsHandler = {
                            [weak self] (isShow) in
                            guard let weakSelf = self else {
                            return
                           }
                        weakSelf.showFoodsController()
                    }
            
            self.bodyContainer.kitchenHandler = {
                            [weak self] (isShow) in
                            guard let weakSelf = self else {
                            return
                           }
                        weakSelf.shoKitchenController()
                    }
            
            self.bodyContainer.serviceHandler = {
                            [weak self] (isShow) in
                            guard let weakSelf = self else {
                            return
                           }
                        weakSelf.showServicesController()
                    }
            
            self.bodyContainer.receptionHandler = {
                            [weak self] (isShow) in
                            guard let weakSelf = self else {
                            return
                           }
                        weakSelf.showReceptionController()
                    }
            
            self.bodyContainer.interviewHandler = {
                            [weak self] (isShow) in
                            guard let weakSelf = self else {
                            return
                           }
                        weakSelf.showGettingsyController()
                    }
    }
        func initializeTopBar() {
            self.topBar.delegate = self
        }
        
        func showHomeController() {
        
            let controller = EFHMHomeViewController.initWithStoryboard()
            self.present(controller, animated: true, completion: nil);
        }
        
        func showGettingsyController() {
              let controller = EFHMSentenceGeetingsController.initWithStoryboard()
              self.present(controller, animated: true, completion: nil);
        }
        
        func showReceptionController() {
            let controller = EFHMSentenceReceptionController.initWithStoryboard()
            self.present(controller, animated: true, completion: nil);
        }
        
        func showServicesController() {
            let controller = EFHMSentenceServicesController.initWithStoryboard()
            self.present(controller, animated: true, completion: nil);
        }
        
        func shoKitchenController() {
            let controller = EFHMSentenceKitchenController.initWithStoryboard()
            self.present(controller, animated: true, completion: nil);
        }
        
        func showFoodsController() {
           let controller = EFHMSentenceFoodsController.initWithStoryboard()
           self.present(controller, animated: true, completion: nil);
        }
    
       
    }


    extension EFHMSentenceViewController : EFHMTopBarDelegate {
        
        func didPressedOnButtonType(type:EFHMButtonType) {
            
            if type == .back {
                let controller = EFHMHomeViewController.initWithStoryboard()
                self.present(controller, animated: true, completion: nil);
            }
            
        }
        
    }

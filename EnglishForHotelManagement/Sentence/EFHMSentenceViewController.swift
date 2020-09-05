//
//  EFHMSentenceViewController.swift
//  EnglishForConstruction
//
//  Created by Subroto Mohonto on 30/5/20.
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

            self.bodyContainer.primaryHandler = {
                       [weak self] (isShow) in
                       guard let weakSelf = self else {
                       return
                      }
                   weakSelf.showPrimaryController()
               }
            
            self.bodyContainer.foodsHandler = {
                            [weak self] (isShow) in
                            guard let weakSelf = self else {
                            return
                           }
                        weakSelf.showFoodsController()
                    }
            
            self.bodyContainer.productHandler = {
                            [weak self] (isShow) in
                            guard let weakSelf = self else {
                            return
                           }
                        weakSelf.showProductController()
                    }
            
            self.bodyContainer.workHandler = {
                            [weak self] (isShow) in
                            guard let weakSelf = self else {
                            return
                           }
                        weakSelf.showWorkController()
                    }
            
            self.bodyContainer.toolsHandler = {
                            [weak self] (isShow) in
                            guard let weakSelf = self else {
                            return
                           }
                        weakSelf.showToolsController()
                    }
            
            self.bodyContainer.primaryHandler = {
                            [weak self] (isShow) in
                            guard let weakSelf = self else {
                            return
                           }
                        weakSelf.showPrimaryController()
                    }
    }
        func initializeTopBar() {
            self.topBar.delegate = self
        }
        
        func showHomeController() {
        
            let controller = EFHMHomeViewController.initWithStoryboard()
            self.present(controller, animated: true, completion: nil);
        }
        
        func showPrimaryController() {
              
        }
        
        func showToolsController() {
            
        }
        
        func showProductController() {
            
        }
        
        func showWorkController() {
            
        }
        
        func showFoodsController() {
           
        }
    }


    extension EFHMSentenceViewController : EFHMTopBarDelegate {
        
        func didPressedOnButtonType(type:EFHMButtonType) {
            
            if type == .back {
              //  self.navigationController?.popToFadeAnimation()
                let controller = EFHMHomeViewController.initWithStoryboard()
                self.present(controller, animated: true, completion: nil);
            }
            
        }
        
    }

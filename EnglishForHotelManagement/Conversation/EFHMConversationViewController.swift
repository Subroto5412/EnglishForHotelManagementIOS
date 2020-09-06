//
//  EFHMConversationViewController.swift
//  EnglishForConstruction
//
//  Created by Subroto Mohonto on 5/9/20.
//  Copyright © 2020 Subroto Mohonto. All rights reserved.
//

import UIKit

class EFHMConversationViewController: UIViewController {

  
        @IBOutlet weak var bodyContainer: EFHMConversation!
        @IBOutlet weak var topBar: EFHMTopBar!
        class func initWithStoryboard() -> EFHMConversationViewController
           {
               let storyboard = UIStoryboard(name: "Main", bundle: nil)
               let controller = storyboard.instantiateViewController(withIdentifier: EFHMConversationViewController.className) as! EFHMConversationViewController

               return controller
           }

        override func viewDidLoad() {
            super.viewDidLoad()
            topBar.titleNameLbl.text = "Conversation"
            self.initializeTopBar()

            self.bodyContainer.geetingsHandler = {
                       [weak self] (isShow) in
                       guard let weakSelf = self else {
                       return
                      }
                   weakSelf.showGeetingsController()
               }
            
            self.bodyContainer.receptionHandler = {
                            [weak self] (isShow) in
                            guard let weakSelf = self else {
                            return
                           }
                        weakSelf.showInstructionController()
                    }
            
            self.bodyContainer.serviceHandler = {
                            [weak self] (isShow) in
                            guard let weakSelf = self else {
                            return
                           }
                        weakSelf.showProductController()
                    }
            
            self.bodyContainer.kitchenHandler = {
                            [weak self] (isShow) in
                            guard let weakSelf = self else {
                            return
                           }
                        weakSelf.showWorkController()
                    }
            
            self.bodyContainer.foodsHandler = {
                            [weak self] (isShow) in
                            guard let weakSelf = self else {
                            return
                           }
                        weakSelf.showFoodsController()
                    }
            
            self.bodyContainer.interviewHandler = {
                            [weak self] (isShow) in
                            guard let weakSelf = self else {
                            return
                           }
                        weakSelf.showGeetingsController()
                    }
    }
        func initializeTopBar() {
            self.topBar.delegate = self
        }
        
        func showHomeController() {
        
            let controller = EFHMHomeViewController.initWithStoryboard()
            self.present(controller, animated: true, completion: nil);
        }
        
        func showGeetingsController() {
              let controller = EFHMConversationGeetingsController.initWithStoryboard()
              self.present(controller, animated: true, completion: nil);
        }
        
        func showInstructionController() {
//              let controller = EFHMConversationInstructionController.initWithStoryboard()
//              self.present(controller, animated: true, completion: nil);
        }
        
        func showProductController() {
//              let controller = EFHMConversationProductController.initWithStoryboard()
//              self.present(controller, animated: true, completion: nil);
        }
        
        func showWorkController() {
//              let controller = EFHMWorkViewController.initWithStoryboard()
//              self.present(controller, animated: true, completion: nil);
        }
        
        func showFoodsController() {
//              let controller = EFHMConversationFoodsController.initWithStoryboard()
//              self.present(controller, animated: true, completion: nil);
        }
    }


    extension EFHMConversationViewController : EFHMTopBarDelegate {
        
        func didPressedOnButtonType(type:EFHMButtonType) {
            
            if type == .back {
              //  self.navigationController?.popToFadeAnimation()
                let controller = EFHMHomeViewController.initWithStoryboard()
                self.present(controller, animated: true, completion: nil);
            }
            
        }
        
    }

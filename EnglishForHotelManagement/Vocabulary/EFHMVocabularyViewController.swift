//
//  EFHMVocabularyViewController.swift
//  EnglishForConstruction
//
//  Created by Subroto Mohonto on 24/5/20.
//  Copyright © 2020 Subroto Mohonto. All rights reserved.
//

import UIKit

class EFHMVocabularyViewController: UIViewController {

    @IBOutlet weak var bodyContainer: EFHMVocabulary!
    @IBOutlet weak var topBar: EFHMTopBar!
    class func initWithStoryboard() -> EFHMVocabularyViewController
       {
           let storyboard = UIStoryboard(name: "Main", bundle: nil)
           let controller = storyboard.instantiateViewController(withIdentifier: EFHMVocabularyViewController.className) as! EFHMVocabularyViewController

           return controller
       }

    override func viewDidLoad() {
        super.viewDidLoad()

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
//          let controller = EFHMPrimaryController.initWithStoryboard()
//          self.present(controller, animated: true, completion: nil);
    }
    
    func showToolsController() {
//          let controller = EFHMToolsViewController.initWithStoryboard()
//          self.present(controller, animated: true, completion: nil);
    }
    
    func showProductController() {
//          let controller = EFHMProductViewController.initWithStoryboard()
//          self.present(controller, animated: true, completion: nil);
    }
    
    func showWorkController() {
//          let controller = EFHMWorkViewController.initWithStoryboard()
//          self.present(controller, animated: true, completion: nil);
    }
    
    func showFoodsController() {
//          let controller = EFHMFoodsViewController.initWithStoryboard()
//          self.present(controller, animated: true, completion: nil);
    }
}


extension EFHMVocabularyViewController : EFHMTopBarDelegate {
    
    func didPressedOnButtonType(type:EFHMButtonType) {
        
        if type == .back {
          //  self.navigationController?.popToFadeAnimation()
            let controller = EFHMHomeViewController.initWithStoryboard()
            self.present(controller, animated: true, completion: nil);
        }
        
    }
    
}

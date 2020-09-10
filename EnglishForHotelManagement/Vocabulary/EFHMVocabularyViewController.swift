//
//  EFHMVocabularyViewController.swift
//  EnglishForHotelManagement
//
//  Created by Subroto Mohonto on 5/9/20.
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

        self.bodyContainer.geetingsView.layer.cornerRadius = 20
        self.bodyContainer.receptionView.layer.cornerRadius = 20
        self.bodyContainer.serviceView.layer.cornerRadius = 20
        self.bodyContainer.kitchenView.layer.cornerRadius = 20
        self.bodyContainer.foodsView.layer.cornerRadius = 20
        self.initializeTopBar()

        self.bodyContainer.geetingsHandler = {
                   [weak self] (isShow) in
                   guard let weakSelf = self else {
                   return
                  }
               weakSelf.showGeetingsController()
           }
        
        self.bodyContainer.foodsHandler = {
                        [weak self] (isShow) in
                        guard let weakSelf = self else {
                        return
                       }
                    weakSelf.showFoodsController()
                }
        
        self.bodyContainer.receptionHandler = {
                        [weak self] (isShow) in
                        guard let weakSelf = self else {
                        return
                       }
                    weakSelf.showReceptionController()
                }
        
        self.bodyContainer.serviceHandler = {
                        [weak self] (isShow) in
                        guard let weakSelf = self else {
                        return
                       }
                    weakSelf.showServiceController()
                }
        
        self.bodyContainer.kitchenHandler = {
                        [weak self] (isShow) in
                        guard let weakSelf = self else {
                        return
                       }
                    weakSelf.showKitchenController()
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
          let controller = EFHMVocabularyGeetingsController.initWithStoryboard()
          self.present(controller, animated: true, completion: nil);
    }
    
    func showKitchenController() {
          let controller = EFHMVocabularyKitchenController.initWithStoryboard()
          self.present(controller, animated: true, completion: nil);
    }
    
    func showReceptionController() {
          let controller = EFHMVocabularyReceptionController.initWithStoryboard()
          self.present(controller, animated: true, completion: nil);
    }
    
    func showServiceController() {
         let controller = EFHMVocabularyServicesController.initWithStoryboard()
         self.present(controller, animated: true, completion: nil);
    }
    
    func showFoodsController() {
          let controller = EFHMVocabularyFoodsController.initWithStoryboard()
          self.present(controller, animated: true, completion: nil);
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

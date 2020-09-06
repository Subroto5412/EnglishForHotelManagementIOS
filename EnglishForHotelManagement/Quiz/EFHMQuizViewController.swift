//
//  EFCQuizViewController.swift
//  EnglishForConstruction
//
//  Created by Subroto Mohonto on 6/7/20.
//  Copyright © 2020 Subroto Mohonto. All rights reserved.
//

import UIKit

class EFHMQuizViewController: UIViewController {

    @IBOutlet weak var topBar: EFHMTopBar!
    @IBOutlet weak var bodyContainer: EFHMQuizBody!
    
    class func initWithStoryboard() -> EFHMQuizViewController
          {
              let storyboard = UIStoryboard(name: "Main", bundle: nil)
              let controller = storyboard.instantiateViewController(withIdentifier: EFHMQuizViewController.className) as! EFHMQuizViewController

              return controller
          }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.topBar.titleNameLbl.text = "Quiz"
        self.initializeTopBar()
      
        self.bodyContainer.quizRulesHandler = {
                               [weak self] (isShow) in
                               guard let weakSelf = self else {
                               return
                              }
                           weakSelf.showQuizRulesController()
                       }
        
        self.bodyContainer.LabelHandler1 = {
                [weak self] (isShow) in
                guard let weakSelf = self else {
                return
               }
            weakSelf.showLabel01Controller()
        }
        
        self.bodyContainer.LabelHandler2 = {
                [weak self] (isShow) in
                guard let weakSelf = self else {
                return
               }
            weakSelf.showLabel02Controller()
        }
        self.bodyContainer.LabelHandler3 = {
                       [weak self] (isShow) in
                       guard let weakSelf = self else {
                       return
                      }
                   weakSelf.showLabel03Controller()
               }
        
        self.bodyContainer.ResultHandler = {
                       [weak self] (isShow) in
                       guard let weakSelf = self else {
                       return
                      }
                   weakSelf.showResultController()
               }
    }
    func initializeTopBar() {
        self.topBar.delegate = self as? EFHMTopBarDelegate
       }
    
    func showQuizRulesController() {
//          let controller = EFCQuizRulesViewController.initWithStoryboard()
//          self.present(controller, animated: true, completion: nil);
    }
    
    func showLabel01Controller() {
//          let controller = EFCLabel01ViewController.initWithStoryboard()
//          self.present(controller, animated: true, completion: nil);
    }
    
    func showLabel02Controller() {
//          let controller = EFCLabel02ViewController.initWithStoryboard()
//          self.present(controller, animated: true, completion: nil);
    }
    
    func showLabel03Controller() {
//             let controller = EFCLabel03ViewController.initWithStoryboard()
//             self.present(controller, animated: true, completion: nil);
       }
    
    func showLabel04Controller() {
//                let controller = EFCLabel04ViewController.initWithStoryboard()
//                self.present(controller, animated: true, completion: nil);
    }
    
    func showResultController() {
//                let controller = EFCResultViewController.initWithStoryboard()
//                self.present(controller, animated: true, completion: nil);
    }
    
}


extension EFHMQuizViewController : EFHMTopBarDelegate {

func didPressedOnButtonType(type:EFHMButtonType) {
    
    if type == .back {
      //  self.navigationController?.popToFadeAnimation()
        let controller = EFHMHomeViewController.initWithStoryboard()
        self.present(controller, animated: true, completion: nil);
    }
    
 }
}

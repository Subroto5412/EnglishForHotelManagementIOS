//
//  EFCQuizViewController.swift
//  EnglishForHotelManagement
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
        
        self.bodyContainer.aboutView.layer.cornerRadius = 20
        self.bodyContainer.level01View.layer.cornerRadius = 20
        self.bodyContainer.level02View.layer.cornerRadius = 20
        self.bodyContainer.level03View.layer.cornerRadius = 20
        self.bodyContainer.resultView.layer.cornerRadius = 20
        
        self.initializeTopBar()
      
        self.bodyContainer.quizRulesHandler = {
                               [weak self] (isShow) in
                               guard let weakSelf = self else {
                               return
                              }
                           weakSelf.showQuizRulesController()
                       }
        
        self.bodyContainer.LevelHandler1 = {
                [weak self] (isShow) in
                guard let weakSelf = self else {
                return
               }
            weakSelf.showLabel01Controller()
        }
        
        self.bodyContainer.LevelHandler2 = {
                [weak self] (isShow) in
                guard let weakSelf = self else {
                return
               }
            weakSelf.showLabel02Controller()
        }
        self.bodyContainer.LevelHandler3 = {
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
     //   let controller = EFHMQuizRulesViewController.initWithStoryboard()
      //  self.present(controller, animated: true, completion: nil);
    }
    
    func showLabel01Controller() {
        let controller = EFHMLevel01ViewController.initWithStoryboard()
        self.present(controller, animated: true, completion: nil);
    }
    
    func showLabel02Controller() {
        let controller = EFHMLevel02ViewController.initWithStoryboard()
        self.present(controller, animated: true, completion: nil);
    }
    
    func showLabel03Controller() {
         let controller = EFHMLevel03ViewController.initWithStoryboard()
         self.present(controller, animated: true, completion: nil);
       }
    
    func showResultController() {
        let controller = EFHMResultController.initWithStoryboard()
        self.present(controller, animated: true, completion: nil);
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

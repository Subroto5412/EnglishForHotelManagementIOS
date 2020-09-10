//
//  EFCHomeViewController.swift
//  EnglishForHotelManagement
//
//  Created by Subroto Mohonto on 24/5/20.
//  Copyright © 2020 Subroto Mohonto. All rights reserved.
//

import UIKit

class EFHMHomeViewController: UIViewController {

    @IBOutlet weak var bodyContainer: EFHMProgressBody!
    
    class func initWithStoryboard() -> EFHMHomeViewController
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: EFHMHomeViewController.className) as! EFHMHomeViewController

        return controller
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.bodyContainer.vocabularyHandler = {
                  [weak self] (isShow) in
                               guard let weakSelf = self else {
                                   return
                               }
                               weakSelf.showVocabularyController()
                          }
        self.bodyContainer.sentenceHandler = {
            
            [weak self] (isShow) in
                        guard let weakSelf = self else {
                            return
                        }
                        weakSelf.showSentenceController()
        }
        
        self.bodyContainer.conversationHandler = {
                   
                   [weak self] (isShow) in
                               guard let weakSelf = self else {
                                   return
                               }
                               weakSelf.showConversationController()
               }
        
        
        self.bodyContainer.quizHandler = {
                    
                    [weak self] (isShow) in
                                guard let weakSelf = self else {
                                    return
                                }
                                weakSelf.showQuizController()
                }
    }
    
    
    @IBAction func progressBtn(_ sender: UIButton) {
        
        let controller = EFHMResultController.initWithStoryboard()
        self.present(controller, animated: true, completion: nil);
    }
    

    func showVocabularyController() {
           let controller = EFHMVocabularyViewController.initWithStoryboard()
           self.present(controller, animated: true, completion: nil);
    }
    
    func showSentenceController() {
        let controller = EFHMSentenceViewController.initWithStoryboard()
        self.present(controller, animated: true, completion: nil);
    }
    
    func showConversationController() {
        let controller = EFHMConversationViewController.initWithStoryboard()
        self.present(controller, animated: true, completion: nil);
    }
    func showQuizController() {
        let controller = EFHMQuizViewController.initWithStoryboard()
        self.present(controller, animated: true, completion: nil);
    }
}

//
//  EFHMPrimaryViewController.swift
//  EnglishForConstruction
//
//  Created by Subroto Mohonto on 5/9/20.
//  Copyright © 2020 Subroto Mohonto. All rights reserved.
//

import UIKit

class EFHMVocabularyGeetingsController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var topBar: EFHMTopBar!
    var items = EFHMVocabularyDataManager.shared.getAllGeetingsVocabulary()
    
    class func initWithStoryboard() -> EFHMVocabularyGeetingsController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: EFHMVocabularyGeetingsController.className) as! EFHMVocabularyGeetingsController
        return controller
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.topBar.titleNameLbl.text = "Geetings Vocabulary"
        self.initializeTopBar()
    }
    func initializeTopBar() {
           self.topBar.delegate = self
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         items.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:EFHMVocabularyGeetingsControllerCell = tableView.dequeueReusableCell(withIdentifier: "EFHMVocabularyGeetingsControllerCell") as! EFHMVocabularyGeetingsControllerCell
            
        cell.englishWord.text = self.items[indexPath.item].english
        cell.banglaWord.text =  self.items[indexPath.item].bangla
        return cell
    }
}

extension EFHMVocabularyGeetingsController : EFHMTopBarDelegate {
    
    func didPressedOnButtonType(type:EFHMButtonType) {
    if type == .back {
        let controller = EFHMVocabularyViewController.initWithStoryboard()
        self.present(controller, animated: true, completion: nil);
       }
    }
}



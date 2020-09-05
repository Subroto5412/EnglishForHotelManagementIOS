//
//  EFHMProductViewController.swift
//  EnglishForConstruction
//
//  Created by Subroto Mohonto on 28/5/20.
//  Copyright © 2020 Subroto Mohonto. All rights reserved.
//

import UIKit

class EFHMVocabularyKitchenController: UIViewController, UITableViewDataSource, UITableViewDelegate {
     @IBOutlet weak var topBar: EFHMTopBar!
     var items = EFHMVocabularyDataManager.shared.getAllReceptionVocabulary()
    
        class func initWithStoryboard() -> EFHMVocabularyKitchenController
           {
               let storyboard = UIStoryboard(name: "Main", bundle: nil)
               let controller = storyboard.instantiateViewController(withIdentifier: EFHMVocabularyKitchenController.className) as! EFHMVocabularyKitchenController

               return controller
           }
    
        override func viewDidLoad() {
            super.viewDidLoad()
             self.topBar.titleNameLbl.text = "Kitchen Vocabulary"
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
                
            let cell:EFHMVocabularyKitchenControllerCell = tableView.dequeueReusableCell(withIdentifier: "EFHMVocabularyKitchenControllerCell") as! EFHMVocabularyKitchenControllerCell
            cell.englishWord.text = items[indexPath.item].english
            cell.banglaWord.text = items[indexPath.item].bangla
            return cell
        }
}

    extension EFHMVocabularyKitchenController : EFHMTopBarDelegate {
        
        func didPressedOnButtonType(type:EFHMButtonType) {
            
            if type == .back {
                let controller = EFHMVocabularyViewController.initWithStoryboard()
                self.present(controller, animated: true, completion: nil);
            }
        }
    }



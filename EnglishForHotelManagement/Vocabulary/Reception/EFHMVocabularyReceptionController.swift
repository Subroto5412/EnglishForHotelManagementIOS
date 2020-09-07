//
//  EFHMToolsViewController.swift
//  EnglishForHotelManagement
//
//  Created by Subroto Mohonto on 28/5/20.
//  Copyright © 2020 Subroto Mohonto. All rights reserved.
//

import UIKit

class EFHMVocabularyReceptionController: UIViewController, UITableViewDataSource, UITableViewDelegate {

   @IBOutlet weak var topBar: EFHMTopBar!  
    var items = EFHMVocabularyDataManager.shared.getAllReceptionVocabulary()
    
        class func initWithStoryboard() -> EFHMVocabularyReceptionController {
               let storyboard = UIStoryboard(name: "Main", bundle: nil)
               let controller = storyboard.instantiateViewController(withIdentifier: EFHMVocabularyReceptionController.className) as! EFHMVocabularyReceptionController

               return controller
           }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            self.topBar.titleNameLbl.text = "Reception Vocabulary"
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
                
                let cell:EFHMVocabularyReceptionControllerCell = tableView.dequeueReusableCell(withIdentifier: "EFHMVocabularyReceptionControllerCell") as! EFHMVocabularyReceptionControllerCell
                 cell.englishWord.text = self.items[indexPath.item].english
                cell.banglaWord.text = self.items[indexPath.item].bangla
                return cell
            }
    }

    extension EFHMVocabularyReceptionController : EFHMTopBarDelegate {
        
        func didPressedOnButtonType(type:EFHMButtonType) {
            
            if type == .back {
                let controller = EFHMVocabularyViewController.initWithStoryboard()
                self.present(controller, animated: true, completion: nil);
            }
            
        }
        
    }



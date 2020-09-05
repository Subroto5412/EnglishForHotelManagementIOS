//
//  EFHMSentenceKitchenController.swift
//  EnglishForHotelManagement
//
//  Created by Subroto Mohonto on 6/9/20.
//  Copyright © 2020 Opu Sumon. All rights reserved.
//

import UIKit

class EFHMSentenceKitchenController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var topBar: EFHMTopBar!
    var items = EFHMVocabularyDataManager.shared.getAllGeetingsVocabulary()
    
    class func initWithStoryboard() -> EFHMSentenceKitchenController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: EFHMSentenceKitchenController.className) as! EFHMSentenceKitchenController
        return controller
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.topBar.titleNameLbl.text = "Kitchen Sentence"
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
        
        let cell:EFHMSentenceKitchenControllerCell = tableView.dequeueReusableCell(withIdentifier: "EFHMSentenceKitchenControllerCell") as! EFHMSentenceKitchenControllerCell
            
        cell.englishWord.text = self.items[indexPath.item].english
        cell.banglaWord.text =  self.items[indexPath.item].bangla
        return cell
    }
}

extension EFHMSentenceKitchenController : EFHMTopBarDelegate {
    
    func didPressedOnButtonType(type:EFHMButtonType) {
    if type == .back {
        let controller = EFHMSentenceViewController.initWithStoryboard()
        self.present(controller, animated: true, completion: nil);
       }
    }
}

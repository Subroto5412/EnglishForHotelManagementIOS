//
//  EFHMConversationFoodsController.swift
//  EnglishForHotelManagement
//
//  Created by Subroto Mohonto on 6/9/20.
//  Copyright © 2020 Opu Sumon. All rights reserved.
//

import UIKit

class EFHMConversationFoodsController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var topBar: EFHMTopBar!
    var items = EFHMVocabularyDataManager.shared.getAllGeetingsVocabulary()
    
    class func initWithStoryboard() -> EFHMConversationFoodsController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: EFHMConversationFoodsController.className) as! EFHMConversationFoodsController
        return controller
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.topBar.titleNameLbl.text = "Foods Conversation"
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
        
        let cell:EFHMConversationFoodsControllerCell = tableView.dequeueReusableCell(withIdentifier: "EFHMConversationFoodsControllerCell") as! EFHMConversationFoodsControllerCell
            
        cell.englishWord.text = self.items[indexPath.item].english
        cell.banglaWord.text =  self.items[indexPath.item].bangla
        return cell
    }
}

extension EFHMConversationFoodsController : EFHMTopBarDelegate {
    
    func didPressedOnButtonType(type:EFHMButtonType) {
    if type == .back {
        let controller = EFHMConversationViewController.initWithStoryboard()
        self.present(controller, animated: true, completion: nil);
       }
    }
}



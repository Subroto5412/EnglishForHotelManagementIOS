//
//  EFCTopBar.swift
//  EnglishForConstruction
//
//  Created by Subroto Mohonto on 21/5/20.
//  Copyright © 2020 Subroto Mohonto. All rights reserved.
//

import UIKit

enum EFHMButtonType : Int {
    
    case back
    case top
    case reset
}
protocol EFHMTopBarDelegate : NSObjectProtocol {
    func didPressedOnButtonType(type:EFHMButtonType)
}


class EFHMTopBar: EFHMXibView {

    @IBOutlet weak var titleNameLbl: UILabel!
    
    weak var delegate : EFHMTopBarDelegate?

    @IBAction func btnBack(_ sender: UIButton) {
           self.delegate?.didPressedOnButtonType(type: .back)
    }
}

//
//  EFHMVocabularyModel.swift
//  EnglishForHotelManagement
//
//  Created by Subroto Mohonto on 22/6/20.
//  Copyright © 2020 Subroto Mohonto. All rights reserved.
//

import UIKit

class EFHMVocabularyModel: NSObject {
    
    var type : String?
    var english : String?
    var bangla : String?
    
    init(type : String?, english : String?, bangla : String?) {
        super.init()
        self.type = type
        self.english = english
        self.bangla = bangla
    }

}

//
//  NSObject+Extension.swift
//  EnglishForHotelManagement
//
//  Created by Subroto Mohonto on 13/8/20.
//  Copyright © 2020 Opu Sumon. All rights reserved.
//

import UIKit

extension NSObject {
    var className: String {
        return String(describing: type(of: self))
    }
    
    class var className: String {
        return String(describing: self)
    }
}

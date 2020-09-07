//
//  EFCDesignCardView.swift
//  EnglishForHotelManagement
//
//  Created by Subroto Mohonto on 26/5/20.
//  Copyright © 2020 Subroto Mohonto. All rights reserved.
//

import UIKit

class EFHMDesignCardView: UIView {

    var cornerRadius : CGFloat = 0
    var shadowColor : UIColor? = UIColor.black
    var shadowOffSetWidth : Int = 0
    var shadowOffSetHeight : Int = 1
    var shadowOpacity : Float = 0.2
    
    override func layoutSubviews() {
        layer.cornerRadius = cornerRadius
        layer.shadowColor = shadowColor?.cgColor
        layer.shadowOffset = CGSize(width: shadowOffSetWidth, height: shadowOffSetHeight)
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        layer.shadowPath = shadowPath.cgPath
        layer.shadowOpacity = shadowOpacity
    }
}

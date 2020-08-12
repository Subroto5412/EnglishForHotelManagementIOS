//
//  EFHMXibView.swift
//  EnglishForHotelManagement
//
//  Created by Subroto Mohonto on 13/8/20.
//  Copyright © 2020 Opu Sumon. All rights reserved.
//

import UIKit

class EFHMXibView: UIView {

    var contentView : UIView!
             
             override init(frame: CGRect) {
                 super.init(frame: frame)
                 xibSetup()
             }
             
             required init?(coder aDecoder: NSCoder) {
                 super.init(coder: aDecoder)
                 xibSetup()
             }
         
         func loadNib() -> UIView {
               let bundle = Bundle(for: type(of: self))
               let nibName = type(of: self).description().components(separatedBy: ".").last!
               let nib = UINib(nibName: nibName, bundle: bundle)
               return nib.instantiate(withOwner: self, options: nil).first as! UIView
           }
           
         }

         private extension EFHMXibView {
             
             func xibSetup() {
                 
                 backgroundColor = UIColor.clear
                 contentView = loadNib()
                 contentView.frame = bounds
                 addSubview(contentView)
                 
                 contentView.translatesAutoresizingMaskIntoConstraints = false
                 addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[childView]|",
                                                               options: [],
                                                               metrics: nil,
                                                               views: ["childView": contentView]))
                 addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[childView]|",
                                                               options: [],
                                                               metrics: nil,
                                                               views: ["childView": contentView]))
                 
             }
}

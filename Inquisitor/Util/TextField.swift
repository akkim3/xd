//
//  TextField.swift
//  Inquisitor
//
//  Created by Akhil on 1/3/18.
//  Copyright © 2018 Carnegie. All rights reserved.
//

import Foundation
import UIKit
public extension UITextField {
    
   public func setBottomLine(borderColor: UIColor) {
        
        self.borderStyle = UITextBorderStyle.none
        self.backgroundColor = UIColor.clear
        
        let borderLine = UIView()
        let height = 1.0
        borderLine.frame = CGRect(x: 0, y: Double(self.frame.height) - height, width: Double(self.frame.width-20.0), height: height)
        
        borderLine.backgroundColor = borderColor
        self.addSubview(borderLine)
    }
    
}

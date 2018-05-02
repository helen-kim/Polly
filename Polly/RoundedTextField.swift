//
//  RoundedTextField.swift
//  Polly
//
//  Created by Helen Kim on 4/29/18.
//  Copyright © 2018 translators. All rights reserved.
//

import UIKit

class RoundedTextField : UITextField {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        layer.borderWidth = 2
        layer.borderColor = UIColor.init(red: 196.0/255.0, green: 196.0/255.0, blue: 196.0/255.0, alpha: 1).cgColor
        layer.cornerRadius = frame.height/2
    }
}

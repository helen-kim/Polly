//
//  SpecificationsController.swift
//  Polly
//
//  Created by Helen Kim on 4/29/18.
//  Copyright © 2018 translators. All rights reserved.
//

import UIKit

extension UITextField {
    func setPadding() {
        let paddingView = UIView(frame: CGRect(x: 0, y:0, width:10, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = .always
        
    }
}

class SpecificationsController: UIViewController {

    @IBOutlet weak var otherField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        otherField.setPadding()
    }
}

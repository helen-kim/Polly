//
//  PasscodeViewController.swift
//  Polly
//
//  Created by Helen Kim on 5/8/18.
//  Copyright © 2018 translators. All rights reserved.
//

import UIKit

class PasscodeViewController: UIViewController, UITextFieldDelegate {

    var pass = "1234"
    @IBOutlet weak var passField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passField.delegate = self
        
        nextButton.isEnabled = false
        nextButton.setImage(#imageLiteral(resourceName: "arrow-disabled"), for: .disabled)
        nextButton.setImage(#imageLiteral(resourceName: "arrow_inac-1"), for: .normal)
        nextButton.setImage(#imageLiteral(resourceName: "arrow_ac-1"), for: .highlighted)
        // Do any additional setup after loading the view.
    }

    func textFieldShouldReturn(_ scoreText: UITextField) -> Bool {
        self.view.endEditing(true)
        
        if passField.text == pass {
            nextButton.isEnabled = true
        }
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

//
//  RequestReviewController.swift
//  Polly
//
//  Created by Helen Kim on 5/6/18.
//  Copyright © 2018 translators. All rights reserved.
//

import UIKit

class RequestReviewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var patientName: UITextField!
    @IBOutlet weak var genderLabel: UILabel!
    
    var gender:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        patientName.delegate = self
        if let genderToDisplay = gender {
            genderLabel.text = genderToDisplay
        }
    }
    
    func textFieldShouldReturn(_ scoreText: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

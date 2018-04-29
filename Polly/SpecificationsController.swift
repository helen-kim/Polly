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
        let paddingView = UIView(frame: CGRect(x: 0, y:0, width:20, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
}

class SpecificationsController: UIViewController, UIPickerViewDelegate, UIPickerViewaDataSource {

    @IBOutlet weak var otherField: UITextField!
    @IBOutlet weak var genderPicker: UIPickerView!
    @IBOutlet weak var genderButton: RoundedButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        otherField.setPadding()
    }
    
    @IBAction func genderPressed(_ sender: RoundedButton) {
        
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
}

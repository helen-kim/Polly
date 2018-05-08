//
//  LanguageController.swift
//  Polly
//
//  Created by Helen Kim on 5/2/18.
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

class LanguageController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var langField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    
    let languages = ["English", "Español", "한국어", "中文", "عربى"]
    
    var pickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.isEnabled = false
        nextButton.setImage(#imageLiteral(resourceName: "arrow-disabled"), for: .disabled)
        nextButton.setImage(#imageLiteral(resourceName: "arrow_inac-1"), for: .normal)
        nextButton.setImage(#imageLiteral(resourceName: "arrow_ac-1"), for: .highlighted)
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        langField.setPadding()
        langField.inputView = pickerView
        langField.textAlignment = .left
        langField.placeholder = "Select Language"
        
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? TabBarLanguageController {
            destination.lang = langField.text
        }
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return languages.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return languages[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        langField.text = languages[row]
        langField.resignFirstResponder()
        if (langField.text == "English" || langField.text == "한국어") {
            nextButton.isEnabled = true
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

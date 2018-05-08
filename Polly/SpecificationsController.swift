//
//  SpecificationsController.swift
//  Polly
//
//  Created by Helen Kim on 4/29/18.
//  Copyright © 2018 translators. All rights reserved.
//

import UIKit

//extension UITextField {
//    func setPadding() {
//        let paddingView = UIView(frame: CGRect(x: 0, y:0, width:20, height: self.frame.height))
//        self.leftView = paddingView
//        self.leftViewMode = .always
//    }
//}

class SpecificationsController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var otherField: UITextField!
    @IBOutlet weak var genderPicker: UIPickerView!
    @IBOutlet weak var genderButton: RoundedButton!
    @IBOutlet weak var navLabel: UINavigationItem!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var genLabel: UILabel!
    @IBOutlet weak var othLabel: UILabel!
    
    var lang:String?
    var genders:Array<String>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        genderPicker.isHidden = true
        nextButton.setImage(#imageLiteral(resourceName: "arrow_inac-1"), for: .normal)
        nextButton.setImage(#imageLiteral(resourceName: "arrow_ac-1"), for: .highlighted)
        
        super.viewDidLoad()
        otherField.setPadding()
        otherField.delegate = self
        
        genderPicker.delegate = self
        genderPicker.dataSource = self
        
        print("specifications: " + lang!)
        setContent(lang!)
    }
    
    func setContent(_ lang: String) {
        if lang == "한국어" {
            navLabel.title = "번역 서비스"
            genders = ["여성", "남성", "기타"]
            titleLabel.text = "통역사 설정"
            genLabel.text = "성별"
            genderButton.setTitle("성별을 선택하세요", for: .normal)
            othLabel.text = "기타"
            otherField.placeholder = "추가 설정을 써주세요..."
        } else {
            genders = ["Female", "Male", "Other"]
        }
    }
    
    @IBAction func genderPressed(_ sender: RoundedButton) {
        if genderPicker.isHidden {
            genderPicker.isHidden = false
        }
        nextButton.isHidden = true
    }
    
    @IBAction func nextPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "requestSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? RequestReviewController {
            destination.lang = lang
            if (genderButton.title(for: .normal) != "Select gender" && genderButton.title(for: .normal) != "성별을 선택하세요") {
                destination.gender = genderButton.title(for: .normal)
            } else {
                if lang == "한국어" {
                    destination.gender = "상관없음"
                } else {
                    destination.gender = "No preference"
                }
            }
        }
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return genders!.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return genders?[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        genderButton.setTitle(genders?[row], for: .normal)
        genderButton.setTitleColor(UIColor.black, for: .normal)
        genderPicker.isHidden = true
        
        nextButton.isHidden = false
    }
    
    func textFieldShouldReturn(_ scoreText: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
}


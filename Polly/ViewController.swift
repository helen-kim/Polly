//
//  ViewController.swift
//  HorizontalScrollView
//
//  Created by Yash Patel on 04/10/17.
//  Copyright © 2017 Yash Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var langField: UITextField!
    
    let crashCourseImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "capstone v1-1"))
        // this enables autolayout for our imageview
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let languages = ["English", "Spanish", "Korean", "Chinese", "Arabic"]
    
    var pickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        langField.inputView = pickerView
        langField.textAlignment = .center
        langField.placeholder = "Select Language"
        
        // here's our entry point into our app
        
        
        
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
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}



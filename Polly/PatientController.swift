//
//  PatientController.swift
//  Polly
//
//  Created by Helen Kim on 5/8/18.
//  Copyright © 2018 translators. All rights reserved.
//

import UIKit

class PatientController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func meButton(_ sender: UIButton) {
        performSegue(withIdentifier: "patientSegue", sender: self)
    }
    @IBAction func famPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "patientSegue", sender: self)
    }
    @IBAction func friendPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "patientSegue", sender: self)
    }
    @IBAction func somePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "patientSegue", sender: self)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

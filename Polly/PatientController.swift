//
//  PatientController.swift
//  Polly
//
//  Created by Helen Kim on 5/8/18.
//  Copyright © 2018 translators. All rights reserved.
//

import UIKit

class PatientController: UIViewController {

    var lang:String?
    
    @IBOutlet weak var navLabel: UINavigationItem!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var meButton: RoundedButtonNoBorder!
    @IBOutlet weak var famButton: RoundedButtonNoBorder!
    @IBOutlet weak var friendButton: RoundedButtonNoBorder!
    @IBOutlet weak var someButton: RoundedButtonNoBorder!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("patient: " + lang!)
        setContent(lang!)
    }

    func setContent(_ lang: String) {
        if lang == "한국어" {
            navLabel.title = "번역 서비스"
            titleLabel.text = "환자를 선택해 주세요"
            meButton.setTitle("나", for: .normal)
            famButton.setTitle("가족", for: .normal)
            friendButton.setTitle("친구", for: .normal)
            someButton.setTitle("그 외", for: .normal)
        }
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? TypeController {
            destination.lang = lang
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

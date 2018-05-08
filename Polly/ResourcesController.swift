//
//  ResourcesController.swift
//  Polly
//
//  Created by Helen Kim on 5/6/18.
//  Copyright © 2018 translators. All rights reserved.
//

import UIKit

class ResourcesController: UIViewController {

    @IBOutlet weak var courseButton: UIButton!
    @IBOutlet weak var dictButton: UIButton!
    @IBOutlet weak var navLabel: UINavigationItem!
    
    var lang:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tbvc = self.tabBarController as! TabBarLanguageController
        lang = tbvc.lang
        print("resources: " + lang!)
        setButtons(lang!)
    }
    
    func setButtons(_ lang: String) {
        if lang == "English" {
            courseButton.setImage(#imageLiteral(resourceName: "101_inac"), for: .normal)
            courseButton.setImage(#imageLiteral(resourceName: "101_ac"), for: .highlighted)
            dictButton.setImage(#imageLiteral(resourceName: "dictionary_inac"), for: .normal)
            dictButton.setImage(#imageLiteral(resourceName: "dictionary_ac"), for: .highlighted)
        } else if lang == "한국어" {
            navLabel.title = "추가 자료"
            courseButton.setImage(#imageLiteral(resourceName: "inact101"), for: .normal)
            courseButton.setImage(#imageLiteral(resourceName: "act101"), for: .highlighted)
            dictButton.setImage(#imageLiteral(resourceName: "inactdict"), for: .normal)
            dictButton.setImage(#imageLiteral(resourceName: "actdict"), for: .highlighted)
            dictButton.isEnabled = false
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

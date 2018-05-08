//
//  HomeController.swift
//  Polly
//
//  Created by Helen Kim on 5/2/18.
//  Copyright © 2018 translators. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    @IBOutlet weak var langButton: UIButton!
    @IBOutlet weak var resButton: UIButton!
    @IBOutlet weak var setButton: UIButton!
    @IBOutlet weak var profButton: UIButton!
    var lang:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tbvc = self.tabBarController as! TabBarLanguageController
        lang = tbvc.lang
        print("home: " + lang!)
        setButtons(lang!)
    }
    
    func setButtons(_ lang: String) {
        if lang == "English" {
            langButton.setImage(#imageLiteral(resourceName: "translation_inac"), for: .normal)
            langButton.setImage(#imageLiteral(resourceName: "translation_ac"), for: .highlighted)
            resButton.setImage(#imageLiteral(resourceName: "resources_inac-1"), for: .normal)
            resButton.setImage(#imageLiteral(resourceName: "resources_ac-1"), for: .highlighted)
            setButton.setImage(#imageLiteral(resourceName: "settings_inac-1"), for: .normal)
            setButton.setImage(#imageLiteral(resourceName: "settings_ac-1"), for: .highlighted)
            profButton.setImage(#imageLiteral(resourceName: "profiles_inac-1"), for: .normal)
            profButton.setImage(#imageLiteral(resourceName: "profiles_ac-1"), for: .highlighted)
        } else if lang == "한국어" {
            langButton.setImage(#imageLiteral(resourceName: "inacttrans"), for: .normal)
            langButton.setImage(#imageLiteral(resourceName: "acttrans"), for: .highlighted)
            resButton.setImage(#imageLiteral(resourceName: "inactresource"), for: .normal)
            resButton.setImage(#imageLiteral(resourceName: "actresource"), for: .highlighted)
            setButton.setImage(#imageLiteral(resourceName: "inactsetting"), for: .normal)
            setButton.setImage(#imageLiteral(resourceName: "actsetting"), for: .highlighted)
            profButton.setImage(#imageLiteral(resourceName: "inactprofile"), for: .normal)
            profButton.setImage(#imageLiteral(resourceName: "actprofile"), for: .highlighted)
            profButton.isEnabled = false
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

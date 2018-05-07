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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        langButton.setImage(#imageLiteral(resourceName: "translation_inac"), for: .normal)
        langButton.setImage(#imageLiteral(resourceName: "translation_ac"), for: .highlighted)
        resButton.setImage(#imageLiteral(resourceName: "resources_inac-1"), for: .normal)
        resButton.setImage(#imageLiteral(resourceName: "resources_ac-1"), for: .highlighted)
        setButton.setImage(#imageLiteral(resourceName: "settings_inac-1"), for: .normal)
        setButton.setImage(#imageLiteral(resourceName: "settings_ac-1"), for: .highlighted)
        profButton.setImage(#imageLiteral(resourceName: "profiles_inac-1"), for: .normal)
        profButton.setImage(#imageLiteral(resourceName: "profiles_ac-1"), for: .highlighted)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

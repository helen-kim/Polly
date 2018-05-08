//
//  TabBarViewController.swift
//  Polly
//
//  Created by Helen Kim on 5/8/18.
//  Copyright © 2018 translators. All rights reserved.
//

import UIKit

class TabBarLanguageController: UITabBarController {

    var lang:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("tab: "+lang!)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

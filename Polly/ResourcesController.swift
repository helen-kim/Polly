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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        courseButton.setImage(#imageLiteral(resourceName: "101_inac"), for: .normal)
        courseButton.setImage(#imageLiteral(resourceName: "101_ac"), for: .highlighted)
        dictButton.setImage(#imageLiteral(resourceName: "dictionary_inac"), for: .normal)
        dictButton.setImage(#imageLiteral(resourceName: "dictionary_ac"), for: .highlighted)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

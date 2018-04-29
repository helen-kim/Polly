//
//  InfoPopupViewController.swift
//  Polly
//
//  Created by Helen Kim on 4/27/18.
//  Copyright © 2018 translators. All rights reserved.
//

import UIKit

class InfoPopupViewController: UIViewController {

    @IBOutlet weak var closeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func close_TouchUpInside(_ sender: UIButton) {
        dismiss(animated: true)
    }
}

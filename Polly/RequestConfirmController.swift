//
//  RequestConfirmController.swift
//  Polly
//
//  Created by Helen Kim on 5/6/18.
//  Copyright © 2018 translators. All rights reserved.
//

import UIKit

class RequestConfirmController: UIViewController {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var closeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func unwindAction(_ sender: UIStoryboardSegue) {
        print("unwind")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

//
//  CommunicationController.swift
//  Polly
//
//  Created by Helen Kim on 5/2/18.
//  Copyright © 2018 translators. All rights reserved.
//

import UIKit

class CommunicationController: UIViewController {

    @IBOutlet weak var vidButton: UIButton!
    @IBOutlet weak var inPerButton: UIButton!
    @IBOutlet weak var phoneButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inPerButton.setImage(#imageLiteral(resourceName: "in_person_inac"), for: .normal)
        inPerButton.setImage(#imageLiteral(resourceName: "in_person_ac"), for: .highlighted)
        vidButton.setImage(#imageLiteral(resourceName: "video_inac"), for: .normal)
        vidButton.setImage(#imageLiteral(resourceName: "video_ac"), for: .highlighted)
        phoneButton.setImage(#imageLiteral(resourceName: "phone_inac"), for: .normal)
        phoneButton.setImage(#imageLiteral(resourceName: "phone_ac"), for: .highlighted)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

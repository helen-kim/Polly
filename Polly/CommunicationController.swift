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
    @IBOutlet weak var navLabel: UINavigationItem!
    @IBOutlet weak var instructionsLabel: UILabel!
    
    var lang:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("communication: " + lang!)
        setContent(lang!)
    }
    
    func setContent(_ lang: String) {
        if lang == "English" {
            inPerButton.setImage(#imageLiteral(resourceName: "in_person_inac-1"), for: .normal)
            inPerButton.setImage(#imageLiteral(resourceName: "in_person_ac-1"), for: .highlighted)
            vidButton.setImage(#imageLiteral(resourceName: "video_inac-1"), for: .normal)
            vidButton.setImage(#imageLiteral(resourceName: "video_ac-1"), for: .highlighted)
            phoneButton.setImage(#imageLiteral(resourceName: "phone_inac-1"), for: .normal)
            phoneButton.setImage(#imageLiteral(resourceName: "phone_ac-1"), for: .highlighted)
        } else if lang == "한국어" {
            navLabel.title = "번역 서비스"
            instructionsLabel.text = """
            전문 통역사를 요청하고 싶으시다고 표시하셨습니다.
            
            선호하시는 의사소통 방법을 선택해 주세요.
            """
            instructionsLabel.setLineSpacing(lineSpacing: 1.5)
            inPerButton.setImage(#imageLiteral(resourceName: "inactperson"), for: .normal)
            inPerButton.setImage(#imageLiteral(resourceName: "actperson"), for: .highlighted)
            vidButton.setImage(#imageLiteral(resourceName: "inactvid"), for: .normal)
            vidButton.setImage(#imageLiteral(resourceName: "actvid"), for: .highlighted)
            phoneButton.setImage(#imageLiteral(resourceName: "inactphone"), for: .normal)
            phoneButton.setImage(#imageLiteral(resourceName: "actphone"), for: .highlighted)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SpecificationsController {
            destination.lang = lang
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

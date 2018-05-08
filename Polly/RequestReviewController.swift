//
//  RequestReviewController.swift
//  Polly
//
//  Created by Helen Kim on 5/6/18.
//  Copyright © 2018 translators. All rights reserved.
//

import UIKit

class RequestReviewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var patientName: UITextField!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var navLabel: UINavigationItem!
    @IBOutlet weak var patientLabel: UILabel!
    @IBOutlet weak var transLabel: UILabel!
    @IBOutlet weak var transType: UILabel!
    @IBOutlet weak var prefLabel: UILabel!
    @IBOutlet weak var methodLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var locationName: UILabel!
    @IBOutlet weak var requestButton: RoundedButtonNoBorder!
    @IBOutlet weak var otherConLabel: UILabel!
    @IBOutlet weak var genderType: UILabel!
    
    var gender:String?
    var lang:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        patientName.delegate = self
        print("req: " + lang!)
        if let genderToDisplay = gender {
            genderLabel.text = genderToDisplay
        }
        setContent(lang!)
    }
    
    func setContent(_ lang: String) {
        if lang == "한국어" {
            navLabel.title = "통역사 요청 확인"
            patientLabel.text = "환자 이름"
            patientName.placeholder = "환자분의 이름을 써주세요"
            transLabel.text = "통역사"
            transType.text = "전문의"
            prefLabel.text = "소통 방식"
            methodLabel.text = "현장 지원"
            locationLabel.text = "장소"
            otherConLabel.text = "추가 선호 설정"
            genderType.text = "통역사 성별"
            requestButton.setTitle("요청 보내기", for: .normal)
        }
    }
    
    func textFieldShouldReturn(_ scoreText: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? RequestConfirmController {
            destination.lang = lang
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

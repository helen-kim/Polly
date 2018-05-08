//
//  TypeController.swift
//  Polly
//
//  Created by Helen Kim on 5/8/18.
//  Copyright © 2018 translators. All rights reserved.
//

import UIKit

class TypeController: UIViewController {

    var lang:String?

    @IBOutlet weak var navLabel: UINavigationItem!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var someButton: RoundedButtonNoBorder!
    @IBOutlet weak var meButton: RoundedButtonNoBorder!
    @IBOutlet weak var profButton: RoundedButtonNoBorder!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("translator: " + lang!)
        setContent(lang!)
    }

    func setContent(_ lang: String) {
        if lang == "한국어" {
            navLabel.title = "번역 서비스"
            titleLabel.text = "통역사를 선택해 주세요"
            meButton.setTitle("나", for: .normal)
            profButton.setTitle("전문의", for: .normal)
            someButton.setTitle("그 외", for: .normal)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? CommunicationController {
            destination.lang = lang
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

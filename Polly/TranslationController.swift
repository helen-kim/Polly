//
//  TranslationController.swift
//  Polly
//
//  Created by Helen Kim on 5/8/18.
//  Copyright © 2018 translators. All rights reserved.
//

import UIKit

extension UILabel {
    
    // Pass value for any one of both parameters and see result
    func setLineSpacing(lineSpacing: CGFloat = 0.0, lineHeightMultiple: CGFloat = 0.0) {
        
        guard let labelText = self.text else { return }
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = lineSpacing
        paragraphStyle.lineHeightMultiple = lineHeightMultiple
        
        let attributedString:NSMutableAttributedString
        if let labelattributedText = self.attributedText {
            attributedString = NSMutableAttributedString(attributedString: labelattributedText)
        } else {
            attributedString = NSMutableAttributedString(string: labelText)
        }
        
        // Line spacing attribute
        attributedString.addAttribute(NSAttributedStringKey.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, attributedString.length))
        
        self.attributedText = attributedString
    }
}

class TranslationController: UIViewController {
    var lang:String?
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var rememberText: UILabel!
    @IBOutlet weak var moreButton: RoundedButtonNoBorder!
    @IBOutlet weak var startButton: RoundedButtonNoBorder!
    @IBOutlet weak var navLabel: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tbvc = self.tabBarController as! TabBarLanguageController
        lang = tbvc.lang
        print("translation: " + lang!)
        setContent(lang!)
    }

    func setContent(_ lang: String) {
        if lang == "한국어" {
            welcomeLabel.text = "어서오세요!"
            rememberText.text = "잊지 마세요, 여러분은 언제든지 차별 없는 의료서비스를 받을 권리가 있으며, 진료의 질을 보장하기 위해 전문적인 의료 통역사를 요청할 수 있습니다."
            rememberText.setLineSpacing(lineSpacing: 1.5)
            moreButton.setTitle("더보기", for: .normal)
            startButton.setTitle("시작", for: .normal)
            navLabel.title = "번역 서비스"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? InfoPopupViewController {
            destination.lang = lang
        } else if let destination = segue.destination as? PatientController {
            destination.lang = lang
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

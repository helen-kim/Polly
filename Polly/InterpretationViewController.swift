//
//  InterpretationViewController.swift
//  Polly
//
//  Created by Sophie Zhao on 5/8/18.
//  Copyright © 2018 translators. All rights reserved.
//

import UIKit

class InterpretationViewController: UIViewController {

    var lang:String?
    
    
    @IBOutlet weak var navTitle: UINavigationItem!
    @IBOutlet weak var welcomeTitle: UITextView!
    @IBOutlet weak var infoText: UITextView!
    @IBOutlet weak var continueButton: RoundedButtonNoBorder!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("intro: " + lang!)
        setContent(lang!)
    }
    
    func setContent(_ lang:String) {
        if lang == "한국어" {
            navTitle.title = "번역 특강"
            welcomeTitle.text = "안녕하세요!"
            infoText.text = """
            다른 사람을 위해 동시통역한다는 게 쉬운 일이 아닌데도 불구하고 지원해주셔서 감사합니다!
            가끔 의료계에서는 “임시 통역사”로 불릴 수도 있습니다.

            통역 특강에 오신 것을 환영합니다!
            전문적인 통역사들이 주는 조언들을 모아봤는데요, 통역하시기 전에 꼭 참고하세요.
            """
            continueButton.setTitle("시작하기", for: .normal)
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? CrashCourseViewController {
            destination.lang = lang
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

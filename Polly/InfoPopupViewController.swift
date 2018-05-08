//
//  InfoPopupViewController.swift
//  Polly
//
//  Created by Helen Kim on 4/27/18.
//  Copyright © 2018 translators. All rights reserved.
//

import UIKit

class InfoPopupViewController: UIViewController {

    var lang: String?
    
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var infoText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("popup: " + lang!)
        setContent(lang!)
    }
    
    func setContent(_ lang: String) {
        if lang == "한국어" {
            closeButton.setTitle("닫기", for: .normal)
            infoText.text = """
            1964년에 발행된 미국 시민권법 중 Title VI라는 법은 국가에서 지원을 받는 병원, 의사 및 기타 건강 관리 제공자들이 영어를 모르는 환자들을 차별하는 것을 방지하는 차원에 설립되었습니다. 최근 미국 보건복지부에서 출판한 Title VI에 속한 국가 지원 유형 목록 중엔 노인 의료보장제 (Medicare) 부분 A와 부분 B에서 받을 수 있는 서비스도 포함 돼 있습니다.
            
            가족들, 특히 아이들은 통역사 역할을 맡기엔 부적할 수 있다는 점을 주의하세요. 부정확한 정보, 의견 충돌, 사생활 침해 문제 등, 여러 이유로 인해 통역의 질이 떨어질 수도 있습니다.
            """
            infoText.setLineSpacing(lineSpacing: 1.5)
        }
    }
    
    @IBAction func close_TouchUpInside(_ sender: UIButton) {
        dismiss(animated: true)
    }
}

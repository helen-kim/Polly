//
//  RequestConfirmController.swift
//  Polly
//
//  Created by Helen Kim on 5/6/18.
//  Copyright © 2018 translators. All rights reserved.
//

import UIKit

extension Date
{
    func toString( dateFormat format  : String ) -> String
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
}

class RequestConfirmController: UIViewController {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var infoText: UILabel!
    
    var date:String?
    var statement:String?
    var time:String?
    var lang:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        setContent(lang!)
    }
    
    func setDateStatementEng() {
        let date = Date().toString(dateFormat: "MMM dd yyyy")
        let time = Date().toString(dateFormat: "hh:ss a")
        let statement = "Your request was sent at \(time) on \(date)."
        dateLabel.text = statement
    }
    
    func setDateStatementKor() {
        let date = Date().toString(dateFormat: "MM/dd/yyyy")
        let time = Date().toString(dateFormat: "hh:ss a")
        let statement = "\(date), \(time)에 요청이 보내졌습니다."
        dateLabel.text = statement
    }
    
    func setContent(_ lang: String) {
        if lang == "한국어" {
            setDateStatementKor()
            titleLabel.text = "요청 보냄"
            infoText.text = "의료 서비스 공급자가 시간을 확인하고 연락을 드릴 겁니다. 24시간 안에 소식이 없으면 따로 연락하시거나 다른 요청을 보내세요."
        } else {
            setDateStatementEng()
        }
    }
    
//    @IBAction func unwindAction(_ sender: UIStoryboardSegue) {
//        print("unwind")
//    }
    
    @IBAction func closePressed(_ sender: Any) {
        self.navigationController?.isNavigationBarHidden = false
        dismiss(animated: true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

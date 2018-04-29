//
//  CrashCourseViewController.swift
//  Polly
//
//  Created by Sophie Zhao on 4/29/18.
//  Copyright © 2018 translators. All rights reserved.
//

import UIKit

class CrashCourseViewController: UIViewController {

    let crashCourseImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "capstone v1-1"))
        // this enables autolayout for our imageview
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(crashCourseImageView)
        
        setupLayout()

        // Do any additional setup after loading the view.
    }
    
    private func setupLayout() {
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

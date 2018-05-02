//
//  CrashCourseViewController.swift
//  Polly
//
//  Created by Sophie Zhao on 4/29/18.
//  Copyright © 2018 translators. All rights reserved.
//

import UIKit

class CrashCourseViewController: UIViewController {

    @IBOutlet weak var crashCourseImageView: UIImageView!
    
    @IBOutlet weak var titleTextView: UITextView!
    
    @IBOutlet weak var descriptionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Crash Course Image View Settings
        self.crashCourseImageView.image = UIImage(named: "capstone v1-01.png")
        self.crashCourseImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // Title Text View Settings
        self.titleTextView.font = UIFont.boldSystemFont(ofSize: 18)
        self.titleTextView.translatesAutoresizingMaskIntoConstraints = false
        self.titleTextView.textAlignment = .center
        self.titleTextView.isEditable = false
        self.titleTextView.isScrollEnabled = false
        
        // Description Text View Settings
        self.descriptionTextView.translatesAutoresizingMaskIntoConstraints = false
        self.descriptionTextView.textAlignment = .center
        self.descriptionTextView.isEditable = false
        self.descriptionTextView.isScrollEnabled = false
        
        // Add subviews
        view.addSubview(crashCourseImageView)
        view.addSubview(titleTextView)
        
        setupLayout()

        // Do any additional setup after loading the view.
    }
    
    func viewWillAppear() {
        self.navigationController?.isNavigationBarHidden = true
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
